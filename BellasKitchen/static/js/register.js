/**
 * 
 */

IMP.init('');

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
			$(".nextDogWeight").show();
		}else{
			$(".nextDogWeight").hide();
		}
	});
	
	$(".food_info_dtl").click(function(){
		$(".food_info_dtl").not(this).removeClass("selected");
		$(this).addClass("selected");
		$(".food_info_dtl").not(this).find(".food_img_area .title_img_select").hide();
		$(".food_info_dtl").not(this).find(".food_img_area .title_img").show();
		$(this).find(".food_img_area .title_img_select").show();
		$(this).find(".food_img_area .title_img").hide();
	});
	
	$("#btn_order").click(function(){
		IMP.request_pay({
		    pg : 'html5_inicis',
		    pay_method : 'card',
		    merchant_uid : 'merchant_' + new Date().getTime(),
		    name : '주문명:결제테스트',
		    amount : 14000,
		    buyer_email : 'iamport@siot.do',
		    buyer_name : '구매자이름',
		    buyer_tel : '010-1234-5678',
		    buyer_addr : '서울특별시 강남구 삼성동',
		    buyer_postcode : '123-456'
		}, function(rsp) {
		    if ( rsp.success ) {
		        var msg = '결제가 완료되었습니다.';
		        msg += '고유ID : ' + rsp.imp_uid;
		        msg += '상점 거래ID : ' + rsp.merchant_uid;
		        msg += '결제 금액 : ' + rsp.paid_amount;
		        msg += '카드 승인번호 : ' + rsp.apply_num;
		    } else {
		        var msg = '결제에 실패하였습니다.';
		        msg += '에러내용 : ' + rsp.error_msg;
		    }

		    alert(msg);
		});
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
