# Generated by Django 4.2.7 on 2023-11-25 05:38

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('punto_venta', '0002_alter_servicio_tiempo'),
    ]

    operations = [
        migrations.AddField(
            model_name='producto',
            name='descripcion',
            field=models.CharField(default='', max_length=50),
            preserve_default=False,
        ),
    ]
