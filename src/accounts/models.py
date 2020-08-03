from django.db import models
from django.contrib.auth.models import User
from datetime import datetime
from django.db.models.signals import pre_delete, post_save
from django.dispatch import receiver


class UserProfile(models.Model):

    class Meta:
        verbose_name = "UserProfile"
        verbose_name_plural = "UsersProfile"
        ordering = ['-date_created']


    GENDERS = (
        ('Male', 'Male'),
        ('Female', 'Female'),
        )


    user = models.OneToOneField(User, on_delete=models.CASCADE, primary_key=True)
    age = models.IntegerField(null=True)
    gender = models.CharField(choices=GENDERS, max_length=50, null=True)
    height = models.IntegerField(null=True)
    weight = models.FloatField(null=True)
    pal = models.FloatField(null=True)
    date_created = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)

    def __str__(self):
        return self.user.username

    # @receiver(post_save, sender=User)
    # def create_profile_for_user(sender, instance=None, created=False, **kwargs):
    #   if created:
    #       UserProfile.objects.create(user=instance)

    # @receiver(post_save, sender=User)
    # def save_user_profile(sender, instance=None, **kwargs):
    #     instance = instance.profile.save()

    # @receiver(pre_delete, sender = User)
    # def delete_profile_for_user(sender, instance=None, **kwargs):
    #     if instance:
    #         user_profile = UserProfile.objects.get(user = instance)
    #         user_profile.delete()


    """This fields may be useful for further utilities"""


    # GOALS = (
    #         ('Build muscle', 'Build muscle'),
    #         ('Get lean', 'Get lean'),
    #         ('Mantain weight', 'Mantain weight'),
    #     )



    # LIFESTYLES = (
    #     ('Sitting life', 'Sitting life'),
    #     ('Standing all day', 'Standing all day'),
    #     ('Mover arround constantly', 'Mover arround constantly'),
    #     )


    # fatp = models.FloatField(default=0)
    # goal = models.CharField(choices=GOALS, max_length=50, default='None')
    # lifestyle = models.CharField(choices=LIFESTYLES, max_length=50, default='None')

    # low_cardio = models.IntegerField(default=0)
    # high_cardio = models.IntegerField(default=0)
    # resistance = models.IntegerField(default=0)
    # stretching = models.IntegerField(default=0)

    # sleeph = models.FloatField(default=0)
    # trackcal = models.BooleanField(default=False)


    # wtraining = [
    #     low_cardio, high_cardio, resistance, stretching
    # ]

