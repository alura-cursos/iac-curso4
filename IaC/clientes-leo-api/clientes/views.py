from clientes.serializers import ClientesSerializers
from rest_framework import viewsets
from clientes.models import Cliente

class ClienteViewSet(viewsets.ModelViewSet):
    queryset = Cliente.objects.all()
    serializer_class = ClientesSerializers

