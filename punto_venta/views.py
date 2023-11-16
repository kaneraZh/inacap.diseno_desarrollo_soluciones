from django.shortcuts import render, redirect
#from django.views.generic.detail import DetailView
from punto_venta.forms import ClienteCrearForm
def ClienteCrear(request):
    if(request.method == 'POST'):
        form = ClienteCrearForm(request.POST)
        if(form.is_valid()):
            form.save()
            return redirect('/accounts/login')
    form = ClienteCrearForm()
    context = {'form':form}
    return render(request, 'cliente/crear_cliente.html', context)
    
    