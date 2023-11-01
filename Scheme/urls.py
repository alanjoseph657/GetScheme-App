from django.urls import path
from .views import *


urlpatterns = [
     path('scheme/',SchemeView.as_view(),name='scheme')
]