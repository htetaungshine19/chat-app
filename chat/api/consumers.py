from typing import FrozenSet
from channels.generic.websocket import AsyncWebsocketConsumer
from asgiref.sync import sync_to_async
from .models import Groups, Message
from rest_framework.authtoken.models import Token
from channels.db import database_sync_to_async
from django.contrib.auth.models import AnonymousUser


@database_sync_to_async
def delete_empty_rooms(instance):
    if(instance.users.all().count() <= 0):
        instance.delete()


class MsgConsumer(AsyncWebsocketConsumer):
    @database_sync_to_async
    def get_user(self, token):
        if(token.pk):
            self.user = token.user

    async def update_user_status(self):
        await sync_to_async(self.user.save)()

    async def connect(self):
        await self.accept()
        self.user = self.scope['user']
        # user auth for native
        if(self.user == AnonymousUser()):
            try:
                key = self.scope['url_route']['kwargs']['key']
                if(key):
                    try:
                        token = await sync_to_async(Token.objects.get)(key=key)
                        await self.get_user(token)
                    except:
                        await self.send("Wrong Token Key")
                        await self.close()
                        return
            except:
                pass

        if(self.user != AnonymousUser()):
            await self.update_user_status()
            self.chat_group = await sync_to_async(Groups.objects.get_or_create)(name=str("test"))
            self.chat_group = self.chat_group[0]
            await sync_to_async(self.chat_group.users.add)(self.user)
            await self.channel_layer.group_add(str(self.chat_group.pk), self.channel_name)
        else:
            await self.send("You need to Login to use Service")
            await self.close()

    async def receive(self, text_data=None, bytes_data=None):
        print(text_data)
        if(self.user != AnonymousUser()):
            await self.update_user_status()
        if(text_data):
            await self.channel_layer.group_send(str(self.chat_group.pk), {
                "type": "MsgSendConfig",
                "text": text_data
            })

    async def disconnect(self, code):
        if(self.user != AnonymousUser()):
            await self.update_user_status()
            await sync_to_async(self.chat_group.users.remove)(self.user)
            # await sync_to_async(self.chat_group.save)()
            await delete_empty_rooms(self.chat_group)
        return await super().disconnect(code)

    # config for messaging different events

    async def MsgSendConfig(self, event):
        await self.send(event['text'])
