let totalPrice = 0;
$(document)
.ready(function(){
})
.on('click','#noLoginAddCart',function(){ // 비 로그인 상태로 장바구니 담기 클릭
	if ( !confirm("로그인이 필요한 페이지입니다.\n로그인 페이지로 이동하시겠습니까?") ) return false;
	document.location = '/login'
})
.on('click','#noLoginOrder',function(){ // 비 로그인 상태로 구매하기 클릭
	if ( !confirm("로그인이 필요한 페이지입니다.\n로그인 페이지로 이동하시겠습니까?") ) return false;
	document.location = '/login'
})

.on('change','#size',function(){ // 사이즈 선택시
	totalPrice = parseInt($('#price').html().split(" ")[0]);
	
	if( $(this).val() == '사이즈 선택' ) {
		alert('선택할 수 없는 사이즈 입니다.');
		return false;
	}
	
	let qtyAndPrice = '<span id=size>' + $(this).val() + '</span><br><button id="minus" class="btn btn-outline-dark">'
							+ '-</button> &nbsp; <input type=number id="qty" value=1 min=1 max=5 maxlength=1 style="width:40px;"> &nbsp; <button id="plus" class="btn btn-outline-dark">+</button>'
							+ '<hr> <b>총 상품 금액</b> : <span id=total>' + totalPrice + '</span>원';
							
	$('#qtyAndPrice').html(qtyAndPrice);
		console.log('img: ' + $('#img').val() + '\n상품명:'+ $('#prodName').text() +'\n 사이즈:'  + $('#size').val() + '\n 수량 : ' + $('#qty').val() + '\n 토탈:' + $('#total').text() +'\n 유저명:' + $('#userName').text())
})

.on('click','#plus',function(){ // + 버튼 클릭
	if( parseInt( $('#qty').val() ) > 5 ) {
		alert("최대 주문 수량은 5개입니다.");
		$('#qty').val(5);
		return false;
	}
	$('#qty').val( parseInt( $('#qty').val()) + 1 );
	totalPrice += parseInt($('#price').html().split(" ")[0]);
	$('#total').text(totalPrice);
})
.on('click','#minus',function(){ // - 버튼 클릭
	if( parseInt( $('#qty').val() ) <= 1 ) {
		alert("최소 주문 수량은 1개입니다.");
		$('#qty').val(1);
		return false;
	}
	$('#qty').val( parseInt( $('#qty').val()) - 1 );
	totalPrice -= parseInt($('#price').html().split(" ")[0]);
	$('#total').text(totalPrice);
})

.on('click','#okLoginOrder',function(){ // 로그인 상태로 구매하기 클릭
	$.ajax({ url: '/order', data: { img: $('#img').val(), prodName: $('#prodName').text(), size: $('#size').val(), price: $('#total').text(),
											qty: $('#qty').val(), userName: $('#userName').text() }, type: 'post', dataType: 'text',
				success: function(data){
					if ( data == "1") {
						document.location = '/payment';
					}
				}, error: function(){
					alert('인서트 에러!!');
				}
	})
})
.on('click','#okLoginAddCart',function(){ // 로그인 상태로 장바구니 담기 클릭
	
})