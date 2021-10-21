from django.urls import path
from . import consumers, views
from rest_framework.authtoken.views import obtain_auth_token
urlpatterns = [
    path('gettoken/', obtain_auth_token),
    path('register/', views.register.as_view()),
    path('getfrilist/', views.GetFriList.as_view()),
]

websocketpatterns = [
    path('', consumers.MsgConsumer.as_asgi()),  # web
    # native
    path('<str:key>/', consumers.MsgConsumer.as_asgi()),
]
