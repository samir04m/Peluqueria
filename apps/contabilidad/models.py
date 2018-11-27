from django.db import models

# Create your models here.
class Ingreso(models.Model):
    total = models.IntegerField()
    dueno = models.IntegerField()
    empleados = models.IntegerField()
    insumos = models.IntegerField()

class Egreso(models.Model):
    month =  models.IntegerField()
    year =  models.IntegerField()
    insumos = models.IntegerField()
    instrumentacion =  models.IntegerField()
    alquiler =  models.IntegerField()
    totalServiciosPublicos =  models.IntegerField()
    energia =  models.IntegerField()
    agua =  models.IntegerField()
    telefonia =  models.IntegerField()
