from django.shortcuts import render, redirect
from django.http import HttpResponseRedirect, HttpResponse

from apps.servicio.models import Empleado, Servicio, Tipo, Subtipo, Factura
from apps.contabilidad.models import Ingreso, Egreso
import datetime

meses = ['Enero','Febrero','Marzo','Abril',"Mayo","Junio","Julio",
        "Agosto","Septiembre","Octubre","Noviembre","Diciembre"]

# Create your views here.
def reportes(request):
    ingreso = Ingreso.objects.first()
    context = {"ingreso": ingreso}
    return render(request, 'main/reportes.html', context)

def ingresos(request):
    ingreso = Ingreso.objects.first()
    context = {"ingreso": ingreso}
    return render(request, 'main/egresos.html', context)


def egresos(request):
    egresos = Egreso.objects.order_by('month')

    time = datetime.datetime.now()
    egresosDelMes = Egreso.objects.filter(month=int(time.month), year=int(time.year)).first()

    ultimosEgresos = Egreso.objects.filter(year=int(time.year)).order_by('-month')[:5][::-1]
    nfilas = len(ultimosEgresos)
    datosGrafica = [None] * nfilas
    for i in range(nfilas):
        datosGrafica[i] = [meses[ (ultimosEgresos[i].month)-1 ],  getTotalEgresos(ultimosEgresos[i])]

    context = {"egresos": egresos,
                "egresosDelMes": egresosDelMes,
                "meses":meses,
                "totalEgreso": getTotalEgresos(egresosDelMes),
                "datosGrafica": datosGrafica}
    return render(request, 'main/egresos.html', context)

def egreso(request, id):
    egreso = Egreso.objects.filter(id=int(id)).first()
    context = {"egreso": egreso, "meses":meses, "totalEgreso": getTotalEgresos(egreso)}
    return render(request, "main/egreso.html", context)

def reportes_diarios(request):

    context = {'title': 'Reportes Diarios', 'archivo':'js/diario.js'}
    return render(request, 'main/reporte.html', context)

def reportes_semanales(request):
    context = {'title': 'Reportes Semanales', 'archivo':'js/semanal.js'}
    return render(request, 'main/reporte.html', context)

def reportes_mensuales(request):
    context = {'title': 'Reportes Mensuales', 'archivo':'js/mensual.js'}
    return render(request, 'main/reporte.html', context)

def reportes_por_servicios(request):
    context = {'title': 'Reportes por Servicios', 'archivo':'js/servicio.js'}
    return render(request, 'main/reporte.html', context)

def reportes_por_empleados(request):
    context = {'title': 'Reportes por Empleados', 'archivo':'js/empleado.js'}
    return render(request, 'main/reporte.html', context)

def getTotalEgresos(egreso):
    suma = 0
    if egreso:
        suma += egreso.insumos
        suma += egreso.instrumentacion
        suma += egreso.alquiler
        suma += egreso.totalServiciosPublicos
    return suma

"""
Factura.objects.filter(fecha__gte=datetime.date(2018, 9, 10))
Factura.objects.all().select_related('empleado')
Factura.objects.all().select_related('empleado').filter(empleado__id=1)


"""
