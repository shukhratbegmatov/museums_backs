from rest_framework import serializers
from .models import Menu
from .models import Museum

class MenuSerializer(serializers.ModelSerializer):
    class Meta:
        model=Menu
        fields = ['id','title','link']

class MuseumSerializer(serializers.ModelSerializer):
    class Meta:
        model = Museum
        fields = ['id','name','description','address','number','work_time','images','lat','lng','status']
