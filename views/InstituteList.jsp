<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">


<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Registered Institute List::</title>
<style>
        body{
            background-color:lightblue;
        }
        h1{
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif
        }
        td{
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif
        }
        
        
        </style>
</head>
<body><center><h1>Registered Institute List</h1>
	<table border="1">
		<th>Institute Code</th>
		<th>Institute Category</th>
		<th>Institute Name</th>
		<th>Action</th>
		<c:forEach items="${insList}" var="insList">
			<tr>
				<td>${insList.instituteCode}</td>
				<td>${insList.instituteCategory}</td>
				<td>${insList.instituteName}</td>
				<td><a href="getInstList?instituteCode=${insList.instituteCode}">Get
						Details</a></td>
						
			</tr>
		</c:forEach>
	</table><br><br>
	<td><input class="button" type="submit" value="Go to homePage"
		onclick="window.location.href='minHome'"></td><br><br>
		<a href="javascript:history.back()">Go Back</a>
</center>
</body>
</html>