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
    path('', TemplateView.as_view(template_name='cliente/home.html'), name='home'),
    path('signin/', punto_venta.ClienteSignin, name='signin'),
    path('cita/agendar', punto_venta.ClienteCitaAgendar, name='cliente_cita_agendar'),
    path('cita/calendario', punto_venta.calendario, name='calendario'),
    path('servicios/', punto_venta.ServicioCardView.as_view(), name='servicios_tarjeta'),
    path('productos/', punto_venta.ProductoCardView.as_view(), name='productos_tarjeta'),
    path('servicio/<int:pk>/', punto_venta.ServicioDetailView.as_view(), name='servicio_detalle'),
    path('producto/<int:pk>/', punto_venta.ProductoDetailView.as_view(), name='producto_detalle'),
    path('citas/', punto_venta.CitaListView.as_view(), name='citas'),
    path('cita/<int:pk>/', punto_venta.CitaDetailView.as_view(), name='cita_detalle'),
    #path('citas/', login_required(punto_venta.CitaListView.as_view()), name='citas'),
    #path('cita/<int:pk>/', login_required(punto_venta.CitaDetailView.as_view()), name='cita_detalle'),
    path('clientes/', punto_venta.ClienteListView.as_view(), name='clientes'),
    path('cliente/<int:pk>/', punto_venta.ClienteDetailView.as_view(), name='cliente_detalle'),
    path('cliente/crear/', punto_venta.ClienteCreateView.as_view(), name='cliente_crear'),
]

urlpatterns += static(settings.STATIC_URL, document_root=settings.STATIC_ROOT)