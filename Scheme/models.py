from django.db import models

# Create your models here.

class SchemesDB(models.Model):
    Scheme_Name = models.CharField(max_length=100,null=True,blank=True)
    options=(
        ("Disabilty","Disability"),
        ("Reservation","Reservation"),
        ("Profession","Profession"),
        ("State","State"),
        ("Insurance","Insurance"),
        ("General","General")
    )
    new = models.CharField(max_length=100,null=True,blank=True,choices=options)
    Type2 = models.CharField(max_length=100,null=True,blank=True,choices=options)
    Type3 = models.CharField(max_length=100,null=True,blank=True,choices=options)
    Description = models.CharField(max_length=1000,null=True,blank=True)
    Link = models.CharField(max_length=1000,null=True,blank=True)
