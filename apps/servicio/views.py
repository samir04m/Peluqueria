from django.shortcuts import render, redirect
from django.http import HttpResponseRedirect, HttpResponse

from apps.servicio.models import Empleado, Servicio, Tipo, Subtipo, Factura
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
        # form = FacturaForm(request.POST)
        # if form.is_valid():
        #     form.save()
        # else:

        # print("is valid-------->", form.is_valid())

        servicios = Servicio.objects.all()
        for s in servicios :
            for tipo in s.tipo_set.all():
                if tipo.nombre in request.POST:
                    # print("Si esta ->", tipo.nombre)
                    subtipo = Subtipo.objects.filter(id=int(request.POST[tipo.nombre])).first()
                    factura.subtipos.add(subtipo)
                # else:
                    # print("NO esta ->", tipo.nombre)

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
