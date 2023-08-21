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
			}
		},
		error: function(){
			alert('로그인 에러 !')
		}
	})
})