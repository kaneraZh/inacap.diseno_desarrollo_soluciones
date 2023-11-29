from django.contrib.auth.models import User
from django.db import models
from django.urls import reverse

class Persona(User):
    #usuario = models.OneToOneField(User, on_delete=models.CASCADE)
    primer_nombre = models.CharField(max_length=20, null=True)
    primer_apellido = models.CharField(max_length=20, null=True)
    correo_electronico = models.EmailField(max_length=30, null=True)
    contrasena = models.CharField(max_length=20, null=True, verbose_name='contraseña')
    fecha_nacimiento = models.DateField()
    direccion = models.CharField(max_length=20, null=True)
    def save(self, force_insert=False, force_update=False, using=None, update_fields=None):
        self.username = self.email
        self.first_name = self.primer_nombre
        self.last_name = self.primer_apellido
        self.email = self.correo_electronico
        self.password = self.contrasena
        self.set_password(self.contrasena)
        super().save(force_insert,force_update,using,update_fields)
    def __str__(self):
        return f'{self.username}, {self.email}, nacimiento: {self.fecha_nacimiento}'
class Empleado(Persona):
    documento_identificador = models.CharField(max_length=30)
    fecha_contratacion = models.DateField()
    afp = models.CharField(max_length=15)
    class Meta:
        verbose_name = 'Empleado'
    def __str__(self):
        return f'{super().__str__()}, contrato desde:{self.fecha_contratacion}'
    def get_absolute_url(self):
        return reverse("empleado_detalle", kwargs={"pk": self.id})
class Cliente(Persona):
    class Meta:
        verbose_name = 'Cliente'
    def get_absolute_url(self):
        return reverse("cliente_detalle", kwargs={"pk": self.id})
    
class Proveedor(models.Model):
    nombre = models.CharField(max_length=40)
    direccion = models.CharField(max_length=40)
    rut_empresa = models.CharField(max_length=30)
    telefono_celular = models.CharField(max_length=30)
    email = models.EmailField(max_length=40)
    def __str__(self):
        return f'{self.nombre}, {self.email}, {self.direccion}, {self.telefono_celular}'
class Producto(models.Model):
    nombre = models.CharField(max_length=30)
    descripcion = models.CharField(max_length=300)
    categoria = models.CharField(max_length=20)
    precio_compra = models.PositiveIntegerField()
    precio_venta = models.PositiveIntegerField()
    stock = models.PositiveIntegerField()
    proveedor = models.ForeignKey(Proveedor, on_delete=models.RESTRICT)
    imagen = models.ImageField(upload_to='productos/', default='productos/default.jpg')

    def __str__(self):
        return f'{self.nombre}, {self.precio_venta}, {self.stock}'
class Servicio(models.Model):
    nombre = models.CharField(max_length=30)
    descripcion = models.CharField(max_length=50)
    precio = models.PositiveIntegerField()
    tiempo = models.DurationField()
    empleados = models.ManyToManyField(Empleado)
    def __str__(self) -> str:
        return f'{self.nombre}, {self.precio}, {self.tiempo}'

class Cita(models.Model):
    fecha = models.DateField()
    hora = models.TimeField(auto_now=False, auto_now_add=False)
    servicio = models.ForeignKey(Servicio, on_delete=models.CASCADE)
    cliente = models.ForeignKey(Cliente, on_delete=models.SET_NULL, null=True)
    def __str__(self):
        return f'{self.fecha}, {self.hora}, {self.servicio}, {self.cliente}'

class Documento(models.Model):
    class Meta:
        abstract = True
    fecha_modificacion = models.DateTimeField(auto_now_add=False, auto_now=True)#, default=datetime.date.today)
    fecha_creacion = models.DateTimeField(auto_now_add=True, auto_now=False)#, default=datetime.date.today)
