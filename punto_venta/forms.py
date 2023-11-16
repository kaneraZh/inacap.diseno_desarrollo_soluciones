from django import forms

from .models import Cliente
class ClienteCrearForm(forms.ModelForm):
    def save(self):
        Cliente.objects.create(
            is_superuser = False,
            groups = 'cliente',
            password = self.password,
            last_login = self.last_login,
            username = self.username,
            email = self.email,
            first_name = self.first_name,
            is_staff = False,
            fecha_nacimiento = self.fecha_nacimiento,
            direccion = self.direccion,
        )
    class Meta:
        model = Cliente
        fields = [
            'username',
            'password',
            'first_name',
            'last_name',
            'email',
            'fecha_nacimiento',
            'direccion',
        ]

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
