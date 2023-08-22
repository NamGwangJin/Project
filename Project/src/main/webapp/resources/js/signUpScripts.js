var idRegExp = /^[a-z0-9]{8,16}$/; // 아이디
var pwRegExp = /^[a-zA-z0-9]{8,16}$/; // 비밀번호
$(document)
.on('submit','#formSignUp',function(){
	if ($('#id').val()==''){
		alert("아이디를 입력해주세요.");
		return false;
	} else if ( !idRegExp.test( $("#id").val() ) ) {
		alert("아이디의 형식을 확인해주세요.")
		return false;
	} else if ( $('#checkOk').text() != "사용 가능한 아이디입니다." ) {
		alert("아이디 중복확인을 해주세요.")
		return false;
	}
	
	if ($('#pw1').val()==''){
		alert("비밀번호를 입력해주세요.");
		return false;
	} else if ($('#pw2').val()=='') {
		alert("비밀번호 확인을 입력해주세요.")
		return false;
	}  else if ( $('#pw1').val() != $('#pw2').val() ){
		alert("비밀번호와 비밀번호 확인이 같지 않습니다.")
		return false;
	} else if ( !pwRegExp.test($('#pw1').val()) && !pwRegExp.test($('#pw2').val() ) ){
		alert("비밀번호의 형식을 확인해주세요.")
		return false;
	}
	
	if($('#name').val() == '') {
		alert("실명을 입력해주세요.")
		return false;
	}
	
	if($('#mobile').val() == '') {
		alert("모바일 번호를 입력해주세요.")
		return false;
	}
	
	if($('#birthday').val() == '') {
		alert("생년월일을 선택해주세요.");
		return false;
	}
	return true;
})
.on('change','#id',function(){
	if ( !idRegExp.test( $(this).val() ) ) {
		$('#idvd').html('<small style="color:red;"><img src="/img/redcheck.png" style="width:20px;">아이디는 8자 이상, 16자 이하 영소문자,숫자만 입력 가능합니다.</small>');
	}
	if ( idRegExp.test( $(this).val() ) ) {
		$('#idvd').html('<small style="color:green;"><img src="/img/greencheck.png" style="width:20px;">올바른 아이디 형식입니다. 중복 확인 버튼을 클릭해주세요.</small>')
	}
})
.on('change','#pw1',function(){
	if ( !pwRegExp.test( $(this).val() ) ) {
		$('#pwvd').html('<small style="color:red;"><img src="/img/redcheck.png" style="width:20px;">비밀번호는 8자 이상, 16자 이하 영대소문자,숫자만 입력 가능합니다.</small>');
		return false;
	} else {
		if( $(this).val() == $('#pw2').val() ){
			$('#pwvd').html('<small style="color:green;"><img src="/img/greencheck.png" style="width:20px;">사용가능한 비밀번호입니다.</small>')
		} else {
			$('#pwvd').html('<small style="color:red;"><img src="/img/redcheck.png" style="width:20px;">비밀번호와 비밀번호 확인이 일치하지 않습니다.</small>');
		}
	}
})
.on('change','#pw2',function(){
	if ( !pwRegExp.test( $(this).val() ) ) {
		$('#pwvd').html('<small style="color:red;"><img src="/img/redcheck.png" style="width:20px;">비밀번호는 8자 이상, 16자 이하 영대소문자,숫자만 입력 가능합니다.</small>');
		return false;
	} else {
		if( $(this).val() == $('#pw1').val() ){
			$('#pwvd').html('<small style="color:green;"><img src="/img/greencheck.png" style="width:20px;">사용가능한 비밀번호입니다.</small>')
		} else {
			$('#pwvd').html('<small style="color:red;"><img src="/img/redcheck.png" style="width:20px;">비밀번호와 비밀번호 확인이 일치하지 않습니다.</small>');
		}
	}
})
.on('click','#check',function(){
	$.ajax({url:'/idCheck', data: { id: $('#id').val() }, type: 'post', dataType: 'text',
		success: function(data){
			if ( data == "1" ) {
				$('#idvd').html('<small style="color:green;"><img src="/img/redcheck.png" style="width:20px;">중복된 아이디가 있습니다. 다른 아이디를 사용해주세요.</small>');
				return false;
			} else {
				$('#idvd').html('<small id="checkOk" style="color:green;"><img src="/img/greencheck.png" style="width:20px;">사용 가능한 아이디입니다.</small>');
			}
		},
		error: function(){
			alert("알 수 없는 오류가 발생했습니다. 다시 시도해 주세요.")
		}
	})
})