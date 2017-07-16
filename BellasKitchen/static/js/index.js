/**
 * 
 */

$(function(){
	fnAddEvent();
});

function fnAddEvent(){
	$(".btn_go_register").click(function(){
		window.location.href = "/register";
	});
}