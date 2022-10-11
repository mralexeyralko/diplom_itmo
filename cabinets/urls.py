from django.urls import path
from . import views

urlpatterns = [
    path('', views.showInfoFunc, name='tasks'),

    # path('<t_number>/', views.makePageFunc, name="content"),
]


    # path('items/<str:item_name>/',views.render_items, name='item'),