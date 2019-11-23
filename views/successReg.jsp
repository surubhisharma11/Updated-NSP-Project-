<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>

<html>
<head>
<meta charset="ISO-8859-1">
<title>Succesfully Registered ::</title>
<style>
	body{
		background-color:rgb(221, 65, 17);
	}
	h1{
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        color: white;
	}
	h3,h2{
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        color: white
	}
	</style>
</head>
<body>
	<center>
		<h1>${message}</h1>
		<h1>You have successfully submitted your Registration Form ! </h1>
		<br>
		<h3>Remember your Login ID and Password for filling up your
			application form .</h3>
		Login ID:${registration.loginID} ${studentDetails.loginID} <br> <br>
		<input class="button" type="submit" value="Click here to Login "
			onclick="window.location.href='showLoginForm'" align="middle">

			  </center>

</body>
</html>