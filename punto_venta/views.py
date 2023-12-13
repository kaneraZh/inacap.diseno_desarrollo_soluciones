from django.http import HttpRequest
from django.shortcuts import render, redirect, get_object_or_404
from punto_venta import forms, models
from .models import Cita, Empleado, Producto
from datetime import date
from .models import Producto, Servicio

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

from django.views.generic.list import ListView
class ProductoCardView(ListView):
    model = models.Producto
    paginate_by = 6
    template_name = "cliente/productos.html"
    def get_context_data(self, **kwargs):
        context = super().get_context_data(**kwargs)
        context["detalle"] = 'producto_detalle'
        context["title"] = 'productos'
        return context
class ServicioCardView(ListView):
    model = models.Servicio
    paginate_by = 10
    template_name = "cliente/servicios.html"
    def get_context_data(self, **kwargs):
        context = super().get_context_data(**kwargs)
        context["detalle"] = 's_detalle'
        context["title"] = 'servicios'
        return context
from datetime import date
class CitaListViewCliente(ListView):
    model = models.Cita
    paginate_by = 6
    template_name = "cliente/cita/calendario.html"
    # filtra los datos devueltos 
    # en este caso, para que solo quien hizo la cita
    # pueda verla (y no cualquier otro cliente)
    def get_queryset(self):
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
class CitaDetailViewCliente(DetailView):
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

from django.views.generic.edit import CreateView, FormView, UpdateView, DeleteView
# CRUDS CLIENTES
def ClienteCreate(request:HttpRequest):
    user = request.user
    if(not user.is_authenticated): return redirect(f'{URL_LOGIN}?next={request.path}')
    if(not user.has_perm('punto_venta.add_cliente')): return redirect(URL_HOME)
    form = forms.ClienteCrearForm()
    if(request.method=='POST'):
        form = forms.ClienteCrearForm(request.POST)
        if(form.is_valid()):
            form.save()
            return redirect('home')
    return render(request, "tables/create.html", {'form':form})
class ClienteUpdateView(UpdateView):
    model = models.Cliente
    template_name = "tables/update.html"
    fields = [
        'primer_nombre',
        'primer_apellido',
        'correo_electronico',
        'fecha_nacimiento',
        'direccion',
    ]
    def get_context_data(self, **kwargs):
        context = super().get_context_data(**kwargs)
        context["title"] = 'actualizar cliente'
        return context
    def dispatch(self, request:HttpRequest, *args, **kwargs):
        user = request.user
        if(not user.is_authenticated): return redirect(f'{URL_LOGIN}?next={request.path}')
        if(not user.has_perm('punto_venta.change_cliente')): return redirect(URL_HOME)
        return super().dispatch(request, *args, **kwargs)
class ClienteDeleteView(DeleteView):
    model = models.Cliente
    template_name = "tables/delete.html"
    success_url = "/clientes/"
    def dispatch(self, request:HttpRequest, *args, **kwargs):
        user = request.user
        if(not user.is_authenticated): return redirect(f'{URL_LOGIN}?next={request.path}')
        if(not user.has_perm('punto_venta.delete_cliente')): return redirect(URL_HOME)
        return super().dispatch(request, *args, **kwargs)
class ClienteListView(ListView):
    model = models.Cliente
    template_name = "admin/clientes.html"
    paginate_by = 10
    def get_context_data(self, **kwargs):
        context = super().get_context_data(**kwargs)
        context["title"] = 'clientes'
        context["detalle"] = 'cliente_detalle'
        context["puede_borrar"] = self.request.user.has_perm('punto_venta.delete_cliente')
        context["puede_actualizar"] = self.request.user.has_perm('punto_venta.change_cliente')
        context["puede_crear"] = self.request.user.has_perm('punto_venta.add_cliente')
        context["borrar"] = "cliente_borrar"
        context["actualizar"] = "cliente_actualizar"
        context["crear"] = "cliente_crear"
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
        context["title"] = 'detalle cliente'
        context["puede_borrar"] = self.request.user.has_perm('punto_venta.delete_cliente')
        context["puede_actualizar"] = self.request.user.has_perm('punto_venta.change_cliente')
        context["borrar"] = "cliente_borrar"
        context["actualizar"] = "cliente_actualizar"
        context["lista"] = "clientes"
        return context
    def dispatch(self, request:HttpRequest, *args, **kwargs):
        user = request.user
        #if(not user.is_authenticated): return redirect(f'{URL_LOGIN}?next={request.path}')
        #if(not user.has_perm('punto_venta.view_cliente')): return redirect(URL_HOME)
        return super().dispatch(request, *args, **kwargs)

