from channels.generic.websocket import AsyncWebsocketConsumer


class MsgConsumer(AsyncWebsocketConsumer):
    async def connect(self):
        await super().connect()
        await self.send("hello")

    async def receive(self, text_data, bytes_data):

        
        return await super().receive(text_data=text_data, bytes_data=bytes_data)