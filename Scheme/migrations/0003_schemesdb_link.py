# Generated by Django 4.2.6 on 2023-10-27 05:59

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('Scheme', '0002_rename_type_schemesdb_type1_schemesdb_type2_and_more'),
    ]

    operations = [
        migrations.AddField(
            model_name='schemesdb',
            name='Link',
            field=models.CharField(blank=True, max_length=1000, null=True),
        ),
    ]