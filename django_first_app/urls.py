"""django_first_app URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/4.1/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
from django.contrib import admin
from django.urls import path, re_path
from django.urls import include
from django.views.generic.base import TemplateView

urlpatterns = [
    path('admin/', admin.site.urls),
    path('admin/clearcache/', include('clearcache.urls')),
    path('accounts/', include("django.contrib.auth.urls")),
    path('', TemplateView.as_view(template_name='index.html'), name='home'),
    path('employees/', include('diplom.urls')),
    path('submit/', include('submit.urls')),
    path('tasks/', include('tasks.urls')),
    re_path(r'^webpush/', include('webpush.urls')),
    path('cabinets/', include('cabinets.urls')),
    path('construction_sites/', include('construction_sites.urls')),
]
