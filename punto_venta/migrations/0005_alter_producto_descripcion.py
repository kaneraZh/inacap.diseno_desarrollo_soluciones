# Generated by Django 4.2.6 on 2023-11-29 05:31

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('punto_venta', '0004_producto_imagen_alter_boleta_monto_iva_and_more'),
    ]

    operations = [
        migrations.AlterField(
            model_name='producto',
            name='descripcion',
            field=models.CharField(max_length=300),
        ),
    ]