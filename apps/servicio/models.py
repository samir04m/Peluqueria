from django.db import models
from django.utils import timezone

# Create your models here.
class Empleado(models.Model):
    nombre = models.CharField(max_length=50)
    apellidos = models.CharField(max_length=70)

    def __str__(self):
        return "{} - {} {}".format(self.id, self.nombre, self.apellidos)

    def fname(self):
        return "{} {}".format(self.nombre, self.apellidos)

class Servicio(models.Model):
    nombre = models.CharField(max_length=50)

    def __str__(self):
        return "{} - {}".format(self.id, self.nombre)

class Tipo(models.Model):
    nombre = models.CharField(max_length=50)
    servicio = models.ForeignKey(Servicio, null=False, blank=False, on_delete=models.CASCADE)

    def __str__(self):
        return "{} - {}".format(self.id, self.nombre)

class Subtipo(models.Model):
    nombre = models.CharField(max_length=50)
    precio = models.IntegerField()
    tipo = models.ForeignKey(Tipo, null=False, blank=False, on_delete=models.CASCADE)

    def __str__(self):
        return "{} - {} - {} - {}".format(self.id, self.nombre, self.tipo.nombre, self.tipo.servicio.nombre)

    def name(self):
        return "{} {}".format(self.tipo.nombre, self.nombre)

class Factura(models.Model):
    empleado = models.ForeignKey(Empleado, null=False, blank=False, on_delete=models.CASCADE)
    subtipos = models.ManyToManyField(Subtipo)
    total =  models.IntegerField()
    day =  models.IntegerField()
    month =  models.IntegerField()
    year =  models.IntegerField()
    fecha = models.DateTimeField(default=timezone.now)

    def __str__(self):
        return "Factura #{} - {}. $ {} - Fecha {}/{}/{}".format(self.id, self.empleado.fname(),
                        self.total, self.day, self.month, self.year)
