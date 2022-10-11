from django import forms
from diplom.models import EmployeesCon


class EmployeesForm(forms.Form):
    t_number = forms.IntegerField(label = 'Enter table number')
    f_name = forms.CharField(label = 'First name', max_length = 100)
    l_name = forms.CharField(label = 'Last name', max_length = 100)
    title = forms.CharField(label ='Title', max_length=45)
    patronymic = forms.CharField(label ='Patronymic', max_length=45)
    cabin_number = forms.Select()
    construction_operation_name = forms.Select()
    work_since = forms.DateField(label = 'Work since')
    lead_employee_value = forms.Select()
    rating = forms.Select()
    employee_position_name = forms.Select()
    department_name = forms.Select()
