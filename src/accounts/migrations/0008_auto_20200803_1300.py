# Generated by Django 3.0.8 on 2020-08-03 11:00

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('accounts', '0007_auto_20200803_1256'),
    ]

    operations = [
        migrations.AlterModelOptions(
            name='userprofile',
            options={'ordering': ['-date_created'], 'verbose_name': 'UserProfile', 'verbose_name_plural': 'UsersProfile'},
        ),
    ]