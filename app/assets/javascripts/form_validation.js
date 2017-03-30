
$(document).ready(function () {
	alert("test");
	$("#NewsletterSubscription").validate({
	debug: true,
	rules: {
		email: {required: true, email: true},
	}
	});
});