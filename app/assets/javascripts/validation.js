$(document).ready(function() {
	$(".new_user").validate({
    rules: { 'user[email]': { required: true, email: true } },
    messages: { 'user[email]': { required: "", email: "" } }
  });
});