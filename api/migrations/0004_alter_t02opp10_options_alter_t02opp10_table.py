# Generated by Django 4.0 on 2024-04-30 15:37

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('api', '0003_alter_t01div10_options_alter_t01div10_table'),
    ]

    operations = [
        migrations.AlterModelOptions(
            name='t02opp10',
            options={'verbose_name': 'opportunity'},
        ),
        migrations.AlterModelTable(
            name='t02opp10',
            table='T02Opp10',
        ),
    ]