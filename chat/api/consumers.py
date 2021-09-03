from channels.generic.websocket import AsyncWebsocketConsumer


class MsgConsumer(AsyncWebsocketConsumer):
    async def connect(self):
        await super().connect()
        await self.send("hello")