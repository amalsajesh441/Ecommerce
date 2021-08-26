from django.db import models


class Product(models.Model):
    p_id = models.AutoField(primary_key=True)
    p_name = models.CharField(max_length=50)
    c_id = models.CharField(max_length=50)
    price = models.CharField(max_length=50)
    regdt = models.DateField(db_column='regDt')  # Field name made lowercase.
    status = models.CharField(max_length=50)

    class Meta:
        managed = False
        db_table = 'product'