/**
 * 
 */

$(function(){
	fnAddEvent();
});

function fnAddEvent(){
	$(".btn_go_register").click(function(){
		window.location.href = "/register?redirectUrl=/register";
	});
	
	$(".go_home").click(function(){
		window.location.href = "/";
	});
	
	// 강아지 이름 입력 시
	$("#txtDogNm").keydown(function(){
		if($("#txtDogNm").val().trim().length > 0){
			$("#nextDogNm").show();
		}else{
			$("#nextDogNm").hide();
		}
	});
	
	// 강아지 나이 입력 시
	$("#txtDogAge").keydown(function(){
		if($("#txtDogAge").val().trim().length > 0){
			$("#nextDogAge").show();
		}else{
			$("#nextDogAge").hide();
		}
	});

	// 성별 선택
	$("#drop_sex_btn").click(function(){
		$("#dropdown_sex .dropdown-content").show();
	});
	
	$("#dropdown_sex .dropdown-content a").click(function(){
		$("#dogGender").html($(this).html());
		$("#txtDogGender").val($(this).html());
		$("#dropdown_sex .dropdown-content").hide();
		if($(this).html() == '여자'){
			$("#isPregArea").show();
		}else{
			$("#isPregArea").hide();
		}
		$("#isPreg").prop("checked", false);
		$("#txtDogAge").focus();
	});
	
	// 성별 선택
	$("#drop_goja_btn").click(function(){
		$("#dropdown_goja .dropdown-content").show();
	});
	
	$("#dropdown_goja .dropdown-content a").click(function(){
		$("#dogGoja").html($(this).html());
		$("#chkGoja").val($(this).html());
		$("#dropdown_goja .dropdown-content").hide();
	});
	
	// 강아지 몸무게
	$("#txtDogWeight").keydown(function(){
		if($("#txtDogWeight").val().trim().length > 0){
			$("#nextDogWeight").show();
		}else{
			$("#nextDogWeight").hide();
		}
	});}

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
