from rest_framework import serializers

from .models import T02Tsk10

class T02TaskSerializer(serializers.ModelSerializer):
    class Meta:
        model = T02Tsk10
        # fields = ["id","task_name", "division","opportunity","task_type"]
        fields = ('__all__')

    