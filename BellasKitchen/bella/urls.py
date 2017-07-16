'''
Created on 2017. 7. 8.

@author: Byungchul
'''
from django.conf.urls import url
from . import views

urlpatterns = [
    url(r'^$', views.index, name='index'),
    url(r'^register/', views.register, name='register'),
    url(r'^login/', views.login, name="login"),
    url(r'^logout/', views.logout, name="logout")
]