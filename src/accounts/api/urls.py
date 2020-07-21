# from .views import UserInfoViewSet, UserRecordView
from rest_framework import routers
from django.urls import path, include
from .views import UserRecordView


# app_name = 'api-Users'

# router = routers.DefaultRouter()
# router.register(r'userInfos', UserInfoViewSet)

# urlpatterns = [
#     path('', include(router.urls)),
#     path('user/', UserRecordView.as_view(), name='users'),
# ]

app_name = 'api'
urlpatterns = [
    path('user/', UserRecordView.as_view(), name='users'),
]