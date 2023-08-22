$(document)
.on('click','#goHome',function(){
	document.location = '/loginToHome'
})
.on('click','#SignUp',function(){
	document.location = '/signUp'
})
.on('click','#login',function(){
	$.ajax({url: '/doLogin', data: { id : $('#id').val(), pw : $('#pw').val() }, type: 'post', dataType: 'json',
		success: function(data){
			if(data == "1") {
				document.location ='/'
			} else {
				alert('입력하신 회원정보와 일치하는 정보가 없습니다.')
			}
		},
		error: function(){
			alert("오류가 발생했습니다. 다시 시도해 주세요.")
		}
	})
})