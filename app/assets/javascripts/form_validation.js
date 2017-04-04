$(document).ready(function () {	
	$("#search-block").validate({
		debug: true,
		rules: {
			q: {required: true},
		}
	});
	$("#NewsletterSubscription").validate({
	debug: true,
	rules: {
		email: {required: true, email: true},
	}
	});
	$("input[type='checkbox']#removemailer").on('change', function(){
		$('#removemailertype').toggle();
	});
	$("input[type='checkbox']#addmailer").on('change', function(){
		$('#mailersubjects').toggle();
	});
	$("button[type='reset']").on('click', function(){
		location.reload();
	});

});
