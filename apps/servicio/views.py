from django.shortcuts import render, redirect
from django.http import HttpResponseRedirect, HttpResponse

from apps.servicio.models import Empleado, Servicio, Tipo, Subtipo, Factura
from apps.contabilidad.models import Ingreso
from apps.servicio.forms import FacturaForm

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
        empleado = Empleado.objects.filter(id=int(request.POST["empleado"])).first()
        factura = Factura(empleado=empleado)
        factura.save()

        ingresos = 0
        servicios = Servicio.objects.all()
        for s in servicios :
            for tipo in s.tipo_set.all():
                if tipo.nombre in request.POST:
                    # print("Si esta ->", tipo.nombre)
                    subtipo = Subtipo.objects.filter(id=int(request.POST[tipo.nombre])).first()
                    factura.subtipos.add(subtipo)
                    ingresos = ingresos + subtipo.precio
                # else:
                    # print("NO esta ->", tipo.nombre)

        updateIngreso(ingresos)
        context = {"factura": factura}
        # return render(request, "main/factura.html", context)
        return redirect('servicio:factura', factura.id)
        # return HttpResponse("SI es post")
    else:
        return HttpResponse("No es post")

    return HttpResponse("Ningun condicional")

def factura(request, id):
    factura = Factura.objects.filter(id=int(id)).first()
    servicios = factura.subtipos.all()
    # servicios = Factura.objects.filter(subtipos_factura=factura.id).prefetch_related('subtipos')
    print("----------->",servicios)
    context = {"factura": factura}
    return render(request, "main/factura.html", context)

def updateIngreso(valor_ingresos):
    dueno = float(valor_ingresos)*0.4
    empleados = float(valor_ingresos)*0.5
    insumos = float(valor_ingresos)*0.1

    ingreso = Ingreso.objects.first()
    if ingreso:
        print("====> actualizacion de registro ingreso")
        ingreso.dueno = float(ingreso.dueno) + dueno
        ingreso.empleados = float(ingreso.empleados) + empleados
        ingreso.insumos = float(ingreso.insumos) + insumos
    else:
        ingreso = Ingreso(dueno=dueno, empleados=empleados, insumos=insumos)
        print("====> creacion de registro ingreso")

    ingreso.save()
