from django.http import HttpRequest
from django.shortcuts import render, redirect
from punto_venta import forms, models
from .models import Cita, Empleado
from datetime import date
#from django.views.generic.detail import DetailView

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

    return render(request, 'cliente/cita/calendario.html', context

from django.views.generic.list import ListView
class ProductoCardView(ListView):
    model = models.Producto
    paginate_by = 8
    template_name = "cliente/productos.html"
class ServicioCardView(ListView):
    model = models.Servicio
    paginate_by = 8
    template_name = "cliente/servicios.html"

from django.views.generic.detail import DetailView
class ServicioDetailView(DetailView):
    model = models.Servicio
    template_name = "cliente/servicio.html"
class ProductoDetailView(DetailView):
    model = models.Producto
    template_name = "cliente/producto.html"

#ProductoVerDetalle
