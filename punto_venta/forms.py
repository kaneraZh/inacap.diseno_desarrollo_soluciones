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
            'password',
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

#class BoletaProductoForm(forms.ModelForm):
#    nombre = forms.CharField(label='Producto', max_length=30, required=True)
#    class Meta:
#        model = Boleta_producto
#        fields = ["cantidad"]
#ProductoFormSet:forms.formset_factory = forms.formset_factory(BoletaProductoForm, extra=1)
#class BoletaServicioForm(forms.ModelForm):
#    nombre = forms.CharField(label='Servicio', max_length=30, required=True)
#    class Meta:
#        model = Boleta_servicio
#        fields = ["cantidad"]
#ServicioFormSet:forms.formset_factory = forms.formset_factory(BoletaServicioForm, extra=1)
#class BoletaForm(forms.ModelForm):
#    cliente_correo = forms.CharField(label='Correo Electronico', max_length=30)
#    productos = ProductoFormSet
#    servicios = ServicioFormSet
#    class Meta:
#        model = Boleta
#        fields = ["cliente", "tipo_de_pago"]

#from django.forms import inlineformset_factory, BaseInlineFormSet
#BoletaProductoFormSet = inlineformset_factory(Boleta, BoletaProducto, fields=["producto"])
#BoletaServicioFormSet = inlineformset_factory(Boleta, BoletaServicio, fields=["servicio"])
#class BoletaInlineFormset(BaseInlineFormSet):

#class FacturaDetalleForm(forms.ModelForm):
#    class Meta:
#        model = FacturaDetalle
#        fields = ("producto", "cantidad")
#        widgets = {
#            'producto' : forms.TextInput(
#                attrs={
#                    'class' : 'form-control',
#                    'placeholder' : 'Ingrese el nombre del producto',
#                }
#            ),
#            'cantidad' : forms.NumberInput(
#                attrs={
#                    'placeholder' : 'Ingrese cantidad del producto'
#                }
#            )
#        }
class FacturaForm(forms.ModelForm):
    class Meta:
        model = Factura
        fields = ("proveedor","tipo_de_pago")
#        widgets = {
#            "proveedor" : forms.ModelChoiceField(
#                queryset=Proveedor.objects.all(),
#                required=True
#            ),
#            "tipo_de_pago" : forms.ChoiceField(
#                choices=Factura.TIPO_DE_PAGO_CHOICES
#            ),
#        }
#    def save(self, commit=True):
#        data = self.cleaned_data
#        factura = Factura(
#            proveedor = data["proveedor"],
#            tipo_de_pago = data["tipo_de_pago"],
#        )
#        factura.save()
class FacturaDetalleForm(forms.ModelForm):
    class Meta:
        model = Factura_detalle
        fields = ('producto', 'cantidad', 'monto_total')
    def clean(self):
        res = super().clean()
#        if( len(Producto.objects.filter(nombre=data['producto']))>1 ):
#            self.add_error('producto', 'nombre del producto es muy generico')
        return res
    def save(self, commit=True):
        res = super().save(False)
        #res.producto = Producto.objects.get(id=self.data['proveedor'])
        return res.save(commit)

FacturaDetalleFormset = forms.modelformset_factory(
    form=FacturaDetalleForm,
    model=Factura_detalle,
    extra=1,
#    widgets={
#        'id' : forms.NumberInput(
#            attrs={
#                'class' : 'form-control',
#                'placeholder' : 'Ingrese id del producto',
#            }
#        ),
#        'cantidad' : forms.NumberInput(
#            attrs={
#                'class' : 'form-control',
#                'placeholder' : 'Ingrese cantidad del producto'
#            }
#        ),
#        'monto_neto' : forms.NumberInput(
#            attrs={
#                'class' : 'form-control',
#                'placeholder' : 'Ingrese precio neto del grupo de productos'
#            }
#        ),
#    },
)
