from django.shortcuts import render
from .models import EmployeesCon, Cabinets, Titles, LeadEmployee, EmployeePositions, Departments, Employees, Tasks, ConstructionSite
from django.http import HttpResponseRedirect
from submit import views
from django.views.generic import ListView, DetailView
from webpush import send_user_notification
from django.shortcuts import get_object_or_404


def showInfoFunc(request):
    employees = EmployeesCon.objects.all()
    cabinets = Cabinets.objects.all()
    titles = Titles.objects.all()
    cabinets = Cabinets.objects.all()
    lead_employee = LeadEmployee.objects.all()
    position = EmployeePositions.objects.all()
    department = Departments.objects.all()
    tasks = Tasks.objects.all()
    context = {'task' : tasks, 'employees' : employees, 'cabins' : cabinets, 'titles' : titles, 'cabinets' : cabinets, 'lead_employee' : lead_employee, 
    'position' : position, 'department' : department}
    return render(request, 'index.html', context)




def get_name(request):
        if request.method == 'POST':
            if 'new_employee' in request.POST:
                title = request.POST['title']
                f_name = request.POST['f_name']
                patronymic = request.POST['patronymic']
                l_name = request.POST['l_name']
                cabin_number = request.POST['cabin_number']
                work_since = request.POST['work_since']
                lead_employee_value = request.POST['lead_employee_value']
                rating = request.POST['rating']
                employee_position_name = request.POST['employee_position_name']
                department_name = request.POST['department_name']
                slug = request.POST['slug']
                post = EmployeesCon(title = title, f_name = f_name, l_name = l_name, patronymic = patronymic, cabin_number = cabin_number, work_since = work_since, lead_employee_value = lead_employee_value, rating= rating, employee_position_name = employee_position_name, department_name = department_name, slug = slug)
                post.save()

                return render(request, 'submit.html', {'post' : post}) 

            elif 'new_task' in request.POST:
                task_name = request.POST['task_name']
                t_number = request.POST['t_number']
                construction_site_number = request.POST['construction_site_number']
                cabin_number = request.POST['cabin_number']
                task_deadline = request.POST['task_deadline']
                post = Tasks(
                task_name = task_name, 
                t_number = Employees.objects.select_related(t_number = t_number), 
                construction_site_number = ConstructionSite.objects.get(construction_site_number = construction_site_number),
                cabin_number = Cabinets.objects.get(cabin_number = cabin_number), 
                task_deadline = task_deadline
                )
                post.save()

                return render(request, 'submit.html', {'post' : post}) 

        else: 
            return render(request, 'submit.html', {'post' : post})  






# class EmployeesConList(ListView):
#     model = Tasks
#     template_name = "index2.html"


# class EmployeesConDetail(DetailView):
#     model = EmployeesCon
#     template_name = "index2.html"
    
    
def post_details(request, slug):
    object = get_object_or_404(EmployeesCon, slug=slug)
    task_name = Tasks.objects.values('task_name').filter(t_number = object.t_number)
    construction_site = Tasks.objects.values('construction_site_number').filter(t_number = object.t_number)
    deadline = Tasks.objects.values('task_deadline').filter(t_number = object.t_number)
    context = {'deadline' : deadline, 'object' : object, 'task_name' : task_name, 'construction_site' : construction_site}
    return render(request, 'cabinet.html', context)




# Class Article(models.Model):
#     slug = models.SlugField(unique=True)

# def article_detail(request, article):
#     article = get_object_or_404(Model_Name, slug=article)
#     context = {'article ': article}
#     return render(request,"news/Home/tnews/blog-single.html",context)