from django.conf import settings
from django.conf.urls.static import static
from django.urls import path
from rest_framework.routers import DefaultRouter

from AdminUI import views
from .views import *

router = DefaultRouter()
router.register('profile', ProfileView)
router.register('profile_update',profile_edit)

urlpatterns = [
                  # path('register/',views.register_request.as_view(),name="register"),
                  path('profileview/', ProfileView.as_view({'get': 'list'}), name='pro'),
                  path('profileedit/', profile_edit.as_view({'get': 'list'}), name='proedit'),
                  path('api/login/', LoginAPIView.as_view(), name='api_login'),
                  path('api/logout/', LogoutAPIView.as_view(), name='api_logout'),
                  path('home/', home, name="h"),
                  path('register_page/', views.register, name="register_page"),
                  path('api/search/', views.SearchResult.as_view(), name='search-api'),
              ] + router.urls + static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)
