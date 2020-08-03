# from .views import UserInfoViewSet, UserRecordView
from django.urls import path
from .views import UserRecordView, UserProfileRecordView

app_name = 'api'
urlpatterns = [
    path('user/', UserRecordView.as_view(), name='users'),
    path('userProfile/', UserProfileRecordView.as_view(), name='usersProfiles')
]


