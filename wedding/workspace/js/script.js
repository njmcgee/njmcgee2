$(function() {			
	$('#coming').hide();		
	$('#not-coming').hide();
			
	// Check for selection of non mandatory fieldsets and bring in associated fields
	$("#yes").click(function(){
		$('#not-coming').slideUp('fast');
		$('#coming').slideDown('fast');
		return false;
	});
	$("#no").click(function(){
		$('#coming').slideUp('fast');
		$('#not-coming').slideDown('fast');
		return false;
	});
	
});

