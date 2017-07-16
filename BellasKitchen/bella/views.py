# -*- coding: utf-8 -*-
from __future__ import unicode_literals
from django.views.decorators.http import require_http_methods
from django.shortcuts import render, redirect
from django.http.response import JsonResponse
import requests
# Create your views here.

def index(request):
    return render(request, 'jsp/index.jsp')

@require_http_methods(["POST"])
def login(request):
    
    login_tp = request.POST['login_tp']
    session = request.session
    if login_tp == 'kakao':
        access_token = request.POST['access_token']
        refresh_token = request.POST['refresh_token']
        headers = {'Content-Type': 'application/json; charset=utf-8',
                   'Authorization' : 'Bearer ' + access_token }
        res =  requests.post("https://kapi.kakao.com/v1/user/me", headers=headers)
        resJson = res.json()
        session['access_token'] = access_token
        session['email'] = resJson['kaccount_email']
        session['login_tp'] = 'kakao'
        session['id'] = 'kakao'+str(resJson['id'])
        session['name'] = resJson['properties']['nickname']
        session['is_login'] = 'yes'
        session['login_tp'] = 'kakao'
    elif login_tp == 'none':
        session['login_tp'] = 'none'
        session['name'] = request.POST['name']
        session['email'] = request.POST['email']
        session['is_login'] = "yes"
    return JsonResponse({'aaa':'fff'})

def logout(request):
    session = request.session
    if "is_login" in session:
        if session['login_tp'] == 'kakao':
            headers = {'Content-Type': 'application/json; charset=utf-8',
                       'Authorization' : 'Bearer ' + session['access_token'] }
            res = requests.post("https://kapi.kakao.com/v1/user/logout", headers=headers)
            print(res.json())
    session.clear()
    return render(request, 'jsp/index.jsp')


def register(request):
    session = request.session
    if 'is_login' in session:
        return render(request, 'jsp/register.jsp')
    else :
        return render(request, 'jsp/login.jsp')
