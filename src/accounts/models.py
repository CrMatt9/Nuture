# from django.db import models
# from django.contrib.auth.models import AbstractUser
# from datetime import datetime

# # Create your models here.
# class CustomUser(AbstractUser):
#     pass

#     def __str__(self):
#         return self.username

# class UserInfo(models.Model):

#     class Meta:
#         verbose_name = "userInfo"
#         verbose_name_plural = "userInfos"
#         ordering = ['-date_created']


#     GENDERS = (
#         ('Male', 'Male'),
#         ('Female', 'Female'),
#         )


#     GOALS = (
#             ('Build muscle', 'Build muscle'),
#             ('Get lean', 'Get lean'),
#             ('Mantain weight', 'Mantain weight'),
#         )



#     LIFESTYLES = (
#         ('Sitting life', 'Sitting life'),
#         ('Standing all day', 'Standing all day'),
#         ('Mover arround constantly', 'Mover arround constantly'),
#         )

#     first_name = models.CharField(max_length=50, default='None')
#     last_name = models.CharField( max_length=50, default='None')
#     email = models.CharField( max_length=50, default='None')
#     uname = models.CharField( max_length=50, default='None')


#     age = models.IntegerField(default=0)
#     gender = models.CharField(choices=GENDERS, max_length=50, default='None')
#     height = models.IntegerField(default=0)
#     weight = models.FloatField(default=0)
#     fatp = models.FloatField(default=0)
#     goal = models.CharField(choices=GOALS, max_length=50, default='None')
#     lifestyle = models.CharField(choices=LIFESTYLES, max_length=50, default='None')

#     low_cardio = models.IntegerField(default=0)
#     high_cardio = models.IntegerField(default=0)
#     resistance = models.IntegerField(default=0)
#     stretching = models.IntegerField(default=0)

#     sleeph = models.FloatField(default=0)
#     trackcal = models.BooleanField(default=False)
#     date_created = models.DateTimeField(auto_now_add=True)

#     wtraining = [
#         low_cardio, high_cardio, resistance, stretching
#     ]

#     pinfo = [ age, gender, height, weight, fatp, goal,
#      lifestyle, wtraining, sleeph, trackcal, date_created ]

#     def __str__(self):
#         return self.uname

#     def save(self, *args, **kwargs):
#         try:
#             print("success")
#         except:
#             print("classification failed")

#         super().save(*args, **kwargs)
