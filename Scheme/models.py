from django.db import models

# Create your models here.

class SchemesDB(models.Model):
    Scheme_Name = models.CharField(max_length=500,null=True,blank=True)
    options=(
        ("Disabilty","Disability"),
        ("Reservation","Reservation"),
        ("Profession","Profession"),
        ("State","State"),
        ("Insurance","Insurance"),
        ("General","General")
    )
    Type = models.CharField(max_length=50,null=True,blank=True,choices=options)
    Description = models.CharField(max_length=1000,null=True,blank=True)
