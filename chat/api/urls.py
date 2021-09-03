from django.urls import path
from . import consumers

urlpatterns = [
    path('',consumers.MsgConsumer.as_asgi()),
]
