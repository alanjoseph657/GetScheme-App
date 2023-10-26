from django.contrib.auth.models import User
from rest_framework import serializers

from AdminUI.models import ProfileDB


class UserSerializer(serializers.ModelSerializer):
    class Meta:
        model = User
        fields = (
            'username',
            'email',
            'password'
        )


class ProfileSerializer(serializers.ModelSerializer):
    class Meta:
        model = ProfileDB
        fields = (
            'user',
            'Name',
            'Address',
            'City',
            'State',
            'Pincode',
            'Income',
            'Poverty_line',
            'Disability',
            'Reservation',
            'Aadhar_Number',
            'Contact',
            'Email',
            'Profile_Image'
        )
