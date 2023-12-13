from django import forms
from .models import Cliente, Empleado, Producto, Cita, Boleta, Boleta_producto, Boleta_servicio, Servicio, Factura, Factura_detalle, Proveedor

class ClienteCrearForm(forms.ModelForm):
    contrasena_confirmar = forms.CharField(required=True, label="Confirmar Contraseña", widget=forms.PasswordInput())
    contrasena = forms.CharField(required=True, label="Contraseña", widget=forms.PasswordInput())
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

from django.contrib.auth.models import Group, Permission
class EmpleadoCrearForm(forms.ModelForm):
    es_jefe = forms.BooleanField(label='Es Jefe?', required=False)
    class Meta:
        model = Empleado
        template_name = "tables/create.html"
        fields = (
            'correo_electronico',
            'contrasena',
            'primer_nombre',
            'primer_apellido',
            'fecha_nacimiento',
            'direccion',
            'documento_identificador',
            'fecha_contratacion',
            'afp',
        )
    def save(self, commit=True):
        res = super().save(commit)
        if(commit):
            grupo = Group.objects.get(name='empleado')
            if('es_jefe' in self.data):
                if(self.data['es_jefe'] == 'on'):
                    grupo = Group.objects.get(name='jefe')
            res.groups.add(grupo.id)
        return res
class ClienteCrearForm(forms.ModelForm):
    class Meta:
        model = Cliente
        template_name = "tables/create.html"
        fields = [
            'primer_nombre',
            'primer_apellido',
            'correo_electronico',
            'contrasena',
            'fecha_nacimiento',
            'direccion',
        ]
    def save(self, commit=True):
        res = super().save(commit)
        if(commit):
            res.groups.add(Group.objects.get(name='cliente').id)
        return res

class BoletaForm(forms.ModelForm):
    class Meta:
        model = Boleta
        fields = ("tipo_de_pago","cliente")
class BoletaProductoForm(forms.ModelForm):
    class Meta:
        model = Boleta_producto
        fields = ("producto","cantidad")
class BoletaServicioForm(forms.ModelForm):
    class Meta:
        model = Boleta_servicio
        fields = ("servicio","cantidad")
BoletaProductoFormset = forms.modelformset_factory(
    form=BoletaProductoForm,
    model=Boleta_producto,
    extra=1,
)
BoletaServicioFormset = forms.modelformset_factory(
    form=BoletaServicioForm,
    model=Boleta_servicio,
    extra=1,
)

class FacturaForm(forms.ModelForm):
    class Meta:
        model = Factura
        fields = ("proveedor","tipo_de_pago")
class FacturaDetalleForm(forms.ModelForm):
    id = forms.HiddenInput()
    class Meta:
        model = Factura_detalle
        fields = ('id', 'producto', 'cantidad', 'monto_total')
FacturaDetalleFormset = forms.modelformset_factory(
    form=FacturaDetalleForm,
    model=Factura_detalle,
    extra=1,
)