from django.shortcuts import render
from rest_framework.views import APIView
from rest_framework_simplejwt import authentication
from rest_framework import permissions
from .models import *
from .serializers import *
from rest_framework.response import Response
from rest_framework import status
# Create your views here.

class SchemeView(APIView):
    permission_classes = [permissions.IsAuthenticated]
    authentication_classes = [authentication.JWTAuthentication]

    def get(self,req,*args,**kwargs):
        try:
            pr=SchemesDB.objects.all()
            dser=SchemeSerializer(pr,many=True)
            return Response(data=dser.data)
        except:
            return Response({"msg":"Invalid ID"},status=status.HTTP_400_BAD_REQUEST)
