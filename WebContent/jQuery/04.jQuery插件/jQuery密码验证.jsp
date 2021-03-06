<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>Makes "field" required to be the same as #other</title>
<link rel="stylesheet"
	href="https://jqueryvalidation.org/files/demo/site-demos.css">

</head>
<body>
	<form id="myform">
		<input id="password" name="password" /> 
		<label for="password">Password</label>
		<br /> 
		<input class="left" id="password_again" name="password_again" />
		<label for="password_again">Again</label>
		<br />
		<input type="submit" value="Validate!">
	</form>
	<script src="https://code.jquery.com/jquery-1.11.1.min.js"></script>
	<script
		src="https://jqueryvalidation.org/files/dist/jquery.validate.min.js"></script>
	<script
		src="https://jqueryvalidation.org/files/dist/additional-methods.min.js"></script>
	<script>
		// just for the demos, avoids form submit
		jQuery.validator.setDefaults({
			debug : true,
			success : "valid"
		});
		$("#myform").validate({
			rules : {
				password : "required",
				password_again : {
					equalTo : "#password"
				}
			}
		});
	</script>
</body>
</html>
