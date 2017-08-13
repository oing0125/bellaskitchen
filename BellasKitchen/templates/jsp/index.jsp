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
<link href='{% static "css/index.css" %}' rel='stylesheet' type='text/css'>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script type="text/javascript" src="{% static "js/index.js" %}"></script>
<title>Bella's Kitchen</title>
</head>
<body>
<div class="container text-center main_top">
 <div class="header">
  <img src="{% static "/image/White_Logo.png" %}" class="img-rounded" alt="Bellas"/>
 </div>
	<br/>
 <div class="main_top_txt">
  <h1>강아지 사료의 새로운 패러다임</h1>
  <h2>신선하고 건강한 재료로 조리한 진짜 음식</h2>
  <button class="btn btn_color_go_register btn_go_register">Register Now</button>
 </div>
</div>

<div class="container why_bella bgcolor_gray">
 <div class="container text-center">
 	<h1>WHY BELLA</h1>	
 </div>
 <br/>
 <div class="container text-center">
  <div class="row">
    <div class="col-sm-4">
      <img src="{% static "/image/why_bella_1.png" %}" class="img-rounded" alt="pet" width="104" height="106">
      <h3>신선하고 정직한 재료</h3>
      <p>사용한 재료를 직접 눈으로 확인해 보세요</p>
    </div>
    <div class="col-sm-4">
      <img src="{% static "/image/why_bella_2.png" %}" class="img-rounded" alt="pet" width="94" height="106">
      <h3>반려견 맞춤형 레시피</h3>
      <p>반려견의 몸무게와 식성을 고려하여 조리합니다.</p>
    </div>
    <div class="col-sm-4">
      <img src="{% static "/image/why_bella_3.png" %}" class="img-rounded" alt="pet" width="114" height="106">
      <h3>주방에서 직접 조리</h3>
      <p>최상의 상태를 위해 주문 후 직접 요리하여 배송합니다.</p>
    </div>
  </div>
 </div>
</div>

<div class="container bella_phelosophy">
 <div class="row">
   <div class="col-sm-7 text-center philosophy_left">
 	<h1>우리의 반려견도 건강한 음식을 먹는 행복을 누릴 권리가 있습니다.</h1>
     <br/>
     <p>사람들은 건강한 삶을 위해 신선한 음식을 골고루 섭취합니다.<p/>
     	마찬가지로 반려견도 건강한 삶을 위해 그들의 생물학적 특성에 맞춘
     	신선하고 건강한 음식을 섭취할 방법이 필요합니다.</p>
     <p>하루 &#8361;4000이면 사랑하는 당신의 반려견에게 건강한 음식을 먹일 수 있습니다.</p>
   </div>
   <div class="col-sm-5 text-left philosophy_right" style="padding-top: 15px;">
	 <img src="{% static "/image/main_food.jpg" %}" class="img-rounded" alt="pet" width="304" height="256">
   </div>
 </div>
</div>

<div class="container bella_review bgcolor_gray">
 <div class="container text-center">
 	<h1>DOGS LOVE US</h1>
 </div>
 <div class="container text-center">
  <div class="row">
    <div class="col-sm-4">
		<fieldset class="rating">
		    <input type="radio" id="star1" name="rating" value="1" /><label class = "full" for="star1" title="Sucks big time - 1 star"></label>
		    <input type="radio" id="star2" name="rating" value="2" /><label class = "full" for="star2" title="Kinda bad - 2 stars"></label>
		    <input type="radio" id="star3" name="rating" value="3" /><label class = "full" for="star3" title="Meh - 3 stars"></label>
		    <input type="radio" id="star4" name="rating" value="4" /><label class = "full" for="star4" title="Pretty good - 4 stars"></label>
		    <input type="radio" id="star5" name="rating" value="5" /><label class = "full" for="star5" title="Awesome - 5 stars"></label>
		</fieldset>
      <h3>정말 맛있게 잘 먹어요!</h3>
      <p>입맛이 까다로워 항상 조금먹어 걱정이었는데
      	정말 하나도 남기지 않고 잘 먹습니다.
      	</p>
      <p>(이O지, 동동이 ♂)</p>
    </div>
    <div class="col-sm-4">
		<fieldset class="rating">
		    <input type="radio" id="star1" name="rating" value="1" /><label class = "full" for="star1" title="Sucks big time - 1 star"></label>
		    <input type="radio" id="star2" name="rating" value="2" /><label class = "full" for="star2" title="Kinda bad - 2 stars"></label>
		    <input type="radio" id="star3" name="rating" value="3" /><label class = "full" for="star3" title="Meh - 3 stars"></label>
		    <input type="radio" id="star4" name="rating" value="4" /><label class = "full" for="star4" title="Pretty good - 4 stars"></label>
		    <input type="radio" id="star5" name="rating" value="5" /><label class = "full" for="star5" title="Awesome - 5 stars"></label>
		</fieldset>
      <h3>건강해지는 느낌이에요</h3>
      <p>영양소를 골고루 섭취해서 그런지, 털이 윤기가 나고 더 활발해진 것 같아요</p>
      <p>(이O미, 민이 ♀)</p>
    </div>
    <div class="col-sm-4">
		<fieldset class="rating">
		    <input type="radio" id="star1" name="rating" value="1" /><label class = "full" for="star1" title="Sucks big time - 1 star"></label>
		    <input type="radio" id="star2" name="rating" value="2" /><label class = "full" for="star2" title="Kinda bad - 2 stars"></label>
		    <input type="radio" id="star3" name="rating" value="3" /><label class = "full" for="star3" title="Meh - 3 stars"></label>
		    <input type="radio" id="star4" name="rating" value="4" /><label class = "full" for="star4" title="Pretty good - 4 stars"></label>
		    <input type="radio" id="star5" name="rating" value="5" /><label class = "full" for="star5" title="Awesome - 5 stars"></label>
		</fieldset>
      <h3>사람도 먹을만 하네요!</h3>
      <p>사람이 먹어봐도 된다고 그래서 조금 먹어봤는데 사료만
      	먹던 저희 강아지가 잘먹는 이유가 있었네요</p>
      <p>(문O비, 짱아 ♂)</p>
    </div>
  </div>
 </div>
</div>

<div class="container bottom_btn bgcolor_yellow text-center">
  <button class="btn btn_register_bottom btn_go_register">Register Now</button>
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