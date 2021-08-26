from rest_framework import serializers
from product.models import Product


class productserializer(serializers.ModelSerializer):
    regdt=serializers.DateField()
    class Meta:
        model = Product
        fields = '__all__'