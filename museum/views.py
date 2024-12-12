from rest_framework import  generics
from django.shortcuts import render

# Create your views here.
from .serializers import MenuSerializer
from .models import Menu
from .serializers import MuseumSerializer
from .models import Museum
class MenuAPIView(generics.ListAPIView):
    queryset=Menu.objects.all()
    serializer_class=MenuSerializer


class MuseumAPIView(generics.ListAPIView):
    queryset=Museum.objects.all()
    serializer_class=MuseumSerializer
    
class CustomerDetailAPIView(generics.RetrieveAPIView):
    """
    get all
    """
    queryset = Museum.objects.all()
    serializer_class = MuseumSerializer
    lookup_field = 'pk'    
    
