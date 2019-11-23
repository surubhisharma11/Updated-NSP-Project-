<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>

<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
body{
    background-color: peru;
}
h1{
    font-family: Cambria, Cochin, Georgia, Times, Times New Roman, serif;
    position: absolute;
    top: 20%;
    left: 23%;
    color: white;
}

h2{
    font-family: Cambria, Cochin, Georgia, Times, Times New Roman, serif;
    position: absolute;
    top: 50%;
    left: 12%;
    color: white
}
input.button{
  
    background-color: #4CAF50; /* Green */
  border: none;
  color: white;
  position: absolute;
  left:45%;
    bottom: 20%;
  padding : 16px 32px;

  text-align: center;
  text-decoration: none;
  
  font-size: 16px;
  margin: 4px 2px;
  -webkit-transition-duration: 0.4s; /* Safari */
  transition-duration: 0.4s;
  cursor: pointer;
  
 
  
}



input.button:hover {
  background-color: rgb(218, 82, 20);
  color: white;
}
}
</style>
</head>
<body>
	<center>
		<h1>You have successfully filled the Scholarship Form !</h1>
		<br>
		<br>
		<h2>Institue verification will be carrired out within a week,
			follwed by other procedures(if applicable).</h2>

		<input class="button" type="submit" id="goBack"
			value="Go Back to Home Page"
			onclick="window.location.href='homePage'">
	</center>
</body>
</html>