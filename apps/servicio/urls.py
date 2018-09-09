from django.conf.urls import url
from apps.servicio.views import home


urlpatterns = [
    url(r'^$', home, name="home"),
    # url(r'^registrar', RegistroUsuario.as_view(), name="registrar"),
 ]
