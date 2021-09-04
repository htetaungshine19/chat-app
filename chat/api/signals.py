from django.db.models.signals import pre_save,pre_delete
from django.dispatch import receiver
import os
from django.conf import settings
from .models import CustomUser

@receiver([pre_save,pre_delete],sender = CustomUser)
def clean_prev_image_data(sender,instance,**kwargs):
    if(instance.id):
        a = CustomUser.objects.get(id=instance.id)
        b = str(settings.BASE_DIR).replace("\\","/")
        # instance.status = datetime.now()
        if(a.profileImage):
            if(a.profileImage != instance.profileImage):
                os.remove(b+a.url)