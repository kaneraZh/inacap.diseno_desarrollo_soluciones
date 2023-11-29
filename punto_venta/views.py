from django.http import HttpRequest
from django.shortcuts import render, redirect
from punto_venta import forms, models
from .models import Cita, Empleado
from datetime import date
#from django.views.generic.detail import DetailView

# URLs genericas para redirigir al usuario
URL_LOGIN = '/accounts/login/'
URL_SIGNIN = '/signin/'
URL_HOME = '/'

# MODELO PARA VERIFICAR PERMISOS DE USUARIOS:
# Si una clase necesita permisos se le añadirá un dispatch modificado donde,
# antes de devolver el sitio solicitado, verifica permisos (o cualquier
# otra condicion) que se consideren necesarias, revisar las siguientes paginas
# PERMISO DE USUARIO (singular) : https://docs.djangoproject.com/en/4.2/ref/contrib/auth/#django.contrib.auth.models.User.has_perm
# PERMISOS DE USUARIO (plural) : https://docs.djangoproject.com/en/4.2/ref/contrib/auth/#django.contrib.auth.models.User.has_perms
# IDENTIFICACION DE USUARIO :  https://docs.djangoproject.com/en/4.2/ref/contrib/auth/#django.contrib.auth.models.User.is_authenticated
# 
# f'{URL_LOGIN}?next={request.path}') es un ejemplo para que, al redirigir al
# login, la siguiente pagina que se visitara será le de request path, que suele
# mostrar la pagina desde donde se redirige, por ejemplo:
# si en citas, reenvío al login, luego del login, me llevaría a "request.path"
# que en el caso de "citas" request path sería /citas/
#
# A continuación ofrezco un ejemplo de como deverían ser implementados estos 
################################################################################################### 
#
#    def dispatch(self, request:HttpRequest, *args, **kwargs):
#        user = request.user
#
#        # verifica si el usuario esta identificado (si no lo esta, redirije a URL_LOGIN)
#        if(not user.is_authenticated): return redirect(f'{URL_LOGIN}?next={request.path}')
#
#        # verifica si el usuario tiene permiso 'punto_venta.view_cita' (si no lo tiene reenvia a URL_HOME)
#        if(not user.has_perm('punto_venta.view_cita')): return redirect(URL_HOME)
#        return super().dispatch(request, *args, **kwargs)
#
###################################################################################################


def ClienteSignin(request:HttpRequest):
    if(request.method == 'POST'):
        form = forms.ClienteCrearForm(request.POST)
        if(form.is_valid()):
            form.save()
            return redirect('/accounts/login')
    else:
        form = forms.ClienteCrearForm()
    context = {'form':form}
    return render(request, 'cliente/signin.html', context)
def ClienteCitaAgendar(request:HttpRequest):
    if(not request.user.is_authenticated):
        return redirect('/accounts/login')
    
    if(not models.Cliente.objects.filter(username=request.user.username)):
        return redirect('/')
    
    if(request.method == 'POST'):
        form = forms.CitaClienteForm(request.POST)
        if(form.is_valid()):
            cita:models.Cita = form.save(False)
            cita.cliente = models.Cliente.objects.get(username=request.user.username)
            cita.save()
            return redirect('/')
    else:
        form = forms.CitaClienteForm()
    context = {'form':form}
    return render(request, 'cliente/cita/agendar.html', context)

def calendario(request):
    # Obtener las citas futuras
    citas = Cita.objects.filter(fecha__gte=date.today()).order_by('fecha', 'hora')

    context = {
        'citas': citas,
    }

    return render(request, 'cliente/cita/calendario.html', context)

from django.views.generic.list import ListView
class ProductoCardView(ListView):
    model = models.Producto
    paginate_by = 8
    template_name = "tables/view/many_cards.html"
    def get_context_data(self, **kwargs):
        context = super().get_context_data(**kwargs)
        context["detalle"] = 'producto_detalle'
        context["title"] = 'productos'
        return context
class ServicioCardView(ListView):
    model = models.Servicio
    paginate_by = 8
    template_name = "tables/view/many_cards.html"
    def get_context_data(self, **kwargs):
        context = super().get_context_data(**kwargs)
        context["detalle"] = 'servicio_detalle'
        context["title"] = 'servicios'
        return context
