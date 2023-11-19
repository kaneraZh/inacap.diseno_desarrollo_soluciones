from django import forms

from .models import Cliente
class ClienteCrearForm(forms.ModelForm):
    password_confirm = forms.CharField(required=True)
    class Meta:
        model = Cliente
        fields = [
            'username',
            'password',
            'password_confirm',
            'first_name',
            'last_name',
            'email',
            'fecha_nacimiento',
            'direccion',
        ]
    def _clean_fields(self):
        # chequea que las contraseñas sean iguales
        if(self.__getitem__('password').data != self.__getitem__('password_confirm').data):
            self.add_error('password_confirm', 'Passwords dont match.')
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
        
        if(_now>_fecha):self.add_error('fecha', 'Date is in the past.')

        month_distance = ((_fecha.year-_now.year)*12)+_fecha.month-_now.month
        if( month_distance>=3 ):self.add_error('fecha', 'Date is too ahead. (3mo max)')
class CitaEmpleadoForm(forms.ModelForm):
    class Meta:
        model = Cita
        fields = ["fecha", "hora", "servicio", "cliente"]

class LogInForm(forms.Form):
    email = forms.EmailField(label='Email', required=True)
    password = forms.CharField(widget=forms.PasswordInput(), required=True)
    class Meta:
        fields = ['email', 'password']
