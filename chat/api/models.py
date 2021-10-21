# from datetime import datetime, timedelta
from django.db import models
from django.contrib.auth.models import AbstractUser
from django.utils.translation import gettext_lazy as _
# from datetime import datetime
from django.utils import timezone


def getname(self, filename, *args, **kwargs):
    return 'profile_images/{}'.format(filename)


def uploadMsg(self, filename, *args, **kwargs):
    return 'messages/{}'.format(filename)


class CustomUser(AbstractUser):
    email = models.EmailField(_('email address'), unique=True)
    profileImage = models.ImageField(
        upload_to=getname, default="profile_images/default.png", blank=True,
        null=True)
    status = models.DateTimeField(auto_now=True)
    friendList = models.ManyToManyField("self", symmetrical=True)
    EMAIL_FIELD = 'email'
    USERNAME_FIELD = 'email'
    REQUIRED_FIELDS = ['username']

    @property
    def isActive(self):
        return timezone.now()-self.status

    def __str__(self) -> str:
        return self.username


class FriendRequest(models.Model):
    requestedUser = models.ForeignKey(
        CustomUser, on_delete=models.CASCADE, related_name="this")
    toUser = models.ForeignKey(
        CustomUser, on_delete=models.CASCADE, related_name="that")

    def __str__(self) -> str:
        return self.requestedUser.username + self.toUser.username


class Groups(models.Model):
    name = models.CharField(max_length=100)
    users = models.ManyToManyField(
        CustomUser, related_name="msg_group", blank=True)
    is_group = models.BooleanField(default=False)

    def __str__(self) -> str:
        return str(self.pk)


class Message(models.Model):
    text = models.TextField(blank=True)
    file = models.FileField(upload_to=uploadMsg, blank=True)
    group = models.ForeignKey(
        Groups, on_delete=models.CASCADE, related_name="messages")

    def __str__(self) -> str:
        return self.text