# cita
class CitaCreateView(CreateView):
    model = models.Cita
    template_name = "tables/create.html"
    fields = "__all__"
    def get_context_data(self, **kwargs):
        context = super().get_context_data(**kwargs)
        context["title"] = 'cita'
        context["detalle"] = 'cita_detalle'
        context["puede_borrar"] = self.request.user.has_perm('punto_venta.delete_cita')
        context["puede_actualizar"] = self.request.user.has_perm('punto_venta.change_cita')
        context["puede_crear"] = self.request.user.has_perm('punto_venta.add_cita')
        context["borrar"] = "cita_borrar"
        context["actualizar"] = "cita_actualizar"
        context["crear"] = "cita_crear"
        return context
    def dispatch(self, request:HttpRequest, *args, **kwargs):
        user = request.user
        if(not user.is_authenticated): return redirect(f'{URL_LOGIN}?next={request.path}')
        if(not user.has_perm('punto_venta.add_cita')): return redirect(URL_HOME)
        return super().dispatch(request, *args, **kwargs)
class CitaUpdateView(UpdateView):
    model = models.Cita
    template_name = ".html"
    fields = '__all__'
    def get_context_data(self, **kwargs):
        context = super().get_context_data(**kwargs)
        context["title"] = 'actualizar cita'
        return context
    def dispatch(self, request:HttpRequest, *args, **kwargs):
        user = request.user
        if(not user.is_authenticated): return redirect(f'{URL_LOGIN}?next={request.path}')
        if(not user.has_perm('punto_venta.change_cita')): return redirect(URL_HOME)
        return super().dispatch(request, *args, **kwargs)
class CitaDeleteView(DeleteView):
    model = models.Cita
    template_name = "tables/delete.html"
    def dispatch(self, request:HttpRequest, *args, **kwargs):
        user = request.user
        if(not user.is_authenticated): return redirect(f'{URL_LOGIN}?next={request.path}')
        if(not user.has_perm('punto_venta.delete_cita')): return redirect(URL_HOME)
        return super().dispatch(request, *args, **kwargs)
class CitaListView(ListView):
    model = models.Cita
    template_name = "tables/view_multy.html"
    def get_context_data(self, **kwargs):
        context = super().get_context_data(**kwargs)
        context["title"] = 'citas'
        context["detalle"] = 'cita_detalle'
        context["puede_borrar"] = self.request.user.has_perm('punto_venta.delete_cita')
        context["puede_actualizar"] = self.request.user.has_perm('punto_venta.change_cita')
        context["puede_crear"] = self.request.user.has_perm('punto_venta.add_cita')
        context["borrar"] = "cita_borrar"
        context["actualizar"] = "cita_actualizar"
        context["crear"] = "cita_crear"
        return context
    def dispatch(self, request:HttpRequest, *args, **kwargs):
        user = request.user
        if(not user.is_authenticated): return redirect(f'{URL_LOGIN}?next={request.path}')
        if(not user.has_perm('punto_venta.view_cita')): return redirect(URL_HOME)
        return super().dispatch(request, *args, **kwargs)
class CitaDetailView(DetailView):
    model = models.Cita
    template_name = "tables/view_single.html"
    def get_context_data(self, **kwargs):
        context = super().get_context_data(**kwargs)
        context["title"] = 'detalle cita'
        context["puede_borrar"] = self.request.user.has_perm('punto_venta.delete_cita')
        context["puede_actualizar"] = self.request.user.has_perm('punto_venta.change_cita')
        context["borrar"] = "cita_borrar"
        context["actualizar"] = "cita_actualizar"
        context["lista"] = "citas"
        return context
    def dispatch(self, request:HttpRequest, *args, **kwargs):
        user = request.user
        if(not user.is_authenticated): return redirect(f'{URL_LOGIN}?next={request.path}')
        if(not user.has_perm('punto_venta.view_cita')): return redirect(URL_HOME)
        return super().dispatch(request, *args, **kwargs)

