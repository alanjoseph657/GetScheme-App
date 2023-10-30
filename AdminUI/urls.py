from django.urls import path
from AdminUI import views
from .views import  *
from django.conf import settings
from django.conf.urls.static import static

from rest_framework.routers import  DefaultRouter
router=DefaultRouter()
router.register('profile',ProfileView)

urlpatterns = [
    path('register/',views.register_request.as_view(),name="register"),
    path('profileview/',ProfileView.as_view({'get':'list'}),name='pro'),
    path('api/login/', LoginAPIView.as_view(), name='api_login'),
    path('home/',home,name="h"),
] + router.urls + static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)