from django.contrib import admin

# Register your models here.
from apps.contabilidad.models import Ingreso, Egreso

admin.site.register(Ingreso)
admin.site.register(Egreso)
