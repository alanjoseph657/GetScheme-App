# Generated by Django 4.2.6 on 2023-11-01 11:22

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('Scheme', '0003_schemesdb_link'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='schemesdb',
            name='Type1',
        ),
        migrations.RemoveField(
            model_name='schemesdb',
            name='Type2',
        ),
        migrations.RemoveField(
            model_name='schemesdb',
            name='Type3',
        ),
        migrations.AddField(
            model_name='schemesdb',
            name='new',
            field=models.CharField(blank=True, choices=[('Disabilty', 'Disability'), ('Reservation', 'Reservation'), ('Profession', 'Profession'), ('State', 'State'), ('Insurance', 'Insurance'), ('General', 'General')], max_length=100, null=True),
        ),
        migrations.AlterField(
            model_name='schemesdb',
            name='Scheme_Name',
            field=models.CharField(blank=True, max_length=100, null=True),
        ),
    ]
