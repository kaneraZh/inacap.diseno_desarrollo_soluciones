from django.contrib.auth.models import User
from django.db import models
from django.urls import reverse

class Persona(User):
    #usuario = models.OneToOneField(User, on_delete=models.CASCADE)
    primer_nombre = models.CharField(max_length=20, null=True)
    primer_apellido = models.CharField(max_length=20, null=True)
    correo_electronico = models.EmailField(max_length=30, null=False)
    contrasena = models.CharField(max_length=20, null=True, verbose_name='contraseña')
    fecha_nacimiento = models.DateField()
    direccion = models.CharField(max_length=20, null=True)
    #def save(self, force_insert=False, force_update=False, using=None, update_fields=None):
    def save(
        self,
        force_insert=False, 
        force_update=False, 
        using=None, 
        update_fields=None,
    ):
        self.username = self.correo_electronico
        self.first_name = self.primer_nombre
        self.last_name = self.primer_apellido
        self.email = self.correo_electronico
        self.set_password(self.contrasena)
        self.contrasena = self.password
        return super().save(
            force_insert=force_insert, 
            force_update=force_update, 
            using=using, 
            update_fields=update_fields, 
        )
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
    def get_absolute_url(self):
        return reverse("proveedor_detalle", kwargs={"pk": self.id})
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
    def get_absolute_url(self):
        return reverse("producto_detalle", kwargs={"pk": self.id})
class Servicio(models.Model):
    nombre = models.CharField(max_length=30)
    descripcion = models.CharField(max_length=50)
    precio = models.PositiveIntegerField()
    tiempo = models.DurationField()
    empleados = models.ManyToManyField(Empleado, null=True)
    def __str__(self) -> str:
        return f'{self.nombre}, {self.precio}, {self.tiempo}'
    def get_absolute_url(self):
        return reverse("servicio_detalle", kwargs={"pk": self.id})

class Cita(models.Model):
    fecha = models.DateField()
    hora = models.TimeField(auto_now=False, auto_now_add=False)
    servicio = models.ForeignKey(Servicio, on_delete=models.CASCADE)
    cliente = models.ForeignKey(Cliente, on_delete=models.SET_NULL, null=True)
    def __str__(self):
        return f'{self.fecha}, {self.hora}, {self.servicio}, {self.cliente}'
    def get_absolute_url(self):
        return reverse("cita_detalle", kwargs={"pk": self.id})

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
    monto_total = models.PositiveIntegerField()
    monto_neto = models.PositiveIntegerField()
    monto_iva = models.PositiveIntegerField()
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
        for item in Boleta_producto.objects.all().filter(boleta=self):
            contenidos.append(f'{item}')
        for item in Boleta_servicio.objects.all().filter(boleta=self):
            contenidos.append(f'{item}')
        return f'{self.fecha_creacion}, {self.tipo_de_pago}, {self.monto_neto}, {self.cliente}, {", ".join(contenidos)}'
    def get_absolute_url(self):
        return reverse("boleta_detalle", kwargs={"pk": self.id})
    def save(self, force_insert=False, force_update=False, using=None, update_fields=None):
        self.monto_total = 0
        self.monto_neto = 0
        self.monto_iva = 0
        for item in Boleta_producto.objects.filter(boleta=self):
            self.monto_total += item.monto_total
            self.monto_neto += item.monto_neto
            self.monto_iva += item.monto_iva
        for item in Boleta_servicio.objects.filter(boleta=self):
            self.monto_total += item.monto_total
            self.monto_neto += item.monto_neto
            self.monto_iva += item.monto_iva
        super().save(force_insert,force_update,using,update_fields)
class Boleta_producto(Documento):
    boleta = models.ForeignKey(Boleta, on_delete=models.CASCADE)
    producto = models.ForeignKey(Producto, on_delete=models.SET_NULL, null=True)
    cantidad = models.PositiveIntegerField()
    monto_unidad = models.PositiveIntegerField()
    monto_neto = models.PositiveIntegerField()
    monto_iva = models.PositiveIntegerField()
    monto_total = models.PositiveIntegerField()
    def save(self, force_insert=False, force_update=False, using=None, update_fields=None):
        self.monto_unidad = self.producto.precio_venta
        self.monto_total = self.monto_unidad*self.cantidad
        self.monto_iva =  self.monto_total/6.2631 # valor para extraer 19% del 100% original (valor total es de 119%)
        self.monto_neto = self.monto_total-self.monto_iva
        super().save(force_insert,force_update,using,update_fields)
        self.boleta.save()
    def __str__(self):
        return f'{self.producto}x{self.cantidad}'
