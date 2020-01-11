from django.contrib import admin
from django.urls import path, include

urlpatterns = [
    # Admin back end
    path("admin/", admin.site.urls),
    # User auth and management
    path("account/", include("django.contrib.auth.urls")),
    # Local apps
    path("accounts/", include("users.urls")),
    path("", include("pages.urls")),
]
