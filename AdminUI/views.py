from rest_framework import permissions
from rest_framework import status
from rest_framework.response import Response
from rest_framework.views import APIView
from rest_framework.viewsets import ModelViewSet
from rest_framework_simplejwt import authentication

from .models import *
from .serializers import *


# def register_request(request):
#     if request.method == "POST":
#         form = NewUserForm(request.POST)
#         if form.is_valid():
#             user = form.save()
#             login(request, user)
#             messages.success(request, "Registration successful.")
#             return redirect("main:homepage")
#         messages.error(request, "Unsuccessful registration. Invalid information.")
#     form = NewUserForm()
#     return render(request=request, template_name="register.html", context={"register_form": form})

class register_request(APIView):
    def post(self, req, *args, **kwargs):
        ser = UserSerializer(data=req.POST)
        if ser.is_valid():
            ser.save()
            return Response({"Msg": "Registration Completed"})
        else:
            return Response({"Msg": ser.errors}, status=status.HTTP_400_BAD_REQUEST)


class ProfileView(ModelViewSet):
    model = ProfileDB
    serializer_class = ProfileSerializer
    queryset = ProfileDB.objects.all()
    permission_classes = [permissions.IsAuthenticated]
    authentication_classes = [authentication.JWTAuthentication]
