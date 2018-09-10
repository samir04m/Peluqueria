from django import forms

from apps.servicio.models import Factura

class FacturaForm(forms.ModelForm):

    class Meta:
        model = Factura

        fields = [
            'empleado',
        ]

        labels = {
            'empleado': 'Empleado',
        }

        widgets = {
            'empleado': forms.Select(),
        }
