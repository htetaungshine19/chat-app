from django.shortcuts import render
from rest_framework.response import Response
from rest_framework.views import APIView
from django.contrib.auth.forms import UserCreationForm
# from rest_framework.authentication import
from .models import CustomUser
from .serializers import FriListSerializer


class RegisterForm(UserCreationForm):

    class Meta:
        model = CustomUser
        fields = ("email", "username",)


class register(APIView):
    def post(self, request, *args, **kwargs):
        form = RegisterForm(request.POST)
        print(form.is_valid())
        if form.is_valid():
            form.save()
        else:
            return Response(data={"b": "c"})
        return Response(data={"a": "a"})


class createGroup(APIView):
    def get(self, request, *args, **kwargs):
        pass


class GetFriList(APIView):
    def get(self, request, *args, **kwargs):
        a = FriListSerializer(CustomUser.objects.all(), many=True)
        return Response(data=a.data)
