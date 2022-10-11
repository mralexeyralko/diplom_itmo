from django.db import models


class AuthGroup(models.Model):
    name = models.CharField(unique=True, max_length=150)

    class Meta:
        managed = False
        db_table = 'auth_group'


class AuthGroupPermissions(models.Model):
    id = models.BigAutoField(primary_key=True)
    group = models.ForeignKey(AuthGroup, models.DO_NOTHING)
    permission = models.ForeignKey('AuthPermission', models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'auth_group_permissions'
        unique_together = (('group', 'permission'),)


class AuthPermission(models.Model):
    name = models.CharField(max_length=255)
    content_type = models.ForeignKey('DjangoContentType', models.DO_NOTHING)
    codename = models.CharField(max_length=100)

    class Meta:
        managed = False
        db_table = 'auth_permission'
        unique_together = (('content_type', 'codename'),)


class AuthUser(models.Model):
    password = models.CharField(max_length=128)
    last_login = models.DateTimeField(blank=True, null=True)
    is_superuser = models.IntegerField()
    username = models.CharField(unique=True, max_length=150)
    first_name = models.CharField(max_length=150)
    last_name = models.CharField(max_length=150)
    email = models.CharField(max_length=254)
    is_staff = models.IntegerField()
    is_active = models.IntegerField()
    date_joined = models.DateTimeField()

    class Meta:
        managed = False
        db_table = 'auth_user'


class AuthUserGroups(models.Model):
    id = models.BigAutoField(primary_key=True)
    user = models.ForeignKey(AuthUser, models.DO_NOTHING)
    group = models.ForeignKey(AuthGroup, models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'auth_user_groups'
        unique_together = (('user', 'group'),)


class AuthUserUserPermissions(models.Model):
    id = models.BigAutoField(primary_key=True)
    user = models.ForeignKey(AuthUser, models.DO_NOTHING)
    permission = models.ForeignKey(AuthPermission, models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'auth_user_user_permissions'
        unique_together = (('user', 'permission'),)


class Cabinets(models.Model):
    cabin_number = models.IntegerField(primary_key=True)
    lead_employee = models.IntegerField(blank=True, null=True)
    cabin_task = models.ForeignKey('ConstructionSite', models.DO_NOTHING, db_column='cabin_task', blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'cabinets'


class ConstructionOperations(models.Model):
    construction_operation_number = models.AutoField(primary_key=True)
    construction_operation_name = models.CharField(unique=True, max_length=255, blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'construction_operations'


class ConstructionSite(models.Model):
    construction_site_number = models.AutoField(primary_key=True)
    construction_site_name = models.CharField(max_length=255, blank=True, null=True)
    construction_deadline = models.DateField(blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'construction_site'


class ConstructionType(models.Model):
    construction_type_id = models.AutoField(primary_key=True)
    construction_type = models.CharField(max_length=45, blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'construction_type'


class Departments(models.Model):
    key = models.AutoField(primary_key=True)
    department_name = models.CharField(max_length=255, blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'departments'


class DjangoAdminLog(models.Model):
    action_time = models.DateTimeField()
    object_id = models.TextField(blank=True, null=True)
    object_repr = models.CharField(max_length=200)
    action_flag = models.PositiveSmallIntegerField()
    change_message = models.TextField()
    content_type = models.ForeignKey('DjangoContentType', models.DO_NOTHING, blank=True, null=True)
    user = models.ForeignKey(AuthUser, models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'django_admin_log'


class DjangoContentType(models.Model):
    app_label = models.CharField(max_length=100)
    model = models.CharField(max_length=100)

    class Meta:
        managed = False
        db_table = 'django_content_type'
        unique_together = (('app_label', 'model'),)


class DjangoEvolution(models.Model):
    version = models.ForeignKey('DjangoProjectVersion', models.DO_NOTHING)
    app_label = models.CharField(max_length=200)
    label = models.CharField(max_length=100)

    class Meta:
        managed = False
        db_table = 'django_evolution'


class DjangoMigrations(models.Model):
    id = models.BigAutoField(primary_key=True)
    app = models.CharField(max_length=255)
    name = models.CharField(max_length=255)
    applied = models.DateTimeField()

    class Meta:
        managed = False
        db_table = 'django_migrations'


class DjangoProjectVersion(models.Model):
    signature = models.TextField()
    when = models.DateTimeField()

    class Meta:
        managed = False
        db_table = 'django_project_version'


class DjangoSession(models.Model):
    session_key = models.CharField(primary_key=True, max_length=40)
    session_data = models.TextField()
    expire_date = models.DateTimeField()

    class Meta:
        managed = False
        db_table = 'django_session'


class EmployeePositions(models.Model):
    employee_posotion_id = models.AutoField(primary_key=True)
    employee_position_name = models.CharField(max_length=45, blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'employee_positions'


class Employees(models.Model):
    t_number = models.AutoField(primary_key=True)
    f_name = models.CharField(max_length=45, blank=True, null=True)
    patronymic = models.CharField(max_length=45, blank=True, null=True)
    l_name = models.CharField(max_length=45, blank=True, null=True)
    cabin_number = models.ForeignKey(Cabinets, models.DO_NOTHING, db_column='cabin_number', blank=True, null=True)
    work_since = models.DateField(blank=True, null=True)
    lead_employee = models.ForeignKey('LeadEmployee', models.DO_NOTHING, db_column='lead_employee', blank=True, null=True)
    rating = models.FloatField(blank=True, null=True)
    department = models.ForeignKey(Departments, models.DO_NOTHING, db_column='department', blank=True, null=True)
    position = models.ForeignKey(EmployeePositions, models.DO_NOTHING, db_column='position', blank=True, null=True)
    emp_task = models.ForeignKey(ConstructionOperations, models.DO_NOTHING, db_column='emp_task', blank=True, null=True)
    emp_title = models.ForeignKey('Titles', models.DO_NOTHING, db_column='emp_title', blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'employees'


class EmployeesCon(models.Model):
    t_number = models.AutoField(primary_key=True)
    title = models.CharField(max_length=45, blank=True, null=True)
    f_name = models.CharField(max_length=45, blank=True, null=True)
    patronymic = models.CharField(max_length=45, blank=True, null=True)
    l_name = models.CharField(max_length=45, blank=True, null=True)
    cabin_number = models.IntegerField(blank=True, null=True)
    construction_operation_name = models.CharField(max_length=255, blank=True, null=True)
    work_since = models.DateField(blank=True, null=True)
    lead_employee_value = models.CharField(max_length=45, blank=True, null=True)
    rating = models.FloatField(blank=True, null=True)
    employee_position_name = models.CharField(max_length=45, blank=True, null=True)
    department_name = models.CharField(max_length=255, blank=True, null=True)
    slug = models.SlugField(unique=True, max_length=200)

    class Meta:
        managed = False
        db_table = 'employees_con'


class LeadEmployee(models.Model):
    lead_employee_id = models.IntegerField(primary_key=True)
    lead_employee_value = models.CharField(max_length=45, blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'lead_employee'


class Tasks(models.Model):
    task_number = models.AutoField(primary_key=True)
    task_name = models.ForeignKey(ConstructionOperations, models.DO_NOTHING, db_column='task_name', to_field='construction_operation_name', blank=True, null=True)
    t_number = models.ForeignKey(Employees, models.DO_NOTHING, db_column='t_number', blank=True, null=True)
    cabin_number = models.ForeignKey(Cabinets, models.DO_NOTHING, db_column='cabin_number', blank=True, null=True)
    task_deadline = models.DateTimeField(blank=True, null=True)
    task_given = models.DateTimeField(blank=True, null=True, auto_now_add=True)
    task_managed = models.DateTimeField(blank=True, null=True, auto_now=True)
    file_path = models.CharField(max_length=200, blank=True, null=True)
    construction_site_number = models.ForeignKey(ConstructionSite, models.DO_NOTHING, db_column='construction_site_number', blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'tasks'


class Titles(models.Model):
    title_id = models.AutoField(primary_key=True)
    title = models.CharField(max_length=45, blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'titles'


class WebpushGroup(models.Model):
    id = models.BigAutoField(primary_key=True)
    name = models.CharField(unique=True, max_length=255)

    class Meta:
        managed = False
        db_table = 'webpush_group'


class WebpushPushinformation(models.Model):
    id = models.BigAutoField(primary_key=True)
    group = models.ForeignKey(WebpushGroup, models.DO_NOTHING, blank=True, null=True)
    subscription = models.ForeignKey('WebpushSubscriptioninfo', models.DO_NOTHING)
    user = models.ForeignKey(AuthUser, models.DO_NOTHING, blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'webpush_pushinformation'


class WebpushSubscriptioninfo(models.Model):
    id = models.BigAutoField(primary_key=True)
    browser = models.CharField(max_length=100)
    endpoint = models.CharField(max_length=500)
    auth = models.CharField(max_length=100)
    p256dh = models.CharField(max_length=100)

    class Meta:
        managed = False
        db_table = 'webpush_subscriptioninfo'