from django.contrib import admin
from simple_history.admin import SimpleHistoryAdmin

# Register your models here.

from . import models

class TaskAdmin(SimpleHistoryAdmin):

    list_per_page = 20
    search_fields = ['task_name']
    ordering = ['task_name']
    list_display = ['task_name', 'task_type', 'division']

class LeadAdmin(SimpleHistoryAdmin):

    list_per_page = 20
    search_fields = ['lead_category']
    ordering = ['lead_category']
    list_display = ['lead_category', 'lead_status', 'description']


admin.site.register(models.T02Tsk10, TaskAdmin)
admin.site.register(models.T02Led10, LeadAdmin)