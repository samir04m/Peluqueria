from django.shortcuts import render, redirect
from django.http import HttpResponseRedirect, HttpResponse

from apps.servicio.models import Empleado, Servicio, Tipo, Subtipo, Factura
from apps.contabilidad.models import Ingreso
from apps.servicio.forms import FacturaForm
import datetime

# Create your views here.
def home(request):
    return render(request, 'main/home.html')

def login(request):
    return render(request, 'main/home.html')

def caja(request):
    empleados = Empleado.objects.all()
    servicios = Servicio.objects.all()
    # print("------------->", servicios[0].tipo_set.all())
    context = {"empleados": empleados, "servicios": servicios}
    return render(request, 'main/caja.html', context)


def facturar(request):
    if request.method == 'POST':
        empleado = Empleado.objects.filter(id=int(request.POST.get('empleado'))).first()
        factura = Factura(empleado=empleado)
        factura.total = 0

        time = datetime.datetime.now()
        factura.day = time.day
        factura.month = time.month
        factura.year = time.year
        factura.save()

        total = 0
        servicios = Servicio.objects.all()
        for s in servicios :
            for tipo in s.tipo_set.all():
                if tipo.nombre in request.POST:
                    # print("Se selecciono ->", tipo.nombre)
                    subtipo = Subtipo.objects.filter(id=int(request.POST[tipo.nombre])).first()
                    factura.subtipos.add(subtipo)
                    total = total + subtipo.precio
                # else:
                #     print("NO se selecciono ->", tipo.nombre)

        factura.total = total
        factura.save()
        updateIngreso(total)
        context = {"factura": factura}
        return redirect('servicio:factura', factura.id)
    else:
        return HttpResponse("No se puede guardar. El metodo no es post")

    return HttpResponse("Ningun condicional")

def factura(request, id):
    factura = Factura.objects.filter(id=int(id)).first()
    if factura:
        servicios = factura.subtipos.all()
        context = {"factura": factura}
    else:
        context = {"factura": None}

    return render(request, "main/factura.html", context)

def updateIngreso(valor_ingresos):
    total = valor_ingresos
    dueno = float(valor_ingresos)*0.4
    empleados = float(valor_ingresos)*0.5
    insumos = float(valor_ingresos)*0.1

    ingreso = Ingreso.objects.first()
    if ingreso:
        print("====> actualizacion de registro ingreso")
        ingreso.total = ingreso.total + total
        ingreso.dueno = ingreso.dueno + dueno
        ingreso.empleados = ingreso.empleados + empleados
        ingreso.insumos = ingreso.insumos + insumos
    else:
        ingreso = Ingreso(total=total, dueno=dueno, empleados=empleados, insumos=insumos)
        print("====> creacion de registro ingreso")

    ingreso.save()
