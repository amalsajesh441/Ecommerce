from django.db import models
from customer.models import Customer
# Create your models here.
#
#
STATUS_VALUES = (
    ("1", "Pending"),
    ("2", "Approved"),

)
class Login(models.Model):
    l_id=models.AutoField(primary_key=True)
    c_id=models.ForeignKey(Customer,on_delete=models.CASCADE)
    e_mail=models.CharField(max_length=20)
    password=models.CharField(max_length=30)
    status=models.CharField(max_length=20,choices=STATUS_VALUES,default='1')