# servicio
class ServicioCreateView(CreateView):
    model = models.Servicio
    template_name = "servicio/crear.html"
    fields = [
        'nombre',
        'descripcion',
        'precio',
        'tiempo',
    ]
    def get_context_data(self, **kwargs):
        context = super().get_context_data(**kwargs)
        context["title"] = 'crear servicio'
        context["empleados"] = Empleado.objects.all()
        return context
    def dispatch(self, request, *args, **kwargs):
        user = request.user
        if(not user.is_authenticated): return redirect(f'{URL_LOGIN}?next={request.path}')
        if(not user.has_perm('punto_venta.add_servicio')): return redirect(URL_HOME)
        return super().dispatch(request, *args, **kwargs)
class ServicioUpdateView(UpdateView):
    model = models.Servicio
    template_name = "servicio/actualizar.html"
    fields = [
        'nombre',
        'descripcion',
        'precio',
        'tiempo',
    ]
    def get_context_data(self, **kwargs):
        context = super().get_context_data(**kwargs)
        context["title"] = 'actualizar servicio'
        return context
    def dispatch(self, request, *args, **kwargs):
        user = request.user
        if(not user.is_authenticated): return redirect(f'{URL_LOGIN}?next={request.path}')
        if(not user.has_perm('punto_venta.change_servicio')): return redirect(URL_HOME)
        return super().dispatch(request, *args, **kwargs)
class ServicioDeleteView(DeleteView):
    model = models.Servicio
    template_name = "servicio/eliminar.html"
    def get_success_url(self):
        return reverse('servicios')
    def dispatch(self, request:HttpRequest, *args, **kwargs):
        user = request.user
        if(not user.is_authenticated): return redirect(f'{URL_LOGIN}?next={request.path}')
        if(not user.has_perm('punto_venta.delete_servicio')): return redirect(URL_HOME)
        return super().dispatch(request, *args, **kwargs)
class ServicioListView(ListView):
    model = models.Servicio
    template_name = "servicio/lista.html"
    def get_context_data(self, **kwargs):
        context = super().get_context_data(**kwargs)
        context["title"] = 'servicios'
        context["detalle"] = 'servicio_detalle'
        context["puede_borrar"] = self.request.user.has_perm('punto_venta.delete_servicio')
        context["puede_actualizar"] = self.request.user.has_perm('punto_venta.change_servicio')
        context["puede_crear"] = self.request.user.has_perm('punto_venta.add_servicio')
        context["borrar"] = "servicio_borrar"
        context["actualizar"] = "servicio_actualizar"
        context["crear"] = "servicio_crear"
    # Obtener la lista de empleados y agregarla al contexto
        context["empleados"] = models.Empleado.objects.all()
        return context
    def dispatch(self, request:HttpRequest, *args, **kwargs):
        user = request.user
        if(not user.is_authenticated): return redirect(f'{URL_LOGIN}?next={request.path}')
        if(not user.has_perm('punto_venta.view_servicio')): return redirect(URL_HOME)
        return super().dispatch(request, *args, **kwargs)
class ServicioDetailView(DetailView):
    model = models.Servicio
    template_name = "servicio/detalle.html"
    def get_context_data(self, **kwargs):
        context = super().get_context_data(**kwargs)
        context["title"] = 'servicio'
        context["puede_borrar"] = self.request.user.has_perm('punto_venta.delete_servicio')
        context["puede_actualizar"] = self.request.user.has_perm('punto_venta.change_servicio')
        context["borrar"] = "servicio_borrar"
        context["actualizar"] = "servicio_actualizar"
        context["lista"] = "servicios"
        return context
    def dispatch(self, request:HttpRequest, *args, **kwargs):
        user = request.user
        #if(not user.is_authenticated): return redirect(f'{URL_LOGIN}?next={request.path}')
        #if(not user.has_perm('punto_venta.view_servicio')): return redirect(URL_HOME)
        return super().dispatch(request, *args, **kwargs)

# producto
class ProductoCreateView(CreateView):
    model = Producto
    template_name = "productos/crear.html"
    fields = '__all__'
    def get_context_data(self, **kwargs):
        context = super().get_context_data(**kwargs)
        context["title"] = 'crear producto'
        context["proveedores"] = models.Proveedor.objects.all()
        return context
    def dispatch(self, request, *args, **kwargs):
        user = request.user
        if(not user.is_authenticated): return redirect(f'{URL_LOGIN}?next={request.path}')
        if(not user.has_perm('punto_venta.add_producto')): return redirect(URL_HOME)
        return super().dispatch(request, *args, **kwargs)
