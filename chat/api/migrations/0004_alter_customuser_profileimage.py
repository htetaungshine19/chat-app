# Generated by Django 3.2.6 on 2021-09-03 01:38

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('api', '0003_alter_customuser_profileimage'),
    ]

    operations = [
        migrations.AlterField(
            model_name='customuser',
            name='profileImage',
            field=models.ImageField(blank=True, default='profile_images/default.png', upload_to='profile_images'),
        ),
    ]