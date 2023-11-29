from django import forms
from .models import Cliente
from .models import Producto
class ClienteCrearForm(forms.ModelForm):
    contrasena_confirmar = forms.CharField(required=True, label="confirmar contraseña")
    class Meta:
        model = Cliente
        fields = [
            'correo_electronico',
            'contrasena',
            'primer_nombre',
            'primer_apellido',
            'fecha_nacimiento',
            'direccion',
        ]
    def _clean_fields(self):
        # chequea que las contraseñas sean iguales
        if(self.__getitem__('contrasena').data != self.__getitem__('contrasena_confirmar').data):
            self.add_error('contrasena_confirmar', 'Contraseñas no son iguales.')
        super()._clean_fields()

from .models import Cita
from datetime import datetime, date
class CitaClienteForm(forms.ModelForm):
    class Meta:
        model = Cita
        fields = ["fecha", "hora", "servicio"]
    def _clean_fields(self):
        super()._clean_fields()
        _now:date = datetime.now().date()
        _fecha:date = self.cleaned_data['fecha']
        if(_now>_fecha):self.add_error('fecha', 'Fecha esta en el pasado.')
        month_distance = ((_fecha.year-_now.year)*12)+_fecha.month-_now.month
        if( month_distance>=3 ):self.add_error('fecha', 'Fecha es muy a futuro. (3 meses max)')
class CitaEmpleadoForm(forms.ModelForm):
    class Meta:
        model = Cita
        fields = ["fecha", "hora", "servicio", "cliente"]

class LogInForm(forms.Form):
    email = forms.EmailField(label='Email', required=True)
    password = forms.CharField(widget=forms.PasswordInput(), required=True)
    class Meta:
        fields = ['email', 'password']

class ProductoForm(forms.ModelForm):
    class Meta:
        model = Producto
        fields = ['nombre', 'descripcion', 'categoria', 'precio_compra', 'precio_venta', 'stock', 'proveedor', 'imagen']



