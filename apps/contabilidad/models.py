from django.db import models

# Create your models here.
class Ingreso(models.Model):
    dueno = models.DecimalField(max_digits=10, decimal_places=2)
    empleados = models.DecimalField(max_digits=10, decimal_places=2)
    insumos = models.DecimalField(max_digits=10, decimal_places=2)
