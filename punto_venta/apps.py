from django.apps import AppConfig
#from django.db.models.signals import post_migrate

class PuntoVentaConfig(AppConfig):
    default_auto_field = 'django.db.models.BigAutoField'
    name = 'punto_venta'
#    def ready(self):
#        from .signals import crear_grupos
#        post_migrate.connect(crear_grupos, sender=self)
