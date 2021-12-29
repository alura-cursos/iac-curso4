from django.db.models import fields
from rest_framework import serializers
from clientes.models import Cliente

class ClientesSerializers(serializers.ModelSerializer):
    class Meta:
        model = Cliente
        fields = '__all__'