class ProductoUpdateView(UpdateView):
    model = models.Producto
    template_name = "productos/actualizar.html"
    fields = '__all__'
    def get_context_data(self, **kwargs):
        context = super().get_context_data(**kwargs)
        context["title"] = 'actualizar producto'
        context["proveedores"] = models.Proveedor.objects.all()
        return context
    def dispatch(self, request, *args, **kwargs):
        user = request.user
        if(not user.is_authenticated): return redirect(f'{URL_LOGIN}?next={request.path}')
        if(not user.has_perm('punto_venta.change_producto')): return redirect(URL_HOME)
        return super().dispatch(request, *args, **kwargs)
class ProductoDeleteView(DeleteView):
    model = models.Producto
    template_name = "productos/eliminar.html"
    def get_success_url(self):
        return reverse('productos')  
    def dispatch(self, request: HttpRequest, *args, **kwargs):
        user = request.user
        if not user.is_authenticated:
            return redirect(f'{URL_LOGIN}?next={request.path}')
        if not user.has_perm('punto_venta.delete_servicio'):
            return redirect(URL_HOME)
        return super().dispatch(request, *args, **kwargs)
class ProductoListView(ListView):
    model = models.Producto
    template_name = "productos/lista.html"
    def get_context_data(self, **kwargs):
        context = super().get_context_data(**kwargs)
        context["title"] = 'productos'
        context["detalle"] = 'producto_detalle'
        context["puede_borrar"] = self.request.user.has_perm('punto_venta.delete_producto')
        context["puede_actualizar"] = self.request.user.has_perm('punto_venta.change_producto')
        context["puede_crear"] = self.request.user.has_perm('punto_venta.add_producto')
        context["borrar"] = "producto_borrar"
        context["actualizar"] = "producto_actualizar"
        context["crear"] = "producto_crear"
        return context
    def dispatch(self, request:HttpRequest, *args, **kwargs):
        user = request.user
        if(not user.is_authenticated): return redirect(f'{URL_LOGIN}?next={request.path}')
        if(not user.has_perm('punto_venta.view_producto')): return redirect(URL_HOME)
        return super().dispatch(request, *args, **kwargs)
class ProductoDetailView(DetailView):
    model = models.Producto
    template_name = "cliente/producto.html"
    def get_context_data(self, **kwargs):
        context = super().get_context_data(**kwargs)
        context["title"] = 'producto'
        context["puede_borrar"] = self.request.user.has_perm('punto_venta.delete_producto')
        context["puede_actualizar"] = self.request.user.has_perm('punto_venta.change_producto')
        context["borrar"] = "producto_borrar"
        context["actualizar"] = "producto_actualizar"
        context["lista"] = "productos"
        return context
    def dispatch(self, request:HttpRequest, *args, **kwargs):
        user = request.user
        #if(not user.is_authenticated): return redirect(f'{URL_LOGIN}?next={request.path}')
        #if(not user.has_perm('punto_venta.view_producto')): return redirect(URL_HOME)
        return super().dispatch(request, *args, **kwargs)

# boleta
def BoletaCreate(request:HttpRequest):
    user = request.user
    if(not user.is_authenticated): return redirect(f'{URL_LOGIN}?next={request.path}')
    if(not user.has_perm('punto_venta.add_boleta')): return redirect(URL_HOME)
    template_name = 'boleta/form.html'
    if(request.method == 'GET'):
        form_main = forms.BoletaForm(request.GET or None)
        formset_producto = forms.BoletaProductoFormset(queryset=models.Boleta_producto.objects.none(), prefix='producto')
        formset_servicio = forms.BoletaServicioFormset(queryset=models.Boleta_servicio.objects.none(), prefix='servicio')
    elif(request.method == 'POST'):
        form_main = forms.BoletaForm(request.POST)
        formset_producto = forms.BoletaProductoFormset(request.POST, prefix='producto')
        formset_servicio = forms.BoletaServicioFormset(request.POST, prefix='servicio')
        if(
            form_main.is_valid() and 
            formset_producto.is_valid() and
            formset_servicio.is_valid() and
            hasattr(request.user, 'persona')
        ):
            boleta = form_main.save(False)
            boleta.empleado = request.user.persona.empleado
            boleta.save()
            for form in formset_producto:
                detalle = form.instance
                detalle.boleta = boleta
                detalle.save()
            for form in formset_servicio:
                detalle = form.instance
                detalle.boleta = boleta
                detalle.save()
            return redirect('boletas')
    context = {
        'form_main' : form_main,
        'formset_producto' : formset_producto,
        'formset_servicio' : formset_servicio,
    }
    return render(request, template_name, context)
