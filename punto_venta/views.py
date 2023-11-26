from django.http import HttpRequest
from django.shortcuts import render, redirect
from punto_venta import forms, models

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


def ServicioVerPaginadoCartas(request:HttpRequest, pagina:int):
    limite_ini = 8*(pagina)
    limite_fin = 8*(pagina+1)
    #tabla = models.Servicio.objects.all().order_by('nombre')
    tabla = models.Servicio.objects.all().order_by('id').filter(id__gte=limite_ini).filter(id__lt=limite_fin).values()
    if(tabla.count()==0):
        return redirect('/servicios/0')
    data = {
        'title' : f'servicios pag. {pagina}',
        'items' : tabla,
        'pagina': pagina,
        'url': 'servicios_tarjeta',
    }
    return render(request, 'tables/view/many_cards.html', data)
def ProductoVerPaginadoCartas(request:HttpRequest, pagina:int):
    limite_ini = 8*(pagina)
    limite_fin = 8*(pagina+1)
    tabla = models.Producto.objects.all().order_by('id').filter(id__gte=limite_ini).filter(id__lt=limite_fin).values()
    if(tabla.count()==0):
        return redirect('/productos/0')
    data = {
        'title' : f'productos pag. {pagina}',
        'items' : tabla,
        'pagina': pagina,
        'url': 'productos_tarjeta',
    }
    return render(request, 'tables/view/many_cards.html', data)
def ServicioVerDetalle(request:HttpRequest, item:str):
    tabla = models.Servicio.objects.get()
#ProductoVerDetalle