from django.db import models
from django.contrib.auth.models import AbstractUser
from django.utils.translation import gettext_lazy as _
from django.db.models.signals import pre_save,pre_delete
from django.dispatch import receiver
import os
from django.conf import settings

def getname(self,filename,*args,**kwargs):
    return 'profile_images/{}'.format(filename)



class CustomUser(AbstractUser):
    email = models.EmailField(_('email address'),unique=True)
    profileImage = models.ImageField(upload_to = getname,default = "profile_images/default.png",blank=True)
    status = models.DateTimeField(auto_now = True)
    friendList = models.ManyToManyField("self",symmetrical=True,blank=True)
    EMAIL_FIELD = 'email'
    USERNAME_FIELD = 'email'
    REQUIRED_FIELDS = ['username']

    @property
    def isActive(self):
        return self.status

    def __str__(self) -> str:
        return self.username

    
class FriendRequest(models.Model):
    requestedUser = models.ForeignKey(CustomUser,on_delete=models.CASCADE,related_name="this")
    toUser = models.ForeignKey(CustomUser,on_delete=models.CASCADE,related_name="that")

    def __str__(self) -> str:
        return self.requestedUser.username + self.toUser.username

@receiver([pre_save,pre_delete],sender = CustomUser)
def clean_prev_image_data(sender,instance,**kwargs):
    if(instance.id):
        a = CustomUser.objects.get(id=instance.id).profileImage
        b = str(settings.BASE_DIR).replace("\\","/")
        if(a):
            if(a != instance.profileImage):
                os.remove(b+a.url)
                