class Boleta(Documento):
    TIPO_DE_PAGO_CHOICES = (
        ('Efectivo', 'Efectivo'),
        ('Tarjeta de crédito', 'Tarjeta de crédito'),
        ('Transferencia bancaria', 'Transferencia bancaria'),
    )
    tipo_de_pago = models.CharField(max_length=25, choices=TIPO_DE_PAGO_CHOICES)
    monto_neto = models.PositiveIntegerField()
    monto_iva = models.PositiveIntegerField()
    monto_total = models.PositiveIntegerField()
    cliente = models.ForeignKey(Cliente, on_delete=models.SET_NULL, null=True)
    empleado = models.ForeignKey(Empleado, on_delete=models.SET_NULL, null=True)
    class Meta:
        permissions = [
            ("can_add_boleta", "Puede agregar boletas"),
            ("can_delete_boleta", "Puede eliminar boletas"),
            ("can_update_boleta", "Puede actualizar boletas"),
        ]
    def __str__(self):
        contenidos:list = []
        contenidos.append(Boleta_producto.objects.all().filter(boleta=self))
        contenidos.append(Boleta_servicio.objects.all().filter(boleta=self))
        return f'{self.fecha_creacion}, {self.tipo_de_pago}, {self.monto_neto}, {self.cliente}, {", ".join(contenidos)}'
class Boleta_producto(Documento):
    def __str__(self): return f"{self.boleta.nombre}x{self.cantidad}: {monto_total}"
    boleta = models.ForeignKey(Boleta, on_delete=models.CASCADE)
    producto = models.ForeignKey(Producto, on_delete=models.SET_NULL, null=True)
    cantidad = models.PositiveIntegerField()
    precio_venta = models.PositiveIntegerField()
    monto_neto = models.PositiveIntegerField()
    monto_iva = models.PositiveIntegerField()
    monto_total = models.PositiveIntegerField()
    def __str__(self):
        return f'{self.producto}x{self.cantidad}'
class Boleta_servicio(Documento):
    def __str__(self): return f"{self.servicio.nombre}x{self.cantidad}: {monto_total}"
    boleta = models.ForeignKey(Boleta, on_delete=models.CASCADE)
    servicio = models.ForeignKey(Servicio, on_delete=models.SET_NULL, null=True)
    cantidad = models.PositiveIntegerField()
    precio_venta = models.PositiveIntegerField()
    monto_neto = models.PositiveIntegerField()
    monto_iva = models.PositiveIntegerField()
    monto_total = models.PositiveIntegerField()
    def __str__(self):
        return f'{self.producto}x{self.cantidad}'

class Factura(Documento):
    TIPO_DE_PAGO_CHOICES = (
        ('Efectivo', 'Efectivo'),
        ('Tarjeta de crédito', 'Tarjeta de crédito'),
        ('Transferencia bancaria', 'Transferencia bancaria'),
    )
    numero_factura = models.PositiveIntegerField()
    tipo_de_pago = models.CharField(max_length=25, choices=TIPO_DE_PAGO_CHOICES)
    #productos = models.ManyToManyField(Producto)
    monto_neto = models.PositiveIntegerField()
    monto_iva = models.PositiveIntegerField()
    monto_total = models.PositiveIntegerField()
    #fecha_y_hora = models.DateTimeField(auto_now_add=True)
    empleado = models.ForeignKey(User, on_delete=models.CASCADE, related_name='facturas_jefe')
    proveedor = models.ForeignKey(Proveedor, on_delete=models.SET_NULL, null=True)
    class Meta:
        permissions = [
            ("can_add_factura", "Puede agregar facturas"),
            ("can_delete_factura", "Puede eliminar facturas"),
            ("can_update_factura", "Puede actualizar facturas"),
        ]
    def __str__(self):
        contenidos:list = []
        contenidos.append(Factura_detalle.objects.all().filter(factura=self))
        return f'{self.fecha_creacion}, {self.tipo_de_pago}, {self.monto_neto}, {self.proveedor}, {", ".join(contenidos)}'
class Factura_detalle(Documento):
    numero_factura = models.IntegerField()
    factura = models.ForeignKey(Factura, on_delete=models.CASCADE)
    producto = models.ForeignKey(Producto, on_delete=models.SET_NULL, null=True)
    cantidad = models.PositiveIntegerField()
    precio_venta = models.PositiveIntegerField()
    monto_neto = models.PositiveIntegerField()
    monto_iva = models.PositiveIntegerField()
    monto_total = models.PositiveIntegerField()
    def __str__(self):
        return f'{self.producto}x{self.cantidad}'
