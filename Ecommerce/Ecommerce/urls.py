"""Ecommerce URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/3.2/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
from django.contrib import admin
from django.urls import path
from django.conf.urls import url,include
from product import views
from customer import views
from login import views

import product,customer,login

urlpatterns = [
    path('admin/', admin.site.urls),
    path('pviewapi',product.views.pviewapi,name='pviewapi'),
    path('productview',product.views.productview,name='productview'),
    path('productaddviewapi',product.views.productaddviewapi,name='productaddviewapi'),
    path('productaddview',product.views.productaddview,name='productaddview'),
    path('delete',product.views.delete,name='delete'),


    path('cviewapi',customer.views.cviewapi,name='cviewapi'),
    path('cview',customer.views.cview,name='cview'),

    path('lviewapi',login.views.lviewapi,name='lviewapi'),
    path('lview',login.views.lview,name='lview'),

    path('customviewapi', login.views.customviewapi, name='customviewapi'),
    path('customview', login.views.customview, name='customview'),

    # path('crud/<int:pk>',product.views.Product_upd_del.as_view()),

    url(r'^act/(?P<idd>\w+)',product.views.act, name='act'),
    url(r'^deletev/(?P<idd>\w+)',product.views.deletev, name='deletev'),
    url(r'^deletecust/',login.views.deletecust, name='deletecust'),
    url(r'^inact/(?P<idd>\w+)',product.views.inact, name='inact'),
    # url(r'^updateprod/(?P<idd>\w+)', product.views.updateprod, name='updateprod')


]
