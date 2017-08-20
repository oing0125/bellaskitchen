{% load static %}
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="icon" href="{% static "image/Favicon.png" %}" type="image/png" />
<link rel="shortcut icon" type="image/png" href="{% static " image/Favicon.png" %}"/>
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=0, user-scalable=no, target-densitydpi=medium-dpi" />
<link rel="stylesheet"	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link href='https://fonts.googleapis.com/css?family=Source+Sans+Pro'	rel='stylesheet' type='text/css'>
<link	href='http://netdna.bootstrapcdn.com/font-awesome/3.2.1/css/font-awesome.css'	rel='stylesheet' type='text/css'>
<link href='{% static "css/login.css" %}' rel='stylesheet'	type='text/css'>
<script	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script type="text/javascript" src="https://static.nid.naver.com/js/naverLogin_implicit-1.0.3.js" charset="utf-8"></script>
<script src="//developers.kakao.com/sdk/js/kakao.min.js"></script>
<script type="text/javascript" src="{% static "js/login.js" %}"></script>
<title>Bella's Kitchen</title>
</head>
<body>
	<div class="container header">
		<div class="fl">
			<img src="{% static "/image/White_Logo.png" %}" class="img-rounded go_home" alt="Bellas" />
		</div>
		<div class="fr">
			<div class="fr_menu_all">
				<ul>
					<li><a href="/">HOME</a></li> 
					{% if request.session.is_login %}
					<li class="mypage_btn"><a href="/mypage">MY PAGE</a></li>
					<li class="order_btn"><a href="/register">ORDER</a></li>
					<li class="logout_btn" style="display: none;"><a href="#">LOGOUT</a></li>
					{% else %}
					<li class="login_btn"><a href="#">LOGIN</a></li> 
					{% endif %}
				</ul>
			</div>
			<div class="fr fr_menu_icon">
				<div id='menu_icon'>•••</div> 
			</div>
		</div>
	</div>
	<div class="container menu_nav text-center hidden_first">
		<div class="menu_nav_content">
 			<a href="/">HOME</a>
		</div>
		<div class="menu_nav_content">
		{% if request.session.is_login %}
			<a href="#" class="mypage_btn">MY PAGE</a>
			<a href="#" class="order_btn">ORDER</a>
			<a href="#" class="logout_btn" style="display: none;">LOGOUT</a>
		{% else %}
			<a href="#" class="login_btn">LOGIN</a>
		{% endif %}
		</div>
	</div>
	<div class="container register_main">
		<div class="row">
			<div class="col-sm-6 text_left login_area">
				<span class="title">로그인</span>
				<div class="content text-center">
					<a id="kakao-login-btn"></a> <a id="kakao-logout-btn"
						href="http://developers.kakao.com/logout"></a>
					<div class="btn_login text-center">
						<div id="btnFbLogin">
						<img src="{% static "/image/facebook_icon.png" %}" alt="" />
						Facebook으로 로그인</div>
					</div>
					<div class="btn_login text-center">
					<!-- 
						<a id="naver_id_login">
						<img src="{% static "/image/btn_naver_login.png" %}" class="img-rounded go_home" alt="Bellas" />
						</a>
					 -->
						<div id="naver_id_login"></div>
					  <!-- //네이버아이디로로그인 버튼 노출 영역 -->
					  <script type="text/javascript">
					  	var naver_id_login = new naver_id_login("hsFofi2FuMQGtiJ0jkgZ", "http://localhost:8000/login_naver");
					  	var state = naver_id_login.getUniqState();
					  	naver_id_login.setButton("green", 3,40);
					  	naver_id_login.setDomain("http://localhost:8000");
					  	naver_id_login.setState(state);
					  	naver_id_login.setPopup();
					  	naver_id_login.init_naver_id_login();
					  </script>
					</div>
				</div>
			</div>
			<div class="col-sm-6 text_left non_login_area">
				<span class="title">비회원으로 주문</span>
				<div class="content">
					<div class="control-group">
						<!-- Username -->
						<label class="control-label" for="username">이름</label>
						<div class="controls">
							<input type="text" id="username" name="username" placeholder=""
								class="input-xlarge">
						</div>
					</div>
	
					<div class="control-group">
						<!-- E-mail -->
						<label class="control-label" for="email">이메일</label>
						<div class="controls">
							<input type="text" id="email" name="email" placeholder=""
								class="input-xlarge">
						</div>
					</div>
					<!-- 
					<div class="control-group">
						<label class="control-label" for="password">Password</label>
						<div class="controls">
							<input type="password" id="password" name="password"
								placeholder="" class="input-xlarge">
						</div>
					</div>
	
					<div class="control-group">
						<label class="control-label" for="password_confirm">Password
							(Confirm)</label>
						<div class="controls">
							<input type="password" id="password_confirm"
								name="password_confirm" placeholder="" class="input-xlarge">
						</div>
					</div>
					 -->
					<div class="control-group">
						<input type="checkbox" id="use_agree"/> 이용약관 및 개인정보처리방침에 동의합니다.
						<br/>
						<input type="checkbox" id="over_14"/> 만 14세 이상입니다.
					</div>
				</div>
				<div class="btn_rapper">
					<button id="btnNonLogin">비회원으로 로그인</button>
				</div>
			</div>
		</div>
<div class="container main_footer text-center">
 <div class="container">
 	CONTACT&nbsp;&nbsp;&nbsp;이용약관&nbsp;&nbsp;&nbsp;개인정보처리방침
 </div>
 <div class="container business_info">
 	상호명:Bella's Kitchen | 대표 : 박타미 | 개인정보관리책임자 : 박타미 | 전화 : 01032761810 | 이메일 : hello@bellaskitchen.co.kr
 	<br/>
 	주소 : 서울특별시 용산구 이태원동 212-38 | 사업자등록번호 : - | 통신판매 : -
 </div>
 <div class="container">
 	OUR FOOD IS MADE WITH ♥ IN SEOUL
 </div>
</div>
</body>
</html>