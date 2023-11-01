from rest_framework import permissions
from django.shortcuts import render,redirect
from rest_framework import status
from rest_framework.response import Response
from rest_framework.views import APIView
from rest_framework.viewsets import ModelViewSet
from rest_framework_simplejwt import authentication
from rest_framework.renderers import TemplateHTMLRenderer,JSONRenderer
from django.contrib.auth import authenticate
from rest_framework.authtoken.models import Token
from rest_framework_simplejwt.views import TokenObtainPairView
from django.contrib.auth import authenticate, login
from Scheme.models import *
from Scheme.serializers import *
from django.contrib.auth import update_session_auth_hash

from .models import *
from .serializers import *


class register_request(APIView):
    def post(self, req, *args, **kwargs):
        ser = UserSerializer(data=req.POST)
        if ser.is_valid():
            ser.save()
            return Response({"Msg":"Registration Completed"},status=status.HTTP_201_CREATED)
        else:
            return Response({"Msg": ser.errors}, status=status.HTTP_400_BAD_REQUEST)



class ProfileView(APIView):
    permission_classes = [permissions.IsAuthenticated]
    authentication_classes = [authentication.JWTAuthentication]

    def get(self,req,*args,**kwargs):
        try:
            pr=ProfileDB.objects.get(user=req.user.id)
            dser=ProfileSerializer(pr)
            return Response(data=dser.data)
        except:
            return Response({"msg":"Invalid ID"},status=status.HTTP_400_BAD_REQUEST)
    def put(self,req,*args,**kwargs):
        try:
            pr=ProfileDB.objects.get(id=req.user.id)
            ser=ProfileSerializer(data=req.data,instance=pr)
            if ser.is_valid():
                ser.save()
                return Response({"msg":"Updated"})
            else:
                return Response({"msg":ser.errors},status=status.HTTP_422_UNPROCESSABLE_ENTITY)
        except:
            return Response({"msg":"Invalid ID"},status=status.HTTP_400_BAD_REQUEST)


class ChangePasswordView(APIView):
    permission_classes = [permissions.IsAuthenticated]

    def post(self, request):
        user = request.user
        serializer = PasswordChangeSerializer(data=request.data)

        if serializer.is_valid():
            old_password = serializer.data.get("old_password")
            new_password = serializer.data.get("new_password")

            if not user.check_password(old_password):
                return Response({"old_password": ["Wrong password."]}, status=status.HTTP_400_BAD_REQUEST)

            user.set_password(new_password)
            user.save()
            update_session_auth_hash(request, user)
            return Response({"message": "Password updated successfully."}, status=status.HTTP_200_OK)

        return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)