from django.db import models
from django.contrib.auth.models import User

class Districts(models.Model):
    name=models.CharField(max_length=100)

    class Meta:
        ordering =('name',)
        verbose_name_plural='Districts'

    def __str__(self):
        return self.name

# Create your models here.
class ProfileDB(models.Model):
    user = models.ForeignKey(User, on_delete=models.CASCADE)
    Name = models.CharField(max_length=100, null=True, blank=True)
    Address = models.CharField(max_length=1000, null=True, blank=True)
    City = models.CharField(max_length=100, null=True, blank=True)
    State = models.ForeignKey(Districts,on_delete=models.CASCADE,related_name='dist')
    Pincode = models.IntegerField(null=True, blank=True)
    Profession = models.CharField(max_length=100, null=True, blank=True)
    Income = models.IntegerField(null=True, blank=True)
    Poverty_line = models.CharField(max_length=100, null=True, blank=True)
    Disability = models.BooleanField(default=False)
    Reservation = models.CharField(max_length=100, null=True, blank=True)
    Aadhar_Number = models.IntegerField(null=True, blank=True)
    Contact = models.IntegerField(null=True, blank=True)
    Profile_Image = models.ImageField(upload_to="users/profile_images", null=True, blank=True)
