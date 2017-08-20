{% load static %}
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="icon" href="{% static "image/Favicon.png" %}" type="image/png"/>
<link rel="shortcut icon" type="image/png" href="{% static "image/Favicon.png" %}"/>
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=0, user-scalable=no, target-densitydpi=medium-dpi" />
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link href='https://fonts.googleapis.com/css?family=Source+Sans+Pro' rel='stylesheet' type='text/css'>
<link href='http://netdna.bootstrapcdn.com/font-awesome/3.2.1/css/font-awesome.css' rel='stylesheet' type='text/css'>
<link href='{% static "css/mypage.css" %}' rel='stylesheet' type='text/css'>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script type="text/javascript" src="https://service.iamport.kr/js/iamport.payment-1.1.2.js"></script>
<script src="//developers.kakao.com/sdk/js/kakao.min.js"></script>
<script type="text/javascript" src="{% static "js/mypage.js" %}"></script>
<title>Bella's Kitchen</title>
</head>
<body>
<input type="hidden" name="name" id="name" value="{{ request.session.name }}"></input>
<input type="hidden" name="login_tp" id="login_tp" value="{{ request.session.login_tp }}"></input>
<!-----------------------------------
	Header
------------------------------------->
	<div class="container header">
		<div class="fl">
			<img src="{% static "/image/White_Logo.png" %}" class="img-rounded go_home" alt="Bellas" />
		</div>
		<div class="fr">
			<div class="fr_menu_all">
				<ul>
					<li><a href="/">HOME</a></li> 
					<li class="mypage_btn"><a href="/mypage">MY PAGE</a></li>
					<li class="order_btn"><a href="/register">ORDER</a></li>
					<li class="logout_btn"><a href="/logout">LOGOUT</a></li>
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
			<a href="/mypage" class="mypage_btn">MY PAGE</a>
		</div>
		<div class="menu_nav_content">
			<a href="/register" class="order_btn">ORDER</a>
		</div>
		<div class="menu_nav_content">
			<a href="/logout" class="logout_btn">LOGOUT</a>
		</div>
	</div>
<!-----------------------------------
	main
------------------------------------->
<div class="container mypage_main">
	<div class="row">
		<div class="col-sm-2 fl">
			<ul class="nav nav-pills nav-stacked">
			  <li><a data-toggle="tab" href="#my_info">내 정보</a></li>
			  <li class="active"><a data-toggle="tab" href="#order_info">주문정보</a></li>
			</ul>
		</div>
		<div class="col-sm-10 fr">
			<div class="tab-content">
			  <div id="my_info" class="tab-pane fade">
			  	<!-- Personal Information -->
			  	<div class="my_info_title">
			  		<h2>Personal Information</h2>
			  	</div>
			  	<div class="my_info_content">
				  	<h3>Name</h3>
				  	<p>정병철</p>
			  	</div>
			  	<div class="my_info_content">
				  	<h3>Email</h3>
				  	<p>oing0125@gmail.com</p>
			  	</div>
			  	
			  	<br/>
			  	
			  	<!-- Pet Information -->
			  	<div class="my_info_title">
			  		<h2>Pet Information</h2>
			  	</div>
			  	<div class="my_info_content">
				  	<h3>이름</h3>
				  	<p>클로이</p>
			  	</div>
			  	<div class="my_info_content">
				  	<h3>성별</h3>
				  	<p>여자</p>
			  	</div>
			  	<div class="my_info_content">
				  	<h3>나이</h3>
				  	<p>11살</p>
			  	</div>
			  	<div class="my_info_content">
				  	<h3>몸무게</h3>
				  	<p>22kg</p>
			  	</div>
			  	<div class="my_info_content">
				  	<h3>중성화수술여부</h3>
				  	<p>O</p>
			  	</div>
			  </div>
			<div id="order_info" class="tab-pane fade in active">
				<div class="my_info_title">
			  		<h2>Order History</h2>
			  	</div>
			  	<div class="order_table">
			  		<table class="table table-bordered">
					    <thead>
					      <tr>
					        <th>주문일자</th>
					        <th>주문정보</th>
					        <th>주문상태</th>
					      </tr>
					    </thead>
					    <tbody>
					      <tr>
					        <td>2017/08/01</td>
					        <td>
					        	<p>클로이 에게 닭고기 Bella's special 10일분</p>
					        </td>
					        <td>
					        	<p class="delivery_status">배송중</p>
					        	<p/>
					        	(배송예정일:2017/08/22)
					        </td>
					      </tr>
					      <tr>
					        <td>2017/07/22</td>
					        <td>
					        	<p>츄이 에게 소고기 Bella's special 7일분</p>
					        </td>
					        <td class="delivery_status">배송완료</td>
					      </tr>
					    </tbody>
					  </table>
			  	</div>
			</div>
		</div>
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