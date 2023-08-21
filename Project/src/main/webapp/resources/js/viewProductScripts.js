$(document)
.ready(function(){
	console.log($('#price').html())
})
.on('change','#size',function(){
	if( $(this).val() == '사이즈 선택' ) {
		alert('선택할 수 없는 사이즈 입니다.');
		return false;
	}
	let qtyAndPrice = $(this).val() + '<br><button class="btn btn-outline-dark">'
							+ '-</button> &nbsp; <input type=text id="qty" value=0> &nbsp; <button class="btn btn-outline-dark">+</button>'
							+ '<hr> <b>총 상품 금액</b> : ' + $('#price').html()
	$('#qtyAndPrice').html(qtyAndPrice);
})