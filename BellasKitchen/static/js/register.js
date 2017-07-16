/**
 * 
 */

$(function(){
	alert($("#name").val()+"으로 로그인");
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
