from django.contrib.auth.models import User
from rest_framework import serializers
from rest_framework.validators import UniqueTogetherValidator


class UserSerializer(serializers.ModelSerializer):

    def create(self, validated_data):
        user = User.objects.create_user(**validated_data)
        return user

    class Meta:
        model = User
        fields = (
            'username',
            'first_name',
            'last_name',
            'email',
            'password',
        )
        validators = [
            UniqueTogetherValidator(
                queryset=User.objects.all(),
                fields=['username', 'email']
            )
        ]

# class UserInfoSerializer(serializers.Serializer):


#     class Meta:
#         model = UserInfo
#         fields = '__all__'


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

#     id = serializers.IntegerField(read_only=True)
#     first_name = serializers.CharField(max_length=50, default='None')
#     last_name = serializers.CharField( max_length=50, default='None')
#     email = serializers.CharField( max_length=50, default='None')
#     uname = serializers.CharField( max_length=50, default='None')


#     age = serializers.IntegerField(default=0)
#     gender = serializers.ChoiceField(choices=GENDERS)
#     height = serializers.IntegerField(default=0)
#     weight = serializers.FloatField(default=0)
#     fatp = serializers.FloatField(default=0)
#     goal = serializers.ChoiceField(choices=GOALS)
#     lifestyle = serializers.ChoiceField(choices=LIFESTYLES)

#     low_cardio = serializers.IntegerField(default=0)
#     high_cardio = serializers.IntegerField(default=0)
#     resistance = serializers.IntegerField(default=0)
#     stretching = serializers.IntegerField(default=0)

#     sleeph = serializers.FloatField(default=0)
#     trackcal = serializers.BooleanField(default=False)
#     date_created = serializers.DateTimeField()

#     def create(self, validated_data):
#         """
#         Create and return an eisting 'UserInfo' instance, given the validated data
#         """
#         return UserInfo.objects.create(**validated_data)

#     def update(self, instance, validated_data):
#         """
#         Update and return an existing 'UserInfo' instance, given the validated data
#         """
#         instance.first_name = validated_data.get('first_name', instance.first_name)
#         instance.last_name = validated_data.get('last_name', instance.last_name)
#         instance.email = validated_data.get('email', instance.email)
#         instance.uname = validated_data.get('uname', instance.uname)


#         instance.age = validated_data.get('age', instance.age)
#         instance.gender = validated_data.get('gender', instance.gender)
#         instance.height = validated_data.get('height', instance.height)
#         instance.weight = validated_data.get('weight', instance.weight)
#         instance.fatp = validated_data.get('fatp', instance.fatp)
#         instance.goal = validated_data.get('goal', intance.goal)
#         instance.lifestyle = validated_data.get('lifestyle', instance.lifestyle)

#         instance.low_cardio = validated_data.get('low_cardio', instance.low_cardio)
#         instance.high_cardio = validated_data.get('high_cardio', instance.hight_cardio)
#         instance.resistance = validated_data.get('resistance', instance.resistance)
#         instance.stretching = validated_data.get('stretching', instance.stretching)

#         instance.sleeph = validated_data.get('sleeph', instance.sleeph)
#         instance.trackcal = validated_data.get('trackcal', instance.trackcal)
#         instance.date_created = validated_data.get('date_created', intance.date_created)


#         print(fields)

