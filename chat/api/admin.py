from django.contrib import admin
from .models import CustomUser,FriendRequest,Groups,Message
from django.contrib.auth.admin import UserAdmin

# Register your models here.
class NewAdmin(UserAdmin):
    pass
admin.site.register(CustomUser)
admin.site.register(FriendRequest)
admin.site.register(Groups)
admin.site.register(Message)