# from django.db import models
# from django.contrib.auth.models import User
# from datetime import datetime


# class Customer(models.Model):

#     class Meta:
#         verbose_name = "Customer"
#         verbose_name_plural = "Customers"
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

#     user = models.OnetoOneField(User)
#     age = models.IntegerField(default=0)
#     gender = models.CharField(choices=GENDERS, max_length=50, default='None')
#     height = models.IntegerField(default=0)
#     weight = models.FloatField(default=0)
#     pal = models.IntegerField(default=0)





    """This fields may be useful for further utilities"""

    # fatp = models.FloatField(default=0)
    # goal = models.CharField(choices=GOALS, max_length=50, default='None')
    # lifestyle = models.CharField(choices=LIFESTYLES, max_length=50, default='None')

    # low_cardio = models.IntegerField(default=0)
    # high_cardio = models.IntegerField(default=0)
    # resistance = models.IntegerField(default=0)
    # stretching = models.IntegerField(default=0)

    # sleeph = models.FloatField(default=0)
    # trackcal = models.BooleanField(default=False)
    # date_created = models.DateTimeField(auto_now_add=True)

    # wtraining = [
    #     low_cardio, high_cardio, resistance, stretching
    # ]


    def __str__(self):
        return self.user.username