def BoletaActualizar(request, pk:int):
    user = request.user
    if(not user.is_authenticated): return redirect(f'{URL_LOGIN}?next={request.path}')
    if(not user.has_perm('punto_venta.change_boleta')): return redirect(URL_HOME)
    template_name = 'boleta/form.html'
    if(request.method == 'GET'):
        boleta = models.Boleta.objects.get(id=pk)
        form_main = forms.BoletaForm(instance=boleta)
        formset_producto = forms.BoletaProductoFormset(queryset=models.Boleta_producto.objects.filter(boleta=boleta), prefix='producto')
        formset_servicio = forms.BoletaServicioFormset(queryset=models.Boleta_servicio.objects.filter(boleta=boleta), prefix='servicio')
    elif(request.method == 'POST'):
        form_main = forms.BoletaForm(request.POST)
        formset_producto = forms.BoletaProductoFormset(request.POST, prefix='producto')
        formset_servicio = forms.BoletaServicioFormset(request.POST, prefix='servicio')
        if(
            form_main.is_valid() and 
            formset_producto.is_valid() and
            formset_servicio.is_valid() and
            hasattr(request.user, 'persona')
        ):
            boleta = form_main.save(False)
            boleta.empleado = request.user.persona.empleado
            boleta.save()
            for form in formset_producto:
                detalle = form.instance
                detalle.boleta = boleta
                detalle.save()
            for form in formset_servicio:
                detalle = form.instance
                detalle.boleta = boleta
                detalle.save()
            return redirect('facturas')
    context = {
        'form_main' : form_main,
        'formset_producto' : formset_producto,
        'formset_servicio' : formset_servicio,
    }
    return render(request, template_name, context)
class BoletaDeleteView(DeleteView):
    model = models.Boleta
    template_name = "tables/delete.html"
    success_url = '/boletas/'
    def get_context_data(self, **kwargs):
        context = super().get_context_data(**kwargs)
        context["title"] = 'boletas'
        context["detalle"] = 'boleta_detalle'
        context["puede_crear"] = self.request.user.has_perm('punto_venta.view_boleta')
        context["lista"] = "boletas"
        return context
    def dispatch(self, request:HttpRequest, *args, **kwargs):
        user = request.user
        if(not user.is_authenticated): return redirect(f'{URL_LOGIN}?next={request.path}')
        if(not user.has_perm('punto_venta.delete_boleta')): return redirect(URL_HOME)
        return super().dispatch(request, *args, **kwargs)
class BoletaListView(ListView):
    model = models.Boleta
    template_name = "tables/view_multy.html"
    def get_context_data(self, **kwargs):
        context = super().get_context_data(**kwargs)
        context["title"] = 'boletas'
        context["detalle"] = 'boleta_detalle'
        context["puede_borrar"] = self.request.user.has_perm('punto_venta.delete_boleta')
        context["puede_actualizar"] = self.request.user.has_perm('punto_venta.change_boleta')
        context["puede_crear"] = self.request.user.has_perm('punto_venta.add_boleta')
        context["borrar"] = "boleta_borrar"
        context["actualizar"] = "boleta_actualizar"
        context["crear"] = "boleta_crear"
        return context
    def dispatch(self, request:HttpRequest, *args, **kwargs):
        user = request.user
        if(not user.is_authenticated): return redirect(f'{URL_LOGIN}?next={request.path}')
        if(not user.has_perm('punto_venta.view_boleta')): return redirect(URL_HOME)
        return super().dispatch(request, *args, **kwargs)
class BoletaDetailView(DetailView):
    model = models.Boleta
    template_name = "tables/view_single.html"
    def get_context_data(self, **kwargs):
        context = super().get_context_data(**kwargs)
        context["title"] = 'boleta'
        context["puede_borrar"] = self.request.user.has_perm('punto_venta.delete_boleta')
        context["puede_actualizar"] = self.request.user.has_perm('punto_venta.change_boleta')
        context["borrar"] = "boleta_borrar"
        context["actualizar"] = "boleta_actualizar"
        context["lista"] = "boletas"
        context["productos"] = models.Boleta_productos.objects.filter(boleta=context['object'])
        context["servicios"] = models.Boleta_servicios.objects.filter(boleta=context['object'])
        return context
    def dispatch(self, request:HttpRequest, *args, **kwargs):
        user = request.user
        if(not user.is_authenticated): return redirect(f'{URL_LOGIN}?next={request.path}')
        if(not user.has_perm('punto_venta.view_boleta')): return redirect(URL_HOME)
        return super().dispatch(request, *args, **kwargs)

