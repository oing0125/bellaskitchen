/**
 * 
 */
var csrftoken;
$(function(){
	csrftoken = getCookie('csrftoken');
	fnInitLogin();
	fnAddEvent();
});

function fnAddEvent(){
	$("input[type=text]").keyup(function(e){
		if (e.keyCode == 13) {
			$("#btnNonLogin").click();
		}
	})
	
	$("#btnNonLogin").click(function(){
		var userNm = $("#username").val().trim();
		var email = $("#email").val().trim();
		if(userNm == ""){
			alert("이름을 입력해주세요.");
			$("#username").focus();
			return;
		}
		if(email == ""){
			alert("이메일을 입력해주세요.");
			$("#email").focus();
			return;
		}
		
		if(!$("#use_agree").is(":checked")){
			alert("개인정보 및 이용약관에 동의하셔야 합니다.");
			return;
		}
		if(!$("#over_14").is(":checked")){
			alert("만 14세 이상만 주문할 수 있습니다.");
			return;
		}
		
		var authObj = {
			login_tp : 'none',
			name : userNm,
			email : email
		};
		
		$.ajax({
        	type:'POST',
        	url:'/login/',
        	datatype : "json",
        	data : authObj,
        	beforeSend: function(xhr, settings) {
                xhr.setRequestHeader("X-CSRFToken", csrftoken);
            },
        	success:function(data, status, xhr){
        		window.location.href = "/register";
        	},
        	error:function(xhr, status, error){
        		alert("로그인 중 에러가 발생하였습니다.");
        		window.location.href = "/";
        	}
        })
	});
	
	$(".go_home").click(function(){
		window.location.href = "/";
	})
}

function fnInitLogin(){
	Kakao.init('ecda5c343523879374178baca1a11cbe');
	var csrftoken = getCookie('csrftoken');
	Kakao.Auth.createLoginButton({
      container: '#kakao-login-btn',
      success: function(authObj) {
    	authObj.login_tp = 'kakao';
		$.ajax({
			type:'POST',
			url:'/login/',
			datatype : "json",
			data : authObj,
			beforeSend: function(xhr, settings) {
		        xhr.setRequestHeader("X-CSRFToken", csrftoken);
		    },
			success:function(data, status, xhr){
				window.location.href = "/register";
			},
			error:function(xhr, status, error){
				alert("로그인 중 에러가 발생하였습니다.");
				window.location.href = "/";
			}
		})
      },
      fail: function(err) {
    	 alert("로그인 중 에러가 발생하였습니다.");
    	 window.location.href = "/";
      }
    });
}

//using jQuery
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
