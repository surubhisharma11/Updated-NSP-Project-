<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="sF"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

		<title>Institute HomePage</title>
<style>
	body{
	background-color:#f1f1f1;
}
h1
		{
	
			font-size: 21px;
			text-align: center;
		
		 font-family: "Georgia",Times, serif;
		 color: white
		}
		.formset
		{
			margin-left: 90%;
			color: white
		}
		
	body{
	background-color:#072d4e;
}
.header {
  background-color: #072d4e;
  padding: 0.5%;
  text-align: center;
}

.headerImage{
    text-align:left;

}

#mainLogo{
  margin-left: 24%;
    
}
		
	
	
#bgimage {
  /* The image used */
  background-image: url("scholarship.jfif");

  /* Add the blur effect */



  /* Full height */
  height: 40%;
  width: 70%;

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

input.btn{
    background-color: #4CAF50; /* Green */
  border: none;
  color: white;
  position: relative;
  left:2%;
  top:100px;
  padding : 16px 32px;

  text-align: center;
  text-decoration: none;
  
  font-size: 16px;
  margin: 4px 2px;
  -webkit-transition-duration: 0.4s; /* Safari */
  transition-duration: 0.4s;
  cursor: pointer;
  
 
  
}

input.button{
    background-color: #4CAF50; /* Green */
  border: none;
  color: white;
  position: relative;
  left:10%;
  top:120px;
  padding : 16px 32px;

  text-align: center;
  text-decoration: none;
  
  font-size: 16px;
  margin: 4px 2px;
  -webkit-transition-duration: 0.4s; /* Safari */
  transition-duration: 0.4s;
  cursor: pointer;
  
 
  
}
img.tata{
width:20%;
height: 30%;
position: absolute;
right:2%;
}
@-moz-keyframes blink {
    0% {
        opacity:1;
    }
    50% {
        opacity:0;
    }
    100% {
        opacity:1;
    }
} 

@-webkit-keyframes blink {
    0% {
        opacity:1;
    }
    50% {
        opacity:0;
    }
    100% {
        opacity:1;
    }
}
/* IE */
@-ms-keyframes blink {
    0% {
        opacity:1;
    }
    50% {
        opacity:0;
    }
    100% {
        opacity:1;
    }
} 
/* Opera and prob css3 final iteration */
@keyframes blink {
    0% {
        opacity:1;
    }
    50% {
        opacity:0;
    }
    100% {
        opacity:1;
    }
} 
img.tata {
    -moz-animation: blink normal 5s infinite ease-in-out; /* Firefox */
    -webkit-animation: blink normal 5s infinite ease-in-out; /* Webkit */
    -ms-animation: blink normal 5s infinite ease-in-out; /* IE */
    animation: blink normal 5s infinite ease-in-out; /* Opera and prob css3 final iteration */
}
img.logo{
height: 10%;
position: absolute;
top: 4%;
left: 3%;
}
p{
	position: absolute;
	left:4%;
	bottom: 7%;
	color: white;
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
  <h1>Institute HomePage</h1>
  <img class="logo" src="${pageContext.request.contextPath}/resources/images/emblem.png" alt="logo">
  <hr>
  <div class="headerImage">
    
   
  	<h2 style="color:white">Login ID:${loginID}</h2> 
    </div>



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
<img class="tata" src="C:\Users\pcuser\Desktop\NSP PROJECT\images\tat.jpg">
<center>
<input type="button" class="btn" value="Student List"
				onclick="window.location.href='getStudentApplicationList'">
</a><br/><br/>
</center>
<p>All new institutes which comes under state government is to be registered under the portal for the preocessing of scholarship schemes. <br>
All forms from the candidates of the specified institutes must be validated thoroughly before passing the forms for further validations.<br>
The rejected forms cannot be applied again in the portal for validation.<br>
Proper validation of forms are encouraged in order to provude scholarship for the deserving candiadates.</p>
	</body>
</html>
	<!-- <input type="button" value="Student List"
				onclick="window.location.href='getStudentApplicationList'">
				 -->
				 
	<%-- <sF:form method="POST" commandName="studList"
		action="getStudentApplicationList">
		<table align="center">
			<tr>
				<td colspan="3" align="center"><input class="button" 
					type="submit" value="Get scholarship application details"></td>
			</tr>
		</table>
	</sF:form> --%>
