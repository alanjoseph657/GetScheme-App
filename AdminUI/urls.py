from django.urls import path
from AdminUI import views
from .views import  *
from django.conf import settings
from django.conf.urls.static import static


urlpatterns = [
    path('register/',views.register_request.as_view(),name="register"), # registration
    path('profile/',ProfileView.as_view(),name='pro'),#profikle get put
    path('changepassword/',ChangePasswordView.as_view(),name="changeps"),#changepassword url

] + static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)