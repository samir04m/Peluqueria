from django import template

register = template.Library()

@register.filter
def nombre_mes(List, i):
    meses = ['Enero','Febrero','Marzo','Abril',"Mayo","Junio","Julio",
            "Agosto","Septiembre","Octubre","Noviembre","Diciembre"]
    numero_mes = List[i]
    return meses[numero_mes-1]
