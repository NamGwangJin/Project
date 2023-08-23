let price = 0;
let sale = 0;
let total = 0;
$(document)
.ready(function(){
	$('#checked').hide();
})
.on('change','input[name=checkbox]',function(){
	$('#checked').show();
	price = 0;
	$('input[name=checkbox]:checked').each(function(){
		price += parseInt($(this).parent().parent().find("td:eq(3)").text());
		total = price - sale;
		$('#checked').find('td:first').html('<strong style="font-size:30px;">'+price+'</strong>');
		$('#checked').find('td:eq(2)').html('<strong style="font-size:30px;">'+sale+'</strong>');
		$('#checked').find('td:eq(4)').html('<strong style="font-size:30px;">'+total+'</strong>');
	})
})