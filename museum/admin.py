from django.contrib import admin

from museum.models import Menu
from museum.models import Museum
from museum.models import Visit

admin.site.register(Menu)
admin.site.register(Museum)
admin.site.register(Visit)