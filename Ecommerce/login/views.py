# import request
import requests
from django.http import JsonResponse
from django.shortcuts import render
from rest_framework import status
from rest_framework.parsers import JSONParser
from rest_framework.response import Response
from rest_framework.decorators import api_view
from login.models import Login
from login.serializer import loginserializer

from customer.models import Customer

from customer.serializer import customerserializer


@api_view(['GET'])
def lviewapi(request):
        if request.method=='GET':
            results=Login.objects.all()
            ser=loginserializer(results,many=True)
            return Response(ser.data)

def lview(request):
    if request.method=="POST":
        # results = Login.objects.all()
        e_mail=request.POST.get('uname')
        password=request.POST.get('passwd')
        for rs in Login.objects.all():
            if rs.e_mail == e_mail and rs.password == password and rs.status=='2':
                request.session['logid'] = rs.c_id_id
                return render(request, 'CustHome.html')
            else:
                return render(request,'login.html')
    return render(request, 'login.html')


@api_view(['DELETE'])
def delete(request,pk):
    probj = Customer.objects.get(pk=pk)
    probj.delete()
    return Response(status=status.HTTP_204_NO_CONTENT)

def deletecust(request):
    idd=str(request.session['logid'])
    return delete(request,idd)



@api_view(['GET'])
def customviewapi(request):
        if request.method=='GET':
            results=Customer.objects.get(c_id=str(request.session['logid']))
            ser=customerserializer(results,many=True)
            return Response(ser.data)
def customview(request):
    if request.method=="GET":
        callapi = requests.get('http://127.0.0.1:8000/customviewapi')
        results = callapi.json()
        return render(request,'CustHome.html',{'Customer':results})