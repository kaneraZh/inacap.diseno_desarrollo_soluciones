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
class CitaClienteForm(forms.ModelForm):
    class Meta:
        model = Cita
        fields = ["fecha", "hora", "servicio"]
class CitaEmpleadoForm(forms.ModelForm):
    class Meta:
        model = Cita
        fields = ["fecha", "hora", "servicio", "cliente"]

class LogInForm(forms.Form):
    email = forms.EmailField(label='Email', required=True)
    password = forms.CharField(widget=forms.PasswordInput(), required=True)
    class Meta:
        fields = ['email', 'password']


