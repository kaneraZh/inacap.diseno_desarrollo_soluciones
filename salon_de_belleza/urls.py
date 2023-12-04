"""
URL configuration for salon_de_belleza project.

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/4.2/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
from django.contrib import admin
from django.urls import path, include
from django.views.generic.base import TemplateView
import punto_venta.views as punto_venta
from django.conf import settings
from django.conf.urls.static import static

#from django.contrib.auth.decorators import login_required


urlpatterns = [
    path('admin/', admin.site.urls),
    path('accounts/', include('django.contrib.auth.urls')),
    path('accounts/profile/', TemplateView.as_view(template_name='cliente/home.html'), name='home2'),
    path('', TemplateView.as_view(template_name='cliente/home.html'), name='home'),
    path('signin/', punto_venta.ClienteSignin, name='signin'),
    path('cita/agendar', punto_venta.ClienteCitaAgendar, name='cliente_cita_agendar'),
#    path('cita/calendario', punto_venta.calendario, name='calendario'),
    path('cita/calendario', punto_venta.CitaListViewCliente.as_view(), name='cita_calendario'),

    path('servicios/lista', punto_venta.ServicioListView.as_view(), name='servicios'),
    path('servicios/', punto_venta.ServicioCardView.as_view(), name='servicios_tarjeta'),
    path('servicio/<int:pk>/', punto_venta.ServicioDetailView.as_view(), name='servicio_detalle'),
    path('servicio/crear/', punto_venta.ServicioCreateView.as_view(), name='servicio_crear'),
    path('servicio/actualizar/<int:pk>/', punto_venta.ServicioUpdateView.as_view(), name='servicio_actualizar'),
    path('servicio/borrar/<int:pk>/', punto_venta.ServicioDeleteView.as_view(), name='servicio_borrar'),

    path('productos/lista', punto_venta.ProductoListView.as_view(), name='productos'),
    path('productos/', punto_venta.ProductoCardView.as_view(), name='productos_tarjeta'),
    path('producto/<int:pk>/', punto_venta.ProductoDetailView.as_view(), name='producto_detalle'),
    path('producto/crear/', punto_venta.ProductoCreateView.as_view(), name='producto_crear'),
    path('producto/actualizar/<int:pk>/', punto_venta.ProductoUpdateView.as_view(), name='producto_actualizar'),
    path('producto/borrar/<int:pk>/', punto_venta.ProductoDeleteView.as_view(), name='producto_borrar'),

    path('citas/', punto_venta.CitaListView.as_view(), name='citas'),
    path('cita/<int:pk>/', punto_venta.CitaDetailView.as_view(), name='cita_detalle'),
    path('cita/crear/', punto_venta.CitaCreateView.as_view(), name='cita_crear'),
    path('cita/actualizar/<int:pk>/', punto_venta.CitaUpdateView.as_view(), name='cita_actualizar'),
    path('cita/borrar/<int:pk>/', punto_venta.CitaDeleteView.as_view(), name='cita_borrar'),
    
    path('clientes/', punto_venta.ClienteListView.as_view(), name='clientes'),
    path('cliente/<int:pk>/', punto_venta.ClienteDetailView.as_view(), name='cliente_detalle'),
    path('cliente/crear/', punto_venta.ClienteCreateView.as_view(), name='cliente_crear'),
    path('cliente/actualizar/<int:pk>/', punto_venta.ClienteUpdateView.as_view(), name='cliente_actualizar'),
    path('cliente/borrar/<int:pk>/', punto_venta.ClienteDeleteView.as_view(), name='cliente_borrar'),
    
    path('empleados/', punto_venta.EmpleadoListView.as_view(), name='empleados'),
    path('empleado/<int:pk>/', punto_venta.EmpleadoDetailView.as_view(), name='empleado_detalle'),
    path('empleado/crear/', punto_venta.EmpleadoCreateView.as_view(), name='empleado_crear'),
    path('empleado/actualizar/<int:pk>/', punto_venta.EmpleadoUpdateView.as_view(), name='empleado_actualizar'),
    path('empleado/borrar/<int:pk>/', punto_venta.EmpleadoDeleteView.as_view(), name='empleado_borrar'),

    path('boletas/', punto_venta.BoletaListView.as_view(), name='boletas'),
    path('boleta/<int:pk>/', punto_venta.BoletaDetailView.as_view(), name='boleta_detalle'),
    #path('boleta/crear/', punto_venta.BoletaCrear, name='boleta_crear'),
    #path('boleta/actualizar/<int:pk>/', punto_venta.BoletaActualizar, name='factura_actualizar'),
    path('boleta/borrar/<int:pk>/', punto_venta.BoletaDeleteView.as_view(), name='boleta_borrar'),
    
    path('proveedores/', punto_venta.ProveedorListView.as_view(), name='proveedores'),
    path('proveedor/<int:pk>/', punto_venta.ProveedorDetailView.as_view(), name='proveedor_detalle'),
    path('proveedor/crear/', punto_venta.ProveedorCreateView.as_view(), name='proveedor_crear'),
    path('proveedor/actualizar/<int:pk>/', punto_venta.ProveedorUpdateView.as_view(), name='proveedor_actualizar'),
    path('proveedor/borrar/<int:pk>/', punto_venta.ProveedorDeleteView.as_view(), name='proveedor_borrar'),

    path('facturas/', punto_venta.FacturaListView.as_view(), name='facturas'),
    path('factura/<int:pk>/', punto_venta.FacturaDetailView.as_view(), name='factura_detalle'),
    path('factura/crear/', punto_venta.FacturaCreate, name='factura_crear'),
    #path('factura/actualizar/<int:pk>/', punto_venta.FacturaActualizar, name='factura_actualizar'),
    path('factura/borrar/<int:pk>/', punto_venta.FacturaDeleteView.as_view(), name='factura_borrar'),
]

urlpatterns += static(settings.STATIC_URL, document_root=settings.STATIC_ROOT)

if settings.DEBUG:
    urlpatterns += static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)



