# Generated by Django 4.2.3 on 2023-11-19 02:28

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('punto_venta', '0001_initial'),
    ]

    operations = [
        migrations.AlterField(
            model_name='servicio',
            name='tiempo',
            field=models.DurationField(),
        ),
    ]