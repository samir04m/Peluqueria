from django.shortcuts import render, redirect
from django.http import HttpResponseRedirect, HttpResponse

from apps.servicio.models import Empleado, Servicio, Tipo, Subtipo, Factura
from apps.contabilidad.models import Ingreso

# Create your views here.
def reportes(request):
    ingreso = Ingreso.objects.first()
    context = {"ingreso": ingreso}
    return render(request, 'main/reportes.html', context)

def reportes_diarios(request):
    facturas = Factura.objects.all().select_related('empleado')
    print("========>facturas = ", facturas)

    for f in facturas:
        print("factura ", f.id, " empleado ",f.empleado.fname())

    context = {'title': 'Reportes Diarios',}
    return render(request, 'main/reporte.html', context)


"""
Factura.objects.filter(fecha__gte=datetime.date(2018, 9, 10))
Factura.objects.all().select_related('empleado')
Factura.objects.all().select_related('empleado').filter(empleado__id=1)


"""
