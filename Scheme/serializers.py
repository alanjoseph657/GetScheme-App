from django.contrib.auth.models import User
from rest_framework import serializers

from Scheme.models import SchemesDB


class SchemeSerializer(serializers.ModelSerializer):
    class Meta:
        model = SchemesDB
        fields = (
            'Scheme_Name',
            'new',
            'Description',
            'Link'
        )
