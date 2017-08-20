/**
 * 
 */
$(function(){
	fnAddEvent();
});


function fnAddEvent(){
	
	$(".go_home").click(function(){
		window.location.href = "/";
	});
	$("#menu_icon").click(function(){
		if($(".menu_nav").css("display")=='none'){
			$(".menu_nav").show();
		}else{
			$(".menu_nav").hide();
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
