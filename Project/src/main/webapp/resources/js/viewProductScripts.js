let totalPrice = 0;
$(document)
.ready(function(){
})
.on('change','#size',function(){ // 사이즈 선택시
	totalPrice = parseInt($('#price').html().split(" ")[0]);
	
	if( $(this).val() == '사이즈 선택' ) {
		alert('선택할 수 없는 사이즈 입니다.');
		return false;
	}
	
	let qtyAndPrice = $(this).val() + '<br><button id="minus" class="btn btn-outline-dark">'
							+ '-</button> &nbsp; <input type=number id="qty" value=1 min=1 max=5 maxlength=1 style="width:40px;"> &nbsp; <button id="plus" class="btn btn-outline-dark">+</button>'
							+ '<hr> <b>총 상품 금액</b> : <span id=total>' + totalPrice + '</span>원';
							
	$('#qtyAndPrice').html(qtyAndPrice);
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