from os import name
from channels.generic.websocket import AsyncWebsocketConsumer
from asgiref.sync import sync_to_async
from .models import CustomUser,Groups,Message

class MsgConsumer(AsyncWebsocketConsumer):
    
    async def connect(self):
        await self.accept()
        # await self.send("hello")
        
        user =self.scope['user']
        
        if(user.id):
            self.chat_group = await sync_to_async(Groups.objects.get_or_create)(name = str("test"))
            self.chat_group = self.chat_group[0]
            await sync_to_async(self.chat_group.users.add)(user)
            print(self.chat_group)
            print(hash(self.chat_group.pk))
            await self.channel_layer.group_add(str(self.chat_group.pk),self.channel_name)
          
    async def receive(self, text_data, bytes_data=None):
        if(text_data):
            await self.channel_layer.group_send(str(self.chat_group.pk),{
                "type":"MsgSendConfig",
                "text":text_data
            })
        
    async def MsgSendConfig(self,event):
        await self.send(event['text'])
