from django.urls import path
from diplom import views
from . import views as s_views

urlpatterns = [
    path('', views.get_name, name='submit'),

]