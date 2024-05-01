from django.shortcuts import render
from .models import T02Led10,T02Tsk10
from rest_framework import generics, status
from .serializers import T02TaskSerializer
from rest_framework.response import Response
from django.http import HttpResponse
from rest_framework.views import APIView
from django.db.models import Q

# Create your views here.


class TaskList(APIView):
    queryset = T02Tsk10.objects.all()

    def get(self,request,format=None): #p1
        leads = request.query_params.get("lead")
        print("lead params: "+ str(leads))
        if leads:
            lead_ids=leads.split(",")
        else:
            lead_ids =[]

        my_filter_qs = Q()
        for lead in lead_ids:
            my_filter_qs = my_filter_qs | Q(lead=lead)

        print("Filter => "+str(my_filter_qs))

        if lead_ids:
            # data_tasks = T02Tsk10.objects.filter(lead=lead_ids)
            data_tasks = self.queryset.filter(my_filter_qs)
        else:
            data_tasks = T02Tsk10.objects.all()

        serializer = T02TaskSerializer(data_tasks,many=True)


        return Response(serializer.data,status=status.HTTP_200_OK)


