var idRegExp = /^[a-z0-9]{8,16}$/; // 아이디
var pwRegExp = /^[a-zA-z0-9]{8,16}$/; // 비밀번호
$(document)
.on('submit','#formSignUp',function(){
	return true;
})
.on('input','#id',function(){
	if ( !idRegExp.test( $(this).val() ) ) {
		$('#idvd').html('<small style="color:red;"><img src="/img/redcheck.png" style="width:20px;">아이디는 8자 이상, 16자 이하 영소문자,숫자만 입력 가능합니다.</small>');
	}
	if ( idRegExp.test( $(this).val() ) ) {
		$('#idvd').html('<small style="color:green;"><img src="/img/greencheck.png" style="width:20px;">올바른 아이디 형식입니다.</small>')
	}
})
.on('input','#pw1',function(){
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
.on('input','#pw2',function(){
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