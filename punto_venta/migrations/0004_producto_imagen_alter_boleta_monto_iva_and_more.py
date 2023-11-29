# Generated by Django 4.2.6 on 2023-11-29 02:14

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('punto_venta', '0003_producto_descripcion'),
    ]

    operations = [
        migrations.AddField(
            model_name='producto',
            name='imagen',
            field=models.ImageField(default='productos/default.jpg', upload_to='productos/'),
        ),
        migrations.AlterField(
            model_name='boleta',
            name='monto_iva',
            field=models.PositiveIntegerField(),
        ),
        migrations.AlterField(
            model_name='boleta',
            name='monto_neto',
            field=models.PositiveIntegerField(),
        ),
        migrations.AlterField(
            model_name='boleta',
            name='monto_total',
            field=models.PositiveIntegerField(),
        ),
        migrations.AlterField(
            model_name='boleta_producto',
            name='monto_iva',
            field=models.PositiveIntegerField(),
        ),
        migrations.AlterField(
            model_name='boleta_producto',
            name='monto_neto',
            field=models.PositiveIntegerField(),
        ),
        migrations.AlterField(
            model_name='boleta_producto',
            name='monto_total',
            field=models.PositiveIntegerField(),
        ),
        migrations.AlterField(
            model_name='boleta_producto',
            name='precio_venta',
            field=models.PositiveIntegerField(),
        ),
        migrations.AlterField(
            model_name='boleta_servicio',
            name='monto_iva',
            field=models.PositiveIntegerField(),
        ),
        migrations.AlterField(
            model_name='boleta_servicio',
            name='monto_neto',
            field=models.PositiveIntegerField(),
        ),
        migrations.AlterField(
            model_name='boleta_servicio',
            name='monto_total',
            field=models.PositiveIntegerField(),
        ),
        migrations.AlterField(
            model_name='boleta_servicio',
            name='precio_venta',
            field=models.PositiveIntegerField(),
        ),
        migrations.AlterField(
            model_name='factura',
            name='monto_iva',
            field=models.PositiveIntegerField(),
        ),
        migrations.AlterField(
            model_name='factura',
            name='monto_neto',
            field=models.PositiveIntegerField(),
        ),
        migrations.AlterField(
            model_name='factura',
            name='monto_total',
            field=models.PositiveIntegerField(),
        ),
        migrations.AlterField(
            model_name='factura_detalle',
            name='monto_iva',
            field=models.PositiveIntegerField(),
        ),
        migrations.AlterField(
            model_name='factura_detalle',
            name='monto_neto',
            field=models.PositiveIntegerField(),
        ),
        migrations.AlterField(
            model_name='factura_detalle',
            name='monto_total',
            field=models.PositiveIntegerField(),
        ),
        migrations.AlterField(
            model_name='factura_detalle',
            name='precio_venta',
            field=models.PositiveIntegerField(),
        ),
        migrations.AlterField(
            model_name='producto',
            name='precio_compra',
            field=models.PositiveIntegerField(),
        ),
        migrations.AlterField(
            model_name='producto',
            name='precio_venta',
            field=models.PositiveIntegerField(),
        ),
        migrations.AlterField(
            model_name='servicio',
            name='precio',
            field=models.PositiveIntegerField(),
        ),
    ]