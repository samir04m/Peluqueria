from django.db import models
from django.utils import timezone

# Create your models here.
class Empleado(models.Model):
    nombre = models.CharField(max_length=50)
    apellidos = models.CharField(max_length=70)

    def __str__(self):
        return "{}  ({})".format(self.nombre, self.apellidos)

class Servicio(models.Model):
    nombre = models.CharField(max_length=50)

class Tipo(models.Model):
    nombre = models.CharField(max_length=50)
    servicio = models.ForeignKey(Servicio, null=False, blank=False, on_delete=models.CASCADE)

class Subtipo(models.Model):
    nombre = models.CharField(max_length=50)
    precio = models.DecimalField(max_digits=7, decimal_places=2)
    tipo = models.ForeignKey(Tipo, null=False, blank=False, on_delete=models.CASCADE)

class Factura(models.Model):
    fecha = models.DateTimeField(default=timezone.now)
    empleado = models.ForeignKey(Empleado, null=False, blank=False, on_delete=models.CASCADE)
    servicios = models.ManyToManyField(Servicio)
