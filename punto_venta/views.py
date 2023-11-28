from django.http import HttpRequest
from django.shortcuts import render, redirect
from punto_venta import forms, models

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
# A continuación ofrezco un ejemplo de como deverían ser implementados estos 
#
#    # verifica si el usuario esta identificado (si no lo esta, redirije a URL_LOGIN)
#    # verifica si el usuario tiene permiso 'punto_venta.view_cita' (si no lo tiene reenvia a URL_HOME)
#    def dispatch(self, request:HttpRequest, *args, **kwargs):
#        user = request.user
#        if(not user.is_authenticated): return redirect(URL_LOGIN)
#        if(not user.has_perm('punto_venta.view_cita')): return redirect(URL_HOME)
#        return super().dispatch(request, *args, **kwargs)


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
    template_name = "tables/view/many_list.html"
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
        if(not user.is_authenticated): return redirect(URL_LOGIN)
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
    template_name = "cliente/cita.html"
    permission_required = 'punto_venta.cita.can_view_cita'

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
        if(not user.is_authenticated): return redirect(URL_LOGIN)
        if(not user.has_perm('punto_venta.view_cita')): return redirect(URL_HOME)
        return super().dispatch(request, *args, **kwargs)
