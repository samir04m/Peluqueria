# -*- coding: utf-8 -*-
# Generated by Django 1.11 on 2018-11-27 23:12
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Egreso',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('month', models.IntegerField()),
                ('year', models.IntegerField()),
                ('insumos', models.IntegerField()),
                ('instrumentacion', models.IntegerField()),
                ('alquiler', models.IntegerField()),
                ('totalServiciosPublicos', models.IntegerField()),
                ('energia', models.IntegerField()),
                ('agua', models.IntegerField()),
                ('telefonia', models.IntegerField()),
            ],
        ),
        migrations.CreateModel(
            name='Ingreso',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('total', models.IntegerField()),
                ('dueno', models.IntegerField()),
                ('empleados', models.IntegerField()),
                ('insumos', models.IntegerField()),
            ],
        ),
    ]
