from django.conf.urls import url
from apps.servicio.views import home, login, caja, facturar, factura


urlpatterns = [
    url(r'^$', home, name="home"),
    url(r'^login', login, name="login"),

    url(r'^caja', caja, name="caja"),
    url(r'^facturar$', facturar, name='facturar'),
    url(r'^factura/(?P<id>[0-9]{1,})', factura, name='factura'),
    # url(r'^registrar', RegistroUsuario.as_view(), name="registrar"),
 ]
