from django.contrib import admin
from django.urls import path, include

urlpatterns = [
    # Admin back end
    path("admin/", admin.site.urls),
    # User auth and management
    path("account/", include("allauth.urls")),
    # Local apps
    path("", include("pages.urls")),
    path("books/", include("books.urls")),
]