# Empleado
def EmpleadoCreate(request:HttpRequest):
    user = request.user
    if(not user.is_authenticated): return redirect(f'{URL_LOGIN}?next={request.path}')
    if(not user.has_perm('punto_venta.add_empleado')): return redirect(URL_HOME)
    form = forms.EmpleadoCrearForm()
    if(request.method=='POST'):
        form = forms.EmpleadoCrearForm(request.POST)
        if(form.is_valid()):
            form.save()
            return redirect('empleados')
    return render(request, "empleados/crear.html", {'form':form})
class EmpleadoUpdateView(UpdateView):
    model = models.Empleado
    template_name = "empleados/actualizar.html"
    fields = [
        'correo_electronico',
        'primer_nombre',
        'primer_apellido',
        'fecha_nacimiento',
        'direccion',
        'documento_identificador',
        'fecha_contratacion',
        'afp',
    ]
    def get_context_data(self, **kwargs):
        context = super().get_context_data(**kwargs)
        context["title"] = 'actualizar empleado'
        return context
    def dispatch(self, request, *args, **kwargs):
        user = request.user
        if(not user.is_authenticated): return redirect(f'{URL_LOGIN}?next={request.path}')
        if(not user.has_perm('punto_venta.change_empleado')): return redirect(URL_HOME)
        return super().dispatch(request, *args, **kwargs)
class EmpleadoDeleteView(DeleteView):
    model = models.Empleado
    template_name = "empleados/eliminar.html"
    success_url = '/empleados/'
    def dispatch(self, request:HttpRequest, *args, **kwargs):
        user = request.user
        if(not user.is_authenticated): return redirect(f'{URL_LOGIN}?next={request.path}')
        if(not user.has_perm('punto_venta.delete_empleado')): return redirect(URL_HOME)
        return super().dispatch(request, *args, **kwargs)
class EmpleadoListView(ListView):
    model = models.Empleado
    template_name = "empleados/lista.html"
    def get_context_data(self, **kwargs):
        context = super().get_context_data(**kwargs)
        context["title"] = 'empleados'
        context["detalle"] = 'empleado_detalle'
        context["puede_borrar"] = self.request.user.has_perm('punto_venta.delete_empleado')
        context["puede_actualizar"] = self.request.user.has_perm('punto_venta.change_empleado')
        context["puede_crear"] = self.request.user.has_perm('punto_venta.add_empleado')
        context["borrar"] = "empleado_borrar"
        context["actualizar"] = "empleado_actualizar"
        context["crear"] = "empleado_crear"
        return context
    def dispatch(self, request:HttpRequest, *args, **kwargs):
        user = request.user
        if(not user.is_authenticated): return redirect(f'{URL_LOGIN}?next={request.path}')
        if(not user.has_perm('punto_venta.view_empleado')): return redirect(URL_HOME)
        return super().dispatch(request, *args, **kwargs)
class EmpleadoDetailView(DetailView):
    model = models.Empleado
    template_name = "empleados/detalle.html"
    def get_context_data(self, **kwargs):
        context = super().get_context_data(**kwargs)
        context["title"] = 'empleado'
        context["puede_borrar"] = self.request.user.has_perm('punto_venta.delete_empleado')
        context["puede_actualizar"] = self.request.user.has_perm('punto_venta.change_empleado')
        context["borrar"] = "empleado_borrar"
        context["actualizar"] = "empleado_actualizar"
        context["lista"] = "empleados"
        return context
    def dispatch(self, request:HttpRequest, *args, **kwargs):
        user = request.user
        if(not user.is_authenticated): return redirect(f'{URL_LOGIN}?next={request.path}')
        if(not user.has_perm('punto_venta.view_empleado')): return redirect(URL_HOME)
        return super().dispatch(request, *args, **kwargs)

