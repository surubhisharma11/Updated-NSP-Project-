
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Student Login Page</title>
    <style>

.header{
  background: rgb(12, 5, 77);
  
  height: 18%;
  width: 1000%;
}
    
  h1{ 
        position:absolute;left:30%;
        font-family: Georgia, 'Times New Roman', Times, serif;
        color: rgb(255, 255, 255)
        
    }
    h3{
        position:absolute;left:42%;top:7%;
        font-family: Georgia, 'Times New Roman', Times, serif;
        color: rgb(248, 245, 245);
    }
img.logo{
height: 14%;
position: fixed;
top: 3%;
left: 2%;
}

@import url(https://fonts.googleapis.com/css?family=Open+Sans:100,300,400,700);
@import url(//netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css);

body, html {
  height: 100%;
}
body {
  font-family: 'Open Sans';
  font-weight: 100;
  display: flex;
  overflow: hidden;
}
input 
  ::-webkit-input-placeholder {
     color: rgb(255, 255, 255);
  }
  ::-moz-placeholder {
     color: rgba(255,255,255,0.7);  
  }
  :-ms-input-placeholder {  
     color: rgba(255,255,255,0.7);  
  }
  input:focus {
    outline: 0 transparent solid;}
    :-webkit-input-placeholder {
     color: rgb(255, 255, 255);
    }
   placeholder {
       color: rgb(255, 255, 255);  
    }
    :-ms-input-placeholder {  
       color: rgb(255, 255, 255);  
    }
  


.login-form {
  background: rgba(255, 252, 252, 0.836);
  box-shadow: 0 0 1rem rgba(0,0,0,0.3);
  position: fixed;
  top: 25%;
  left: 32%;
  min-height: 10rem;
  margin: auto;
  max-width: 80%;
  padding: .5rem;
  height: 300px;
  width: 500px;
  border-radius: 3%;

}
.login-text {


  color: rgb(0, 0, 0);
  font-size: 1.5rem;
  margin: 0 auto;
  max-width: 50%;
  padding: .5rem;
  text-align: center;
  text-shadow: 1px -1px 0 rgba(0,0,0,0.3);}
  .fa-stack-1x {
    color: rgb(255, 255, 255);
  
}

.login-username, .login-password {
  background: transparent;
  border: 0 solid;
  border-bottom: 1px solid rgba(white, .5);
  color: rgb(0, 0, 0);
  display: block;
  margin: 1rem;
  padding: .5rem;
  transition: 250ms background ease-in;
  width: calc(100% - 3rem);}
  .login-username:focus, .login-password:focus {
    background: rgb(12, 5, 77);
    color: rgb(255, 255, 255);
    transition: 250ms background ease-in;
  
}



.login-submit {
  border: 1px solid rgb(45, 216, 23);
  background: transparent;
  color: rgb(0, 0, 0);
  display: block;
  margin: 1rem auto;
  min-width: 1px;
width:100px;
  padding: .25rem;
  
  transition: 250ms background ease-in;
  
}
  .login-submit :hover, .login-submit:focus {
    background: rgb(45, 216, 23);
    color: black;
    transition: 250ms background ease-in;
  
}
a.login-forgot-pass {
 
  color: rgb(0, 0, 0);
  
  
  font-size: 100%;
 

  
  position: fixed;
  top: 60%;
  left: 47%;
 
  text-align: center;
 text-decoration:none ;




}

a.login-forgot-pass:hover{
  color: rgb(90, 194, 21);
}


[class*=underlay] {
  left: 0;
  min-height: 100%;
  min-width: 100%;
  position: fixed;
  top: 0;
}
.underlay-photo {
  animation: hue-rotate 6s infinite;
 
  -webkit-filter: grayscale(30%);
  z-index: -1;
}
.underlay-black {
  background: rgb(255, 255, 255);
  z-index: -1;
}

@keyframes hue-rotate {
  from {
    -webkit-filter: grayscale(30%) hue-rotate(0deg);
  }
  to {
    -webkit-filter: grayscale(30%) hue-rotate(360deg);
  }
}

div.marquee-content{
  width: 220px;
  height:270px;
  background-color: rgb(255, 255, 255);
  border: 3px solid rgba(4, 1, 44, 0.678);
  padding: 10px;
  margin: 0.5%;
  position: fixed; top :28%;left:2;
  border-radius: 10%; 
}
.footer {
  position: fixed;
  left: 40%;
  bottom: 0;

  color:rgb(0, 0, 0);
  text-align:justify;
}

img.dig{
    height:40%;
    position:fixed;
    left:80%;
    top:25%;
}
img.nt{
    height:23%;
    position:fixed;
    left:78%;
    top:55%;
}
a.home{
position: absolute;

top:420px;
left: 1200px;
text-align: center;
text-decoration: none;

}


</style>
  
</head>


<body>
   
  <div class="header">
  <h1>NATIONAL SCHOLARSHIP PORTAL</h1>


    <H3>Government Of India</H3>
    
           <img class="logo" src="${pageContext.request.contextPath}/resources/images/emblem.png" alt="logo">

          </div>
    
            <img class="dig" src="${pageContext.request.contextPath}/resources/images/digi.png" alt="dig">
           
            
               
           <form class="login-form" form class="container" commandName="login" action="submitForm1">
               
            <p class="login-text">

              <span class="fa-stack fa-lg">
                <i class="fa fa-circle fa-stack-2x"></i>
                <i class="fa fa-lock fa-stack-1x"></i>
            Student Login</span>
            </p>
            <input type="text" class="login-username" autofocus="true" required="true" placeholder="Student UID" name="stuLoginID" id="stuLoginID"/>
            <input type="password" class="login-password" required="true" placeholder="Password" name="password" id="password"/>
            <input type="submit" name="Login" value="Login" class="login-submit" />
          </form>
          
        <a href="#" class="login-forgot-pass">forgot password ?</a>
        
        
        <div class="underlay-photo"></div>


          <div class="underlay-black"></div> 
          

          <div class="marquee-content "style="position:fixed;left:3%;width:200px;">
                          
                           
                <marquee onmouseover="stop()" onmouseout="start()" direction="up" scrollamount="3" height="200">
                   
                        <p style="font-weight: bold;">
                                <span class="fa fa-info-circle" style="color: #02971d;">
                                  
                                  The scheme for 2019-20 have been opened . These schemes are:-
                                  </br></br>
                                  1: POST MATRIC SCHOLARSHIP</br></br>
                                  2: SCHOLARSHIP MEANT FOR GIRLS: PRAGATI SCHOLARSHIP
                                  
                                  </br> </br>
                                  3:MERIT BASED SCHOLARSHIP : NTSE (National Talent Search Examination)
                                </span>
                                  
                            </p>    
                          <hr\>     
                               
                   
                         
                   
                    <p style="font-weight: bold;">
                        <span class="fa fa-info-circle" style="color: #ff1c1c;">
                        Maximum two members of a family belonging to the minority category can apply for the scholarship.<br>
                       <br>The candidates applying for the Maharashtra Merit cum Means Scholarship 2019-2020 must have completed 10th and 12th from a recognized board with a minimum of 60% marks in aggregate.</br>
                        
    
                       
                        </span>
                    </p>
                    <hr/>
                 
                    
                   
                    <p style="font-weight: bold;"><span class="fa fa-info-circle" style="color: #ff1c1c;">&nbsp;<strong>Attention !</strong><br><br>Last date for applying for "Pragati Scholarship" has been extended to 05/12/2019.</br>
                        </span></p>
                    <hr/>
                   
                    
                    
                    <hr/>
                    
                   
                    </p>
                    <hr/>
                    <!--    
                    <p style="font-weight: bold;"><span class="fa fa-info-circle" style="color: #6b080b;">&nbsp; <strong>Attention Students</strong><br><br>UGC Scholarship schemes and Incentive schemes are open from 05 Oct 2018.
                        </span></p>
                    <hr/>
                    <p style="font-weight: bold;"><span class="fa fa-info-circle" style="color: #3743fa;">&nbsp; <strong>Attention Students</strong><br><br>The last date for students to apply in Pre-Matric/PostMatric/TopClass/MCM schemes is 31st October 2018. No extension of date is being done so all are requested to final submit their applications(Fresh/Renewal/Defective) at the earliest. 
                        </span></p>
                    <hr/>
                    
                    <p style="font-weight: bold;"><span class="fa fa-info-circle" style="color: #02971d;">&nbsp;<strong>Attention Nodal Officers</strong><br><br>Verification process needs to be completed before the completion of the student application dates so that students can submit their defective applications in time! No Extension of dates is being done, so all are requested to complete the verification process at the earliest. 
                        </span></p>
                    <hr/>-->
<!--                                    <p style="font-weight: bold;"><span class="fa fa-android" style="color: #df534f;">&nbsp;<strong>Mobile App for NSP 2.0</strong> is now available. App can be downloaded from Google Play Store. </span></p>-->
                    
                    
                </marquee>
 
                <div class="footer">
                        <p>© Copyright 2019

                                National Scholarship Portal</p>
                      </div>
                       <a href="homePage" class="home"><input type="button" value="Visit Home" /></a>
                    </body>
</html>