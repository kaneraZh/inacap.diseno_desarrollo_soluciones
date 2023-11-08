from django.contrib import admin
from .models import Cliente, Producto, Servicio, Proveedor, Cita, Boleta, Factura, UsuarioJefe, UsuarioEmpleado

admin.site.register(Cliente)
admin.site.register(Producto)
admin.site.register(Servicio)
admin.site.register(Proveedor)
admin.site.register(Cita)
admin.site.register(Boleta)
admin.site.register(Factura)
admin.site.register(UsuarioJefe)
admin.site.register(UsuarioEmpleado)
