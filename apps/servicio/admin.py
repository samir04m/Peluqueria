from django.contrib import admin

# Register your models here.
from apps.servicio.models import Empleado, Servicio, Tipo, Subtipo, Factura

admin.site.register(Empleado)
admin.site.register(Servicio)
admin.site.register(Tipo)
admin.site.register(Subtipo)
admin.site.register(Factura)
