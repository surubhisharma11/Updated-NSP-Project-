<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Change Status ::</title>
<style>
		body{
			background-color: lightgrey;
	
	}
	
	</style>
</head>
<body>
	<sF:form method="POST" commandName="status" action="statusSubmit">
		<select id="status" name="status">
			<option value="approved">"approved"</option>
			<option value="pending">pending</option>
			<option value="reject">reject</option>
		</select>
	</sF:form>
</body>
</html>
