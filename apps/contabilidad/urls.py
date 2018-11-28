from django.conf.urls import url

from apps.contabilidad.views import *

urlpatterns = [
    url(r'^$', reportes, name="reportes"),
    url(r'^egresos', egresos, name="egresos"),
    url(r'^egreso/(?P<id>[0-9]{1,})', egreso, name='egreso'),
    # url(r'^reportes', reportes, name="reportes"),
    url(r'^reportes-diarios', reportes_diarios, name="reportes_diarios"),
    url(r'^reportes-semanales', reportes_semanales, name="reportes_semanales"),
    url(r'^reportes-mensuales', reportes_mensuales, name="reportes_mensuales"),
    url(r'^reportes-mensuales', reportes_mensuales, name="reportes_mensuales"),
    url(r'^reportes-por-servicios', reportes_por_servicios, name="reportes_por_servicios"),
    url(r'^reportes-por-empleados', reportes_por_empleados, name="reportes_por_empleados"),

]
