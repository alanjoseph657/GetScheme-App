from django.urls import path
from AdminUI import views
from .views import  *
from django.conf import settings
from django.conf.urls.static import static

from rest_framework.routers import  DefaultRouter
router=DefaultRouter()
router.register('profile',ProfileView,basename='profiles')

urlpatterns = [
    path('register/',views.register_request.as_view(),name="register"),
    # path('profile/', ProfileView.as_view({'get':'list'}), name='profile-view'),


] + router.urls + static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)