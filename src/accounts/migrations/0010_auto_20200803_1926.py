# Generated by Django 3.0.8 on 2020-08-03 17:26

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('accounts', '0009_auto_20200803_1344'),
    ]

    operations = [
        migrations.AlterField(
            model_name='userprofile',
            name='age',
            field=models.IntegerField(null=True),
        ),
        migrations.AlterField(
            model_name='userprofile',
            name='gender',
            field=models.CharField(choices=[('Male', 'Male'), ('Female', 'Female')], max_length=50, null=True),
        ),
        migrations.AlterField(
            model_name='userprofile',
            name='height',
            field=models.IntegerField(null=True),
        ),
        migrations.AlterField(
            model_name='userprofile',
            name='pal',
            field=models.FloatField(null=True),
        ),
        migrations.AlterField(
            model_name='userprofile',
            name='weight',
            field=models.FloatField(null=True),
        ),
    ]
