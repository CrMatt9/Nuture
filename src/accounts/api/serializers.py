from django.contrib.auth.models import User
from rest_framework import serializers
from rest_framework.validators import UniqueTogetherValidator
from accounts.models import UserProfile


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
        )

        validators = [
            UniqueTogetherValidator(
                queryset=User.objects.all(),
                fields=['username', 'email']
            )
        ]


class UserProfileSerializer(serializers.ModelSerializer):

    user = UserSerializer(required=True)

    id = serializers.IntegerField(source = 'pk', read_only = True)


    class Meta:
        model = UserProfile
        fields = (
            'id',
            'user',
            'age',
            'gender',
            'height',
            'weight',
            'pal',
            'date_created',
            'updated_at',
            )

        read_only_fields = ('date_created', 'updated_at')

    def create(self, validated_data):

        user_data = validated_data.pop('user')
        user = UserSerializer.create(UserSerializer(), validated_data=user_data)

        profile = UserProfile.objects.create(user = user, **validated_data)
        return profile

    def update(self, instance, validated_data):

        user_data = validated_data.pop('user', None)
        for attr, value in user_data.items():
            setattr(instance.user, attr, value)

        for attr, value in validated_data.items():
            setattr(instance.user, attr, value)

        instance.save()
        return instance



