$(document)
.on('click','#btnLogin',function(){
	document.location = '/login';
})
.on('click','#btnLogout',function(){
	document.location = '/logout';
})
.on('click','#noLoginCart',function(){
	if ( !confirm("로그인이 필요한 페이지입니다.\n로그인 페이지로 이동하시겠습니까?") ) return false;
	document.location = '/login'
})