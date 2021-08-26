from rest_framework import serializers
from customer.models import Customer


class customerserializer(serializers.ModelSerializer):
    class Meta:
        model = Customer
        fields = '__all__'