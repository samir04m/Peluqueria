from django.conf.urls import url

from apps.contabilidad.views import reportes, reportes_diarios

urlpatterns = [
    url(r'^$', reportes, name="reportes"),
    # url(r'^reportes', reportes, name="reportes"),
    url(r'^reportes-diarios', reportes_diarios, name="reportes_diarios"),

]
