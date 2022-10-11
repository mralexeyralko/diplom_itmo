from django.shortcuts import render, get_object_or_404, render, Http404
from diplom.models import Tasks, ConstructionOperations, EmployeesCon, Cabinets, Titles, LeadEmployee, EmployeePositions, Departments, Employees, ConstructionSite
from django.http import HttpResponseRedirect




def showInfoFunc(request):

    # cabinets = list(Cabinets.objects.all())
    # employees = list(EmployeesCon.objects.values('l_name').filter(cabin_number = Cabinets('cabin_number')))
    
    # context = {'zip' : zip(cabinets, employees) }
    cabinets = Cabinets.objects.values('cabin_number', 'lead_employee')
    employees = EmployeesCon.objects.values('cabin_number', 'title', 'f_name', 'patronymic', 'l_name', 't_number')
    context = {'cabinets' : cabinets, 'employees' : employees}
    return render(request, 'cabinets.html', context)

 



