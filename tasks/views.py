from django.shortcuts import render, get_object_or_404, render, Http404
from diplom.models import Tasks, ConstructionOperations, EmployeesCon, Cabinets, Titles, LeadEmployee, EmployeePositions, Departments, Employees, ConstructionSite
from django.http import HttpResponseRedirect




def showInfoFunc(request):
    
    construction_site = ConstructionSite.objects.all()
    employees = EmployeesCon.objects.all()
    cabinets = Cabinets.objects.all()
    construction_operations = ConstructionOperations.objects.all()
    tasks = Tasks.objects.all()
    tasks2 = Tasks.objects.values()
    tasks_t_number = Tasks.objects.select_related('t_number', 'construction_site_number', 'task_name')
    context = {'tasks2' : tasks2, 'tasks_t_number' : tasks_t_number, 'tasks' : tasks, 'construction_site' : construction_site, 'employees' : employees, 'cabinets' : cabinets, 'construction_operations' : construction_operations }

    return render(request, 'tasks.html', context)

                # post = Tasks(task_name = task_name, 
                # t_number = Employees.objects.get(t_number = t_number), 
                # construction_site_number = ConstructionSite.objects.get(construction_site_number = construction_site_number),
                # cabin_number = Cabinets.objects.get(cabin_number = cabin_number), 
                # task_deadline = task_deadline) 

# def makePageFunc(request, **kwargs):
    
#     content = EmployeesCon.objects.get(t_number = 4)
#     context = {'content' : content}
#     if not EmployeesCon:
#         raise Http404("No MyModel matches the given query.")

#     return render(request, 'tasks.html', context)

    # item = get_object_or_404(YOUR_MODEL, YOUR_ITEM_FIELD_NAME=item_name)

