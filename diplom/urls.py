from django.urls import path
from . import views

urlpatterns = [
    path('', views.showInfoFunc, name='employees'),
    path('',views.get_name, name='submit'),
    # path('',views.get_task, name='submit'),
    # path('<name>/',views.makePageFunc, name='name'),
    # path('<slug:slug>', views.EmployeesConDetail.as_view(), name="EmployeesCon_detail"),
    path('<slug:slug>', views.post_details, name='post_details'),
]
