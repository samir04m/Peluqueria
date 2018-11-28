from django.conf.urls import url

from apps.servicio.views import *

urlpatterns = [
    url(r'^$', home, name="home"),
    url(r'^login', login, name="login"),
    url(r'^mapa', mapa, name="mapa"),
    url(r'^caja', caja, name="caja"),
    url(r'^facturar$', facturar, name='facturar'),
    url(r'^vistaFacturas$', vistaFacturas, name='vistaFacturas'),
    url(r'^factura/(?P<id>[0-9]{1,})', factura, name='factura'),

]