# proveedor
class ProveedorCreateView(CreateView):
    model = models.Proveedor
    template_name = "proveedores/crear.html"
    fields = '__all__'
    def get_context_data(self, **kwargs):
        context = super().get_context_data(**kwargs)
        context["title"] = 'crear proveedor'
        return context
    def dispatch(self, request, *args, **kwargs):
        user = request.user
        if(not user.is_authenticated): return redirect(f'{URL_LOGIN}?next={request.path}')
        if(not user.has_perm('punto_venta.add_proveedor')): return redirect(URL_HOME)
        return super().dispatch(request, *args, **kwargs)
class ProveedorUpdateView(UpdateView):
    model = models.Proveedor
    template_name = "proveedores/actualizar.html"
    fields = '__all__'
    def get_context_data(self, **kwargs):
        context = super().get_context_data(**kwargs)
        context["title"] = 'actualizar proveedor'
        return context
    def dispatch(self, request, *args, **kwargs):
        user = request.user
        if(not user.is_authenticated): return redirect(f'{URL_LOGIN}?next={request.path}')
        if(not user.has_perm('punto_venta.change_proveedor')): return redirect(URL_HOME)
        return super().dispatch(request, *args, **kwargs)
from django.urls import reverse
class ProveedorDeleteView(DeleteView):
    model = models.Proveedor
    template_name = "proveedores/eliminar.html"
    def get_context_data(self, **kwargs):
        context = super().get_context_data(**kwargs)
        context["title"] = 'borrar proveedor'
        return context
    def get_success_url(self):
        return reverse('proveedores')  # Redirige a la lista de proveedores
    def dispatch(self, request: HttpRequest, *args, **kwargs):
        user = request.user
        if not user.is_authenticated:
            return redirect(f'{URL_LOGIN}?next={request.path}')
        if not user.has_perm('punto_venta.delete_proveedor'):
            return redirect(URL_HOME)
        return super().dispatch(request, *args, **kwargs)
class ProveedorListView(ListView):
    model = models.Proveedor
    template_name = "proveedores/lista.html"
    def get_context_data(self, **kwargs):
        context = super().get_context_data(**kwargs)
        context["title"] = 'proveedores'
        context["detalle"] = 'proveedor_detalle'
        context["puede_borrar"] = self.request.user.has_perm('punto_venta.delete_proveedor')
        context["puede_actualizar"] = self.request.user.has_perm('punto_venta.change_proveedor')
        context["puede_crear"] = self.request.user.has_perm('punto_venta.add_proveedor')
        context["borrar"] = "proveedor_borrar"
        context["actualizar"] = "proveedor_actualizar"
        context["crear"] = "proveedor_crear"
        return context
    def dispatch(self, request:HttpRequest, *args, **kwargs):
        user = request.user
        if(not user.is_authenticated): return redirect(f'{URL_LOGIN}?next={request.path}')
        if(not user.has_perm('punto_venta.view_proveedor')): return redirect(URL_HOME)
        return super().dispatch(request, *args, **kwargs)
class ProveedorDetailView(DetailView):
    model = models.Proveedor
    template_name = "proveedores/detalle.html"
    def get_context_data(self, **kwargs):
        context = super().get_context_data(**kwargs)
        context["title"] = 'proveedor'
        context["puede_borrar"] = self.request.user.has_perm('punto_venta.delete_proveedor')
        context["puede_actualizar"] = self.request.user.has_perm('punto_venta.change_proveedor')
        context["borrar"] = "proveedor_borrar"
        context["actualizar"] = "proveedor_actualizar"
        context["lista"] = "proveedores"
        return context
    def dispatch(self, request:HttpRequest, *args, **kwargs):
        user = request.user
        if(not user.is_authenticated): return redirect(f'{URL_LOGIN}?next={request.path}')
        if(not user.has_perm('punto_venta.view_proveedor')): return redirect(URL_HOME)
        return super().dispatch(request, *args, **kwargs)

# factura
def FacturaCreate(request:HttpRequest):
    user = request.user
    if(not user.is_authenticated): return redirect(f'{URL_LOGIN}?next={request.path}')
    if(not user.has_perm('punto_venta.add_factura')): return redirect(URL_HOME)
    template_name = 'factura/crear.html'
    if(request.method == 'GET'):
        form_main = forms.FacturaForm(request.GET or None)
        formset = forms.FacturaDetalleFormset(queryset=models.Factura_detalle.objects.none(), prefix='detalle')
    elif(request.method == 'POST'):
        form_main = forms.FacturaForm(request.POST)
        formset = forms.FacturaDetalleFormset(request.POST, prefix='detalle')
        if(form_main.is_valid() and formset.is_valid() and hasattr(request.user, 'persona')):
            factura = form_main.save(False)
            factura.empleado = request.user.persona.empleado
            factura.save()
            for form in formset:
                if(not 'producto' in form.cleaned_data):
                    continue
                detalle = form.instance
                detalle.factura = factura
                detalle.save()
            return redirect('facturas')
    context = {
        'title' : 'Crear Factura',
        'form_main' : form_main,
        'formset' : formset,
    }
    return render(request, template_name, context)
