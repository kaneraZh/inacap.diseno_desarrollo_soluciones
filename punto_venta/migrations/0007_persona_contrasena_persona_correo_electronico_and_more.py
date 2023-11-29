# Generated by Django 4.2.7 on 2023-11-29 05:34

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('punto_venta', '0006_alter_producto_descripcion'),
    ]

    operations = [
        migrations.AddField(
            model_name='persona',
            name='contrasena',
            field=models.CharField(max_length=20, null=True),
        ),
        migrations.AddField(
            model_name='persona',
            name='correo_electronico',
            field=models.EmailField(max_length=30, null=True),
        ),
        migrations.AddField(
            model_name='persona',
            name='primer_apellido',
            field=models.CharField(max_length=20, null=True),
        ),
        migrations.AddField(
            model_name='persona',
            name='primer_nombre',
            field=models.CharField(max_length=20, null=True),
        ),
    ]