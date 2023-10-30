from django.contrib.auth.models import User
from django.db import models


class UsuarioEmpleado(models.Model):
    usuario = models.OneToOneField(User, on_delete=models.CASCADE)
    primer_nombre = models.CharField(max_length=20)
    segundo_nombre = models.CharField(max_length=20)
    primer_apellido = models.CharField(max_length=20)
    segundo_apellido = models.CharField(max_length=20)
    fecha_nacimiento = models.DateField()
    correo_electronico = models.EmailField(max_length=30)
    contrasena = models.CharField(max_length=20)
    documento_identificador = models.CharField(max_length=30)
    fecha_contratacion = models.DateField()


class UsuarioJefe(models.Model):
    usuario = models.OneToOneField(User, on_delete=models.CASCADE)
    primer_nombre = models.CharField(max_length=20)
    segundo_nombre = models.CharField(max_length=20)
    primer_apellido = models.CharField(max_length=20)
    segundo_apellido = models.CharField(max_length=20)
    fecha_nacimiento = models.DateField()
    correo_electronico = models.EmailField(max_length=30)
    contrasena = models.CharField(max_length=20)
    documento_identificador = models.CharField(max_length=30)
    fecha_contratacion = models.DateField()


class Cliente(models.Model):
    usuario = models.OneToOneField(User, on_delete=models.CASCADE)
    primer_nombre = models.CharField(max_length=20)
    segundo_nombre = models.CharField(max_length=20, blank=True, null=True)
    primer_apellido = models.CharField(max_length=20)
    segundo_apellido = models.CharField(max_length=20, blank=True, null=True)
    fecha_nacimiento = models.DateField()


class Producto(models.Model):
    nombre = models.CharField(max_length=30)
    categoria = models.CharField(max_length=20)
    precio_compra = models.DecimalField(max_digits=10, decimal_places=2)
    precio_venta = models.DecimalField(max_digits=10, decimal_places=2)
    stock = models.PositiveIntegerField()


class Servicio(models.Model):
    nombre = models.CharField(max_length=30)
    descripcion = models.CharField(max_length=50)
    precio = models.DecimalField(max_digits=10, decimal_places=2)


class Proveedor(models.Model):
    nombre = models.CharField(max_length=40)
    direccion = models.CharField(max_length=40)
    rut_empresa = models.CharField(max_length=30)
    telefono_celular = models.CharField(max_length=30)
    email = models.EmailField(max_length=40)


class Cita(models.Model):
    fecha = models.DateField()
    hora = models.TimeField()
    servicio = models.ForeignKey(Servicio, on_delete=models.CASCADE)
    cliente = models.ForeignKey(Cliente, on_delete=models.CASCADE)


class Boleta(models.Model):
    TIPO_DE_PAGO_CHOICES = (
        ('Efectivo', 'Efectivo'),
        ('Tarjeta de crédito', 'Tarjeta de crédito'),
        ('Transferencia bancaria', 'Transferencia bancaria'),
    )

    tipo_de_pago = models.CharField(max_length=25, choices=TIPO_DE_PAGO_CHOICES)
    productos = models.ManyToManyField(Producto)
    servicios = models.ManyToManyField(Servicio)
    precio_total = models.DecimalField(max_digits=10, decimal_places=2)
    fecha_y_hora = models.DateTimeField(auto_now_add=True)
    usuario_jefe = models.ForeignKey(User, on_delete=models.CASCADE, related_name='boletas_jefe')
    usuario_empleado = models.ForeignKey(User, on_delete=models.CASCADE, related_name='boletas_empleado')

    class Meta:
        permissions = [
            ("can_add_boleta", "Puede agregar boletas"),
            ("can_delete_boleta", "Puede eliminar boletas"),
            ("can_update_boleta", "Puede actualizar boletas"),
        ]


class Factura(models.Model):
    TIPO_DE_PAGO_CHOICES = (
        ('Efectivo', 'Efectivo'),
        ('Tarjeta de crédito', 'Tarjeta de crédito'),
        ('Transferencia bancaria', 'Transferencia bancaria'),
    )

    numero_factura = models.PositiveIntegerField()
    tipo_de_pago = models.CharField(max_length=25, choices=TIPO_DE_PAGO_CHOICES)
    productos = models.ManyToManyField(Producto)
    precio_total = models.DecimalField(max_digits=10, decimal_places=2)
    fecha_y_hora = models.DateTimeField(auto_now_add=True)
    usuario_jefe = models.ForeignKey(User, on_delete=models.CASCADE, related_name='facturas_jefe')
    usuario_empleado = models.ForeignKey(User, on_delete=models.CASCADE, related_name='facturas_empleado')

    class Meta:
        permissions = [
            ("can_add_factura", "Puede agregar facturas"),
            ("can_delete_factura", "Puede eliminar facturas"),
            ("can_update_factura", "Puede actualizar facturas"),
        ]
