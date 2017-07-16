<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>naver login</title>
<script type="text/javascript" src="https://static.nid.naver.com/js/naverLogin_implicit-1.0.3.js" charset="utf-8"></script>
<script type="text/javascript" src="http://code.jquery.com/jquery-1.11.3.min.js"></script>
</head>
<body>
<script type="text/javascript">
  var naver_id_login = new naver_id_login("hsFofi2FuMQGtiJ0jkgZ", "http://127.0.0.1:8000/login_naver");
  var access_token = naver_id_login.oauthParams.access_token;
  // 네이버 사용자 프로필 조회
  naver_id_login.get_naver_userprofile("naverSignInCallback()");
  
  function getCookie(name) {
      var cookieValue = null;
      if (document.cookie && document.cookie !== '') {
          var cookies = document.cookie.split(';');
          for (var i = 0; i < cookies.length; i++) {
              var cookie = jQuery.trim(cookies[i]);
              // Does this cookie string begin with the name we want?
              if (cookie.substring(0, name.length + 1) === (name + '=')) {
                  cookieValue = decodeURIComponent(cookie.substring(name.length + 1));
                  break;
              }
          }
      }
      return cookieValue;
  }
  
  // 네이버 사용자 프로필 조회 이후 프로필 정보를 처리할 callback function
  function naverSignInCallback() {
	  var email = naver_id_login.getProfileData('email');
	  var nickname = naver_id_login.getProfileData('nickname');
	  var age = naver_id_login.getProfileData('age');
	  var csrftoken = getCookie('csrftoken');
	  var paramObj = {
			  login_tp : "naver",
			  access_token : access_token,
			  email : email,
			  name : nickname
	  }
	  $.ajax({
			type:'POST',
			url:'/login/',
			datatype : "json",
			data : paramObj,
			beforeSend: function(xhr, settings) {
		        xhr.setRequestHeader("X-CSRFToken", csrftoken);
		    },
			success:function(data, status, xhr){
				opener.fnCallbackNaverLogin("success");
				window.close();
			},
			error:function(xhr, status, error){
				opener.fnCallbackNaverLogin("error");
				window.close();
			}
		})
  }
</script>
</body>
</html>