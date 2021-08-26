from django.db import models

# Create your models here.
#
#
class Customer(models.Model):
    c_id= models.AutoField(primary_key=True)
    f_name=models.CharField(max_length=20)
    l_name=models.CharField(max_length=50)
    e_mail=models.CharField(max_length=20)
    password=models.CharField(max_length=30)
    address=models.CharField(max_length=100)
    contact=models.CharField(max_length=20)