class Boleta_servicio(Documento):
    def __str__(self): return f"{self.servicio.nombre}x{self.cantidad}: {monto_total}"
    boleta = models.ForeignKey(Boleta, on_delete=models.CASCADE)
    servicio = models.ForeignKey(Servicio, on_delete=models.SET_NULL, null=True)
    cantidad = models.PositiveIntegerField()
    monto_unidad = models.PositiveIntegerField()
    monto_total = models.PositiveIntegerField()
    monto_iva = models.PositiveIntegerField()
    monto_neto = models.PositiveIntegerField()
    def save(self, force_insert=False, force_update=False, using=None, update_fields=None):
        self.monto_unidad = self.servicio.precio
        self.monto_total = self.monto_unidad*self.cantidad
        self.monto_iva =  self.monto_total/6.2631 # valor para extraer 19% del 100% original (valor total es de 119%)
        self.monto_neto = self.monto_total-self.monto_iva
        super().save(force_insert,force_update,using,update_fields)
        self.boleta.save()
    def __str__(self):
        return f'{self.servicio}x{self.cantidad}'

class Factura(Documento):
    TIPO_DE_PAGO_CHOICES = (
        ('Efectivo', 'Efectivo'),
        ('Tarjeta de crédito', 'Tarjeta de crédito'),
        ('Transferencia bancaria', 'Transferencia bancaria'),
    )
    numero_factura = models.PositiveIntegerField()
    tipo_de_pago = models.CharField(max_length=25, choices=TIPO_DE_PAGO_CHOICES)
    monto_total = models.PositiveIntegerField()
    monto_neto = models.PositiveIntegerField()
    monto_iva = models.PositiveIntegerField()
    empleado = models.ForeignKey(User, on_delete=models.CASCADE, related_name='facturas_jefe')
    proveedor = models.ForeignKey(Proveedor, on_delete=models.SET_NULL, null=True)
    class Meta:
        permissions = [
            ("can_add_factura", "Puede agregar facturas"),
            ("can_delete_factura", "Puede eliminar facturas"),
            ("can_update_factura", "Puede actualizar facturas"),
        ]
    def save(self, force_insert=False, force_update=False, using=None, update_fields=None):
        from random import randint
        self.numero_factura = randint(1, 99999999)
        self.monto_total = 0
        self.monto_neto = 0
        self.monto_iva = 0
        for item in Factura_detalle.objects.filter(factura=self):
            self.monto_total += item.monto_total
            self.monto_neto += item.monto_neto
            self.monto_iva += item.monto_iva
        super().save(force_insert,force_update,using,update_fields)
    def __str__(self):
        contenidos:list = []
        for con in Factura_detalle.objects.all().filter(factura=self):
            contenidos.append(f'{con}')
        return f'{self.fecha_creacion}, {self.tipo_de_pago}, {self.monto_neto}, {self.proveedor}, {", ".join(contenidos)}'
    def get_absolute_url(self):
        return reverse("factura_detalle", kwargs={"pk": self.id})
class Factura_detalle(Documento):
    numero_factura = models.IntegerField()
    factura = models.ForeignKey(Factura, on_delete=models.CASCADE)
    producto = models.ForeignKey(Producto, on_delete=models.SET_NULL, null=True)
    cantidad = models.PositiveIntegerField()
    monto_unidad = models.PositiveIntegerField()
    monto_neto = models.PositiveIntegerField()
    monto_iva = models.PositiveIntegerField()
    monto_total = models.PositiveIntegerField()
    def save(self, force_insert=False, force_update=False, using=None, update_fields=None):
        self.numero_factura = self.factura.numero_factura
        self.monto_unidad = self.monto_total/self.cantidad
        self.monto_iva =  self.monto_total*0.19
        self.monto_neto = self.monto_total-self.monto_iva
        super().save()
        self.factura.save()
    def __str__(self):
        return f'{self.producto}x{self.cantidad}'
