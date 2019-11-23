<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Student List::</title>
<style>
	body{
		background-color:honeydew;
	}
	h1{
		font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif
	}
	td{
		font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif
	}
	
	
	</style>
</head>
<body><center>
<h1>Student Enrolled For Scholarship</h1>
	<table border="1">
		<th>Application ID</th>
		<th>Aadhaar Number</th>
		<th>Institute Name</th>
		<th>Description Level One</th>
		<th>Description Level Two</th>
		<th>Description Level Three</th>
		<th>Details</th>
		<th colspan="2">Action</th>
		<c:forEach items="${studMinList}" var="list">
			<tr>
				<td>${list.applicationId}</td>
				<td>${list.aadhaarNumber}</td>
				<td>${list.instituteName}</td>
				<td>${list.descriptionLevelOne}</td>
				<td>${list.descriptionLevelTwo}</td>
				<td>${list.descriptionLevelThree}</td>

				<td><a
					href="getApplicationDetails?applicationId=${list.applicationId}">Get
						Details</a></td>
				<td><input class="button" type="submit"
					value="Verify And Approve"
					onclick="window.location.href='approveStudMinApplication/${list.applicationId}/Approved'"></td>
				<td><input class="button" type="submit" value="Reject"
					onclick="window.location.href='approveStudMinApplication/${list.applicationId}/Rejected'"></td>
			</tr>
		</c:forEach>
	</table><br><br>
	<a href="javascript:history.back()">Go Back</a>
	</center>
</body>
</html>