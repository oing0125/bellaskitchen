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
<input type="hidden" name="name" id="name" value="{{ request.session.name }}"></input>
<input type="hidden" name="login_tp" id="login_tp" value="{{ request.session.login_tp }}"></input>
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
<div class="container register_main text-center">
	<span class="register_nm">{{ request.session.name }}</span> 님의 강아지를 소개해주세요.
	<div class="register_content">
		<div id="dog_info_area">
			<div class="register_info_item">
				이름은 <input type="text" class="txtInfo" name="txtDogNm" id="txtDogNm"/> 입니다.
			</div>
			<div class="register_info_item hidden_first" id="nextDogNm">
					성별은 
					<div id="dropdown_sex" class="dropdown">
					  <button id="drop_sex_btn" class="drop_btn">
					  	<input type="hidden" id="txtDogGender" name="txtDogGender" value="남자"/>
					  	<span id="dogGender">남자</span>
						  <span class="select-arrow-zone">
						  	<span class="select-arrow"></span>
						  </span>
					  </button>
					 <div class="dropdown-content">
						 <a href="#" id="option_mail">남자</a>
						 <a href="#" id="option_femail">여자</a>
					  </div>
				  		<span id="isPregArea" class="hidden_first">
				  			(임신여부 <input type="checkbox" name="isPreg" id="isPreg"/> )
				  		</span>
					</div>
					, 나이는 <input type="number" class="txtInfo" name="txtDogAge" id="txtDogAge"/> 살입니다.
			</div>
			<div class="register_info_item hidden_first" id="nextDogAge">
				몸무게는 <input type="number" class="txtInfo" name="txtDogWeight" id="txtDogWeight"/>kg 이며 중성화 수술은
				<div id="dropdown_goja" class="dropdown">
					  <button id="drop_goja_btn" class="drop_btn">
					  	<input type="hidden" id="chkGoja" name="chkGoja" value="0"/>
					  	<span id="dogGoja">안 했어요.</span>
						  <span class="select-arrow-zone">
						  	<span class="select-arrow"></span>
						  </span>
					  </button>
					 <div class="dropdown-content">
						 <a href="#" id="option_no_goja" name="0">안 했어요.</a>
						 <a href="#" id="option_goja" name="1">했어요.</a>
					  </div>
				</div>
			</div>
		</div>
		<div class="btn_rapper hidden_first" id="nextDogWeight">
			<button id="btnNonLogin">주문하기</button>
		</div>
	</div>
	
</div>
</body>
</html>