/**
 * 
 */

$(function(){
	fnInitLogin();
	fnAddEvent();
});

function fnAddEvent(){
	$(".btn_go_register").click(function(){
		window.location.href = "/register?redirectUrl=/register";
	});
	
	$(".go_home").click(function(){
		window.location.href = "/";
	})
}

function fnInitLogin(){
	Kakao.init('ecda5c343523879374178baca1a11cbe');
	var csrftoken = getCookie('csrftoken');;
	Kakao.Auth.createLoginButton({
      container: '#kakao-login-btn',
      success: function(authObj) {
    	  console.log(authObj);
        $.ajax({
        	type:'POST',
        	url:'/login/',
        	datatype : "json",
        	data : authObj,
        	beforeSend: function(xhr, settings) {
                xhr.setRequestHeader("X-CSRFToken", csrftoken);
            },
        	success:function(data, status, xhr){
        		alert(data);
        	},
        	error:function(xhr, status, error){
        		alert("에러 발생");
        		console.log(xhr);
        		console.log(status);
        		console.log(error);
        	}
        })
      },
      fail: function(err) {
         alert(JSON.stringify(err));
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