class CitaListView(ListView):
    model = models.Cita
    paginate_by = 6
    template_name = "cliente/cita/calendario.html"
    # filtra los datos devueltos 
    # en este caso, para que solo quien hizo la cita
    # pueda verla (y no cualquier otro cliente)
    def get_queryset(self):
        from datetime import date
        queryset = super().get_queryset()
        queryset = queryset.filter(fecha__gte=date.today()).filter(cliente=self.request.user.persona.cliente)
        return queryset
    
    # agrega al diccionario de contexto para el HTML
    # en este caso, la direccion de redireccion de detalle
    # (cita detalle) y el titulo del sitio (citas)
    def get_context_data(self, **kwargs):
        context = super().get_context_data(**kwargs)
        context["detalle"] = 'cita_detalle'
        context["title"] = 'citas'
        return context
    
    # verifica si el usuario esta identificado (si no lo esta, redirije a URL_LOGIN)
    # verifica si el usuario tiene permiso 'punto_venta.view_cita' (si no lo tiene reenvia a URL_HOME)
    def dispatch(self, request:HttpRequest, *args, **kwargs):
        user = request.user
        if(not user.is_authenticated): return redirect(f'{URL_LOGIN}?next={request.path}')
        if(not user.has_perm('punto_venta.view_cita')): return redirect(URL_HOME)
        return super().dispatch(request, *args, **kwargs)

from django.views.generic.detail import DetailView
class ServicioDetailView(DetailView):
    model = models.Servicio
    template_name = "cliente/servicio.html"
class ProductoDetailView(DetailView):
    model = models.Producto
    template_name = "cliente/producto.html"
class CitaDetailView(DetailView):
    model = models.Cita
    template_name = "tables/view_single.html"
    # filtra los datos devueltos 
    # en este caso, para que solo quien hizo la cita
    # pueda verla (y no cualquier otro cliente)
    def get_queryset(self):
        from datetime import date
        queryset = super().get_queryset()
        queryset = queryset.filter(fecha__gte=date.today()).filter(cliente=self.request.user.persona.cliente)
        return queryset
    # agrega al diccionario de contexto para el HTML
    # en este caso el titulo del sitio (citas)
    def get_context_data(self, **kwargs):
        context = super().get_context_data(**kwargs)
        context["title"] = 'cita'
        return context
    # verifica si el usuario esta identificado (si no lo esta, redirije a URL_LOGIN)
    # verifica si el usuario tiene permiso 'punto_venta.view_cita' (si no lo tiene reenvia a URL_HOME)
    def dispatch(self, request:HttpRequest, *args, **kwargs):
        user = request.user
        if(not user.is_authenticated): return redirect(f'{URL_LOGIN}?next=/citas/')
        if(not user.has_perm('punto_venta.view_cita')): return redirect(URL_HOME)
        return super().dispatch(request, *args, **kwargs)

from django.views.generic.edit import CreateView, FormView
# CRUDS CLIENTES
class ClienteCreateView(CreateView):
    from django.forms import CharField
    model = models.Cliente
    template_name = "tables/create.html"
    password_confirm = CharField(required=True)
    fields = [
        'username',
        'password',
        'password_confirm',
        'first_name',
        'last_name',
        'email',
        'fecha_nacimiento',
        'direccion',
    ]
    
    def dispatch(self, request:HttpRequest, *args, **kwargs):
        user = request.user

        # verifica si el usuario esta identificado (si no lo esta, redirije a URL_LOGIN)
        if(not user.is_authenticated): return redirect(f'{URL_LOGIN}?next={request.path}')

        # verifica si el usuario tiene permiso 'punto_venta.view_cita' (si no lo tiene reenvia a URL_HOME)
        if(not user.has_perm('punto_venta.create_cliente')): return redirect(URL_HOME)

        return super().dispatch(request, *args, **kwargs)
class ClienteListView(ListView):
    model = models.Cliente
    template_name = "admin/clientes.html"
    paginate_by = 10
    def get_context_data(self, **kwargs):
        context = super().get_context_data(**kwargs)
        context["title"] = 'clientes'
        context["detalle"] = 'cliente_detalle'
        return context
    def dispatch(self, request:HttpRequest, *args, **kwargs):
        user = request.user

        # verifica si el usuario esta identificado (si no lo esta, redirije a URL_LOGIN)
        if(not user.is_authenticated): return redirect(f'{URL_LOGIN}?next={request.path}')

        # verifica si el usuario tiene permiso 'punto_venta.view_cita' (si no lo tiene reenvia a URL_HOME)
        if(not user.has_perm('punto_venta.view_cliente')): return redirect(URL_HOME)

        return super().dispatch(request, *args, **kwargs)
class ClienteDetailView(DetailView):
    model = models.Cliente
    template_name = "admin/cliente_detalle.html"
    def get_context_data(self, **kwargs):
        context = super().get_context_data(**kwargs)
        context["title"] = 'cliente'
        context["puede_borrar"] = self.request.user.has_perm('punto_venta.delete_cliente')
        return context
    def dispatch(self, request:HttpRequest, *args, **kwargs):
        user = request.user

        # verifica si el usuario esta identificado (si no lo esta, redirije a URL_LOGIN)
        if(not user.is_authenticated): return redirect(f'{URL_LOGIN}?next={request.path}')

        # verifica si el usuario tiene permiso 'punto_venta.view_cita' (si no lo tiene reenvia a URL_HOME)
        if(not user.has_perm('punto_venta.view_cliente')): return redirect(URL_HOME)

        return super().dispatch(request, *args, **kwargs)