def FacturaUpdate(request:HttpRequest, pk:int):
    user = request.user
    if(not user.is_authenticated): return redirect(f'{URL_LOGIN}?next={request.path}')
    if(not user.has_perm('punto_venta.change_factura')): return redirect(URL_HOME)
    template_name = 'factura/actualizar.html'
    if(request.method == 'GET'):
        factura = models.Factura.objects.get(id=pk)
        form_main = forms.FacturaForm(instance=factura)
        formset = forms.FacturaDetalleFormset(queryset=models.Factura_detalle.objects.filter(factura=factura), prefix='detalle')
    elif(request.method == 'POST'):
        form_main = forms.FacturaForm(request.POST)
        formset = forms.FacturaDetalleFormset(request.POST, prefix='detalle')
        if(
            form_main.is_valid() and 
            formset.is_valid() and 
            hasattr(request.user, 'persona')
        ):
            factura = form_main.save(False)
            factura.empleado = request.user.persona.empleado
            factura.save()
            factura_detalles = models.Factura_detalle.objects.filter(factura=factura)
            for form in formset:
                if(not 'producto' in form.cleaned_data):
                    continue
                detalle = form.instance
                detalle.factura = factura
                detalle.save()
            return redirect('facturas')
    context = {
        'title' : 'Actualizar Factura',
        'form_main' : form_main,
        'formset' : formset,
    }
    return render(request, template_name, context)
class FacturaDeleteView(DeleteView):
    model = models.Factura
    template_name = "factura/eliminar.html"
    success_url = '/facturas/'
    def get_context_data(self, **kwargs):
        context = super().get_context_data(**kwargs)
        context["title"] = 'Borrar Factura'
        context["lista"] = 'facturas'
        return context
    def dispatch(self, request:HttpRequest, *args, **kwargs):
        user = request.user
        if(not user.is_authenticated): return redirect(f'{URL_LOGIN}?next={request.path}')
        if(not user.has_perm('punto_venta.delete_factura')): return redirect(URL_HOME)
        return super().dispatch(request, *args, **kwargs)
class FacturaListView(ListView):
    model = models.Factura
    template_name = "factura/lista.html"
    def get_context_data(self, **kwargs):
        context = super().get_context_data(**kwargs)
        context["title"] = 'Facturas'
        context["detalle"] = 'factura_detalle'
        context["puede_borrar"] = self.request.user.has_perm('punto_venta.delete_factura')
        context["puede_actualizar"] = self.request.user.has_perm('punto_venta.change_factura')
        context["puede_crear"] = self.request.user.has_perm('punto_venta.add_factura')
        context["borrar"] = "factura_borrar"
        context["actualizar"] = "factura_actualizar"
        context["crear"] = "factura_crear"
        return context
    def dispatch(self, request:HttpRequest, *args, **kwargs):
        user = request.user
        if(not user.is_authenticated): return redirect(f'{URL_LOGIN}?next={request.path}')
        if(not user.has_perm('punto_venta.view_factura')): return redirect(URL_HOME)
        return super().dispatch(request, *args, **kwargs)
class FacturaDetailView(DetailView):
    model = models.Factura
    template_name = "factura/detalle.html"
    def get_context_data(self, **kwargs):
        context = super().get_context_data(**kwargs)
        context["title"] = 'Factura'
        context["puede_borrar"] = self.request.user.has_perm('punto_venta.delete_factura')
        context["puede_actualizar"] = self.request.user.has_perm('punto_venta.change_factura')
        context["borrar"] = "factura_borrar"
        context["actualizar"] = "factura_actualizar"
        context["lista"] = "facturas"
        return context
    def dispatch(self, request:HttpRequest, *args, **kwargs):
        user = request.user
        if(not user.is_authenticated): return redirect(f'{URL_LOGIN}?next={request.path}')
        if(not user.has_perm('punto_venta.view_factura')): return redirect(URL_HOME)
        return super().dispatch(request, *args, **kwargs)
