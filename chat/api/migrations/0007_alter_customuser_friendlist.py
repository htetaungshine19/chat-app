# Generated by Django 3.2.6 on 2021-09-18 06:25

from django.conf import settings
from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('api', '0006_auto_20210918_1255'),
    ]

    operations = [
        migrations.AlterField(
            model_name='customuser',
            name='friendList',
            field=models.ManyToManyField(related_name='_api_customuser_friendList_+', to=settings.AUTH_USER_MODEL),
        ),
    ]
