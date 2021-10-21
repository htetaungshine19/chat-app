from rest_framework import serializers
from .models import CustomUser


class friendListSeralizer(serializers.ModelSerializer):
    class Meta:
        model = CustomUser
        fields = ('username', "status", "profileImage", "email")


class FriListSerializer(serializers.ModelSerializer):
    friendList = friendListSeralizer(many=True)

    class Meta:
        model = CustomUser
        fields = ('friendList', 'username', "status", "profileImage", "email")
