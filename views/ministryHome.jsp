<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="sF"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

		<title> Ministry HomePage</title>
<style>
	body{
	background-color:#f1f1f1;
}
h1
		{
	
			font-size: 21px;
			text-align: center;
		
		 font-family: "Georgia",Times, serif;
		}
		.formset
		{
			margin-left: 90%;
		}
		
	body{
	background-color:#f1f1f1;
}
.header {
  background-color: #f1f1f1;
  padding: 0.5%;
  text-align: center;
}

.headerImage{
    text-align:left;

}

#mainLogo{
  margin-left: 24%;
    
}
		
		{
				background-color: #f1f1f1;
			}
p
{
	color:red;
	font-weight: bold;
	
}	  
	
#bgimage {
  /* The image used */
  background-image: url("scholarship.jfif");

  /* Add the blur effect */
opacity: 0.5;
  filter: alpha(opacity=50);

  /* Full height */
  height: 100%;
  width: 100%;

  /* Center and scale the image nicely */
/*  background-position: center;*/
  background-repeat: no-repeat;
  background-size: cover;
}

.top-left {
  position: absolute;
  top: 8px;
  left: 16px;
}
	</style>
	</head>

<!--  <frameset rows="40%,70%" frameborder="0" />
<frame src="HEADER.html" />
<frameset cols="17%,83%">
<frame src="Links.html"/>
<frameset rows="600%,10%"/>
<frame name="main" src="HomePage.html"/>
<frame src="footer.html"/> -->

</frameset>		
	

</frameset>

	<body>    


		<div class="header">
  <h1>NATIONAL SCHOLARSHIP PORTAL</h1>
  <h1>Ministry HomePage</h1>
  <hr>
  <div class="headerImage">
    <a target="_blank" href="https://www.india.gov.in"><img src="${pageContext.request.contextPath}/resources/images/nationalEmblem.png" alt="MahaOnline"></a>
    <a target="_blank" href="https://www.maharashtra.gov.in"><img src="${pageContext.request.contextPath}/resources/images/logo.png" alt="Government of Maharashtra"></a>
    <img src="${pageContext.request.contextPath}/resources/images/dbtLogo.png" alt="DBT" style="width:27%;" id="mainLogo">
  	<h2>Login ID:${loginID}</h2> 
    </div>


<img src="${pageContext.request.contextPath}/resources/images/minBg.jpg" alt="bg" id="bgimage">
  <div class="top-left">	
 <!--  <p><sup>new</sup>Application Acceptance A.Y 2019-20 for Merit Schemes is from 15th October 2019 till 31st October 2019.</p>
        <p><sup>new</sup>Application Acceptance A.Y 2019-20 for Minority is from 1st November 2019 till 10th November 2019.</p>
        <p><sup>new</sup>Applications for Pragati Scholarship will be available after 11th of November.</p> 
    

<p><sup>new</sup> PG INDIRA GANDHI SCHOLARSHIP FOR SINGLE GIRL CHILD</p>
<p><sup>new</sup> PG SCHOLARSHIP FOR UNIVERSITY RANK HOLDERS(Ist and IInd RANK HOLDERS)</p>

<p><sup>new</sup> PG SCHOLARSHIP SCHEME FOR SC ST STUDENTS FOR PERSUING PROFESSIONAL COURSES</p>
<p><sup>new</sup> PG SCHOLARSHIP SCHEME FOR SC ST STUDENTS FOR PERSUING PROFESSIONAL COURSES</p>
<p><sup>new</sup> PG SCHOLARSHIP SCHEME FOR SC ST STUDENTS FOR PERSUING PROFESSIONAL COURSES</p>
 -->
</div>
</div>
  
<br>
<center>
<input type="button" value="Student List"
				onclick="window.location.href='getStuApplList'">
  View student application form</a><br/><br/>


<input type="button" value="Institue List"
		onclick="window.location.href='getInsList'">View institute Applications
		<td><input class="button" type="submit" value="Go to homePage"
		onclick="window.location.href='homePage'"></td>
		</center>
	</body>
</html>
	
