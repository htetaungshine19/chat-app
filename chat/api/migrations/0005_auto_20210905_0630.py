# Generated by Django 3.2.6 on 2021-09-05 00:00

from django.conf import settings
from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('api', '0004_auto_20210905_0630'),
    ]

    operations = [
        migrations.AlterField(
            model_name='groups',
            name='users',
            field=models.ManyToManyField(blank=True, related_name='msg_group', to=settings.AUTH_USER_MODEL),
        ),
        migrations.AlterField(
            model_name='message',
            name='group',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, related_name='messages', to='api.groups'),
        ),
    ]