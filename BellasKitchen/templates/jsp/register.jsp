{% load static %}
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="icon" href="{% static "image/Favicon.png" %}" type="image/png"/>
<link rel="shortcut icon" type="image/png" href="{% static "image/Favicon.png" %}"/>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link href='https://fonts.googleapis.com/css?family=Source+Sans+Pro' rel='stylesheet' type='text/css'>
<link href='http://netdna.bootstrapcdn.com/font-awesome/3.2.1/css/font-awesome.css' rel='stylesheet' type='text/css'>
<link href='{% static "css/register.css" %}' rel='stylesheet' type='text/css'>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="//developers.kakao.com/sdk/js/kakao.min.js"></script>
<script type="text/javascript" src="{% static "js/register.js" %}"></script>
<title>Bella's Kitchen</title>
</head>
<body>
<div class="container header">
	<div class="fl">
		<img src="{% static "/image/White_Logo.png" %}" class="img-rounded go_home" alt="Bellas"/>
	</div>
	<div class="fr">
		<ul>
		  <li><a href="/">HOME</a></li>
		  {% if request.session.is_login %}
		  <li class="logout_btn"><a href="/logout">LOGOUT</a></li>
		  {% else %}
		  <li class="login_btn"><a href="/login">LOGIN</a></li>
		  {% endif %}
		  <li><a href="#">ABOUT</a></li>
		</ul>
	</div>
</div>
<div class="container register_main">
	<div class="row">
	<div class="col-sm-1">
 	</div>
   	<div class="col-sm-5 text_left">
   		<span class="title">로그인됨</span>
   		<div class="content text-center">
   		</div>
	</div>
   	<div class="col-sm-5 text_left">
		<span class="title">비회원으로 주문</span>
	</div>
	<div class="col-sm-1">
 	</div>
</div>
</body>
</html>