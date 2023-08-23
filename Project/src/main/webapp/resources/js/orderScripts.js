$(document)
.on('click','#orderCancle',function(){ // 주문 취소 눌렀을 때
	if ( !confirm("정말 주문을 취소할까요?") ) return false;
	
	$.ajax({ url:'/deleteBuy', data: { id : $('#userid').val() }, type: 'post', dataType: 'text',
		success: function(data){
			document.location = '/viewProduct'
		},
		error: function(){
			alert("error!")
		}
	})
})