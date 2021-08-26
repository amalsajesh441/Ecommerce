import requests
from django.http import JsonResponse
from django.shortcuts import render
from rest_framework import status
from rest_framework.parsers import JSONParser
from rest_framework.response import Response
from rest_framework.decorators import api_view
from customer.models import Customer
from customer.serializer import customerserializer
from login.serializer import loginserializer

@api_view(['POST'])
def cviewapi(request):
        if request.method=='POST':
            ser=customerserializer(data=request.data)
            ser1 = loginserializer(data=request.data)
            if ser.is_valid():
                ser.save()
                return Response(ser.data, status=status.HTTP_201_CREATED)
            return Response(ser.errors, status=status.HTTP_400_BAD_REQUEST)

def cview(request):
    if request.method=="POST":
        f_name=request.POST.get('f_name')
        l_name=request.POST.get('l_name')
        e_mail=request.POST.get('email')
        password=request.POST.get('pswd')
        address=request.POST.get('address')
        contact=request.POST.get('contact')
        data={'f_name':f_name,'l_name':l_name,'e_mail':e_mail,'password':password,'address':address,'contact':contact}
        headers={'Content-Type': 'application/json'}
        read=requests.post('http://127.0.0.1:8000/custviewapi', json=data, headers=headers)
        return render(request,'customerReg.html')
    else:
        return render(request,'customerReg.html')


