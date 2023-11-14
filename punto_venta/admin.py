from django.contrib import admin
from .models import Cliente, Producto, Servicio, Proveedor, Cita, Boleta, Factura, Empleado

admin.site.register(Cliente)
admin.site.register(Empleado)
admin.site.register(Producto)
admin.site.register(Servicio)
admin.site.register(Cita)
admin.site.register(Boleta)
admin.site.register(Factura)
admin.site.register(Proveedor)
