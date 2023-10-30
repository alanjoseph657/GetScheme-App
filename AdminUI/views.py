from rest_framework import permissions,authentication
from django.shortcuts import render,redirect
from rest_framework import status
from rest_framework.response import Response
from rest_framework.views import APIView
from rest_framework.viewsets import ModelViewSet
# from rest_framework_simplejwt import authentication
from rest_framework.renderers import TemplateHTMLRenderer,JSONRenderer
from django.contrib.auth import authenticate
from rest_framework.authtoken.models import Token
from rest_framework_simplejwt.views import TokenObtainPairView
from django.contrib.auth import authenticate, login
from Scheme.models import *
from Scheme.serializers import *

from .models import *
from .serializers import *


class register_request(APIView):
    def post(self, req, *args, **kwargs):
        ser = UserSerializer(data=req.POST)
        if ser.is_valid():
            ser.save()
            token, created = Token.objects.get_or_create(user=req.user)

            return Response({'token': token.key}, status=status.HTTP_201_CREATED)
        else:
            return Response({"Msg": ser.errors}, status=status.HTTP_400_BAD_REQUEST)

def login_page(request):
    return render(request, 'login.html')

# class CustomTokenObtainPairView(TokenObtainPairView):
#     def post(self, request, *args, **kwargs):

#         username = request.data.get('username')
#         password = request.data.get('password')

#         if self.LoginAPIView(username, password):
#             response = super().post(request, *args, **kwargs)
#             return response
#         else:
#             return Response(
#                 {'detail': 'Authentication failed'},
#                 status=status.HTTP_401_UNAUTHORIZED
#             )

class LoginAPIView(APIView):
    def post(self, request, *args, **kwargs):
        serializer = LoginSerializer(data=request.data)

        if serializer.is_valid():
            username = serializer.validated_data['username']
            password = serializer.validated_data['password']

            # Authenticate the user
            user = authenticate(request, username=username, password=password)

            if user is not None:
                login(request, user)
                # token, created = Token.objects.get_or_create(user=user)
                # print(token)
                return redirect('h')
            else:
                return Response({'error': 'Invalid credentials'}, status=status.HTTP_401_UNAUTHORIZED)
        else:
            return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)

from rest_framework.decorators import api_view

@api_view(['GET'])
def home(request):
    data = SchemesDB.objects.all()
    serializer = SchemeSerializer(data, many=True)
    return render(request,'home.html',{'scheme':serializer.data})

from django.shortcuts import get_object_or_404

class ProfileView(ModelViewSet):
    model = ProfileDB
    serializer_class = ProfileSerializer
    queryset = ProfileDB.objects.all()
    # permission_classes = [permissions.IsAuthenticated]
    # authentication_classes = [authentication.TokenAuthentication]
    renderer_classes = [TemplateHTMLRenderer]
    template_name = 'profile_page.html'

    def list(self, request, *args, **kwargs):
        profile = get_object_or_404(ProfileDB, user=request.user.id)
        serialized_profile = self.get_serializer(profile)
        return Response({'user_profile': serialized_profile.data})


