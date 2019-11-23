<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">



    <title>
        HomePage-Govt of India nationalScholarship Portal
    </title>
    <style>
div.header{
  background:	rgb(12,5,77);
  
  height: 18%;
  width: 100%;
}
    
  h1{ 
        position:absolute;left:30%;
        font-family: Georgia, 'Times New Roman', Times, serif;
        color: black;
        
    }
    h3{
        position:absolute;left:42%;top:7%;
        font-family: Georgia, 'Times New Roman', Times, serif;
        color: black;
    }
   body{
   background-color: white;}
img.logo{
height: 15%;
position: absolute;
top: 3%;
left: 2%;
}
img.india{
    position: absolute;
width:20%;
    top: 8%;
    right: 3%;
    border-radius: 60%;
}


 .tab {
   
  border: 1px solid transparent;
  background-color: transparent;
  size: 100%;
  
  position: absolute; left:35%;top:25%;

}
.tab button:hover {
  background-color:rgba(238, 99, 64, 0.911);
  color: aliceblue;
}
.tab button {
  background-color:aliceblue;
  float: none;
  font-family: 'Times New Roman', Times, serif;
  border: none;
  outline: none;
  cursor: pointer;
  padding: 10px 16px;
  transition: 0.3s;
  size: 30%
 } 
 .tabcontent {
  display: none;
  padding: 6px 12px;
  border: 1px solid transparent;
  border-top: none;
  size: 50%
}
 
.dropbtn {
  background-color: #4CAF50;
  color: white;
  padding: 16px;
  font-size: 16px;
  border: none;
  cursor: pointer;
}

.dropdown {
  position: relative;
  display: inline-block;
}

.dropdown-content {
  display: none;
  position: absolute;
  background-color: #f9f9f9;
  min-width: 200px;
  box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
  z-index: 1;
}

.dropdown-content a {
  color: black;
  padding: 12px 16px;
  text-decoration: none;
  display: block;
  text-align: left;
}

.dropdown-content a:hover {background-color: #f1f1f1}

.dropdown:hover .dropdown-content {
  display:block;
}
 .mySlides 
img {vertical-align: middle;}

/* Slideshow container */
.slideshow-container {
  max-width: 1000px;

  margin-right: 60%;

  padding-left: 50px;
  width: 150%;
position: absolute;
top:50%;
left:30%;
 
}

/* Caption text */


/* Number text (1/3 etc) */
.numbertext {
  color: #0f1d5cd0;
  font-size: 12px;
  padding: 8px 12px;
  position: absolute;
  top: 90%;
}

/* The dots/bullets/indicators */
.dot {
  size: 10%;
  margin: 0 2px;
  background-color: rgb(0, 0, 0);
  border-radius: 50%;
  display: inline-block;
  transition: background-color 0.6s ease;
  position: fixed;top:80%;
}

.active {
  background-color: #717171;
}

/* Fading animation */
.fade {
  -webkit-animation-name: fade;
  -webkit-animation-duration: 1.5s;
  animation-name: fade;
  animation-duration: 1.5s;
}

@-webkit-keyframes fade {
  from {opacity: .4} 
  to {opacity: 1}
}

@keyframes fade {
  from {opacity: .4} 
  to {opacity: 1}
}
 div.help {
  width: 200px;
  height:150px;
  background-color: rgb(255, 255, 255);
  border: 2px solid rgba(48, 104, 2, 0.767);
  padding: 10px;
  margin: 10px;
  position: absolute; top :85%;left:2%;
  font-family: cursive;

}

 div.sch {
  width: 200px;
  height:300px;
  background-color: rgb(255, 255, 255);
  border: 2px solid midnightblue;
  border-radius:10%;
  padding: 10px;
  margin: 10px;
  position: absolute; top :60%;right:2%;
  


}

.footer {
  position: absolute;
  left: 40%;
  top: 120%;

  color:black;
  text-align:justify;
}

div.marquee-content{
 
  width: 220px;
   
  height:250px;
  background-color: rgb(255, 255, 255);
  border: 2px solid rgba(230, 78, 8, 0.808);
  padding: 10px;
  margin: 0.5%;
  position: absolute; top:30%;left:2%;
  border-radius: 10%; 
}
  a {
     text-decoration: none;
     color:black;
    }
   
    div.sch{
    font-family: serif;
    }
       
   img.meity{
   height:10%;
   position: absolute;
	
    top: 105%;
    left: 25%;
   }
   img.mygov{
   height:10%;
   width:7%;
   position: absolute;
	
    top: 105%;
    left: 38%;
   }   
   img.nic{
   height:10%;
   width:7%;
   position: absolute;
	
    top: 105%;
    left: 50%;
   }    
      img.indgov{
   height:10%;
   width:7%;
   position: absolute;
	
    top: 105%;
    left: 60%;
   } 
        img.gp{
   height:10%;
   width:6%;
   position: absolute;
	
    top: 105%;
    left: 70%;
   } 
        </style>
   
</head>
<body>
    
    <div class="header">
  <h1>NATIONAL SCHOLARSHIP PORTAL</h1>


    <H3>Government Of India</H3>
    
           <img class="logo" src="${pageContext.request.contextPath}/resources/images/logo.png" alt="logo">

          </div>
           <img class="india" src="${pageContext.request.contextPath}/resources/images/india.png" alt="logo">
          <a href="https://meity.gov.in/"> <img class="meity" src="${pageContext.request.contextPath}/resources/images/meity.gif" alt="logo">
              <a href="https://www.mygov.in/"> <img class="mygov" src="${pageContext.request.contextPath}/resources/images/mygov.jpg" alt="logo">
               <a href="https://www.nic.in/"> <img class="nic" src="${pageContext.request.contextPath}/resources/images/nic.jpg" alt="logo">
       <a href="https://www.india.gov.in/">     <img class="indgov" src="${pageContext.request.contextPath}/resources/images/indgov.png" alt="logo">
    <a href="https://play.google.com/store/apps/details?id=in.gov.scholarships">         <img class="gp" src="${pageContext.request.contextPath}/resources/images/gp.png" alt="logo">
           
               <div class="tab">
            <button class="tablinks" onclick="openCity(event, 'Home')"><a href="homePage">Home</button>
            <button class="tablinks" onclick="openCity(event, 'About Us')"><a href="aboutUs">About Us</button>
            
            <button class="tablinks" onclick="openCity(event, 'Student Login')"><a href="showLoginForm">Student Login</button></a>
            <div class="dropdown">
            <button class="dropdown" >Register
            <div class="dropdown-content">
                <a href="showRegistrationForm">Student Registration</a>
                <a href="showInsRegistrationForm">Institute Registration</a>
            </button>
           

           
                </div>

                <div class="dropdown">
                    <button class="dropdown" >Admin Login
                    <div class="dropdown-content">
                        <a href="insHome">Institute Login</a>
                        <a href="C:\Users\pcuser\Desktop\NSP PROJECT\EDITED WEBPAGES\login.html">State Ministry Login</a>
                        <a href="minHome">Central Ministry Login</a><br>
                    </button>    
                    </div>
                    </div>
                       
 <div class="help">
                            <h4 style="color:rgb(0, 0, 0);text-align:center;">HELPDESK</h4>
                            <p style="color:rgb(0, 0, 0);cursor:pointer">Contact : 0120 - 6619540</p>
                            <p style="color:rgb(0, 0, 0)0, 0;cursor:pointer")>Email : helpdesk.nsp@gov.in</p>
                        </div>
                        <div class="slideshow-container">

                            <div class="mySlides fade">
                              <div class="numbertext">1 / 4</div>
                              <img src="${pageContext.request.contextPath}/resources/images/nat.jpg" style="width:50%">
                              
                            </div>
                            
                            <div class="mySlides fade">
                              <div class="numbertext">2 / 4</div>
                              <img src="${pageContext.request.contextPath}/resources/images/b.png" style="width:50%">
                             
                            </div>
                            
                            <div class="mySlides fade">
                              <div class="numbertext">3 / 4</div>
                              <img src="${pageContext.request.contextPath}/resources/images/mah.jpg" style="width:50%">
                                                         </div>

                                                         <div class="mySlides fade">
                                                            <div class="numbertext">4 /4 </div>
                                                            <img src="${pageContext.request.contextPath}/resources/images/nt.jpg" style="width:50%">
                                                                                       </div>                         
                            
                            </div>
                            <br>
                            
                            <div style="text-align:center">
                              <span class="dot"></span> 
                              <span class="dot"></span> 
                              <span class="dot"></span> 
                              <span class="dot"></span> 
                            </div>

                       <div class="sch">
                            <h4 style="color:rgb(0, 0, 0);text-align:center;">Scholarship Schemes</h4>
                            <p id=txt"style="color:rgb(0, 0, 0);cursor:pointer"> <a href="minorityBasedScholarship">1: POST MATRIC SCHOLARSHIP</br></br>
                                                <a href="pragatiScholarshipForGirls">  2: SCHOLARSHIP MEANT FOR GIRLS: PRAGATI SCHOLARSHIP
                                                  
                                                  </br> </br>
                                                  <a href="meritBasedScholarship">3:MERIT BASED SCHOLARSHIP : NTSE (National Talent Search Examination)</p><br>
                           
                       </div> 
                       <div class="footer">
                            <p>© Copyright 2019

                                    National Scholarship Portal</p>
                          </div>
                          <div class="marquee-content ">
                          
                           
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
                                          <hr/>     
                                               
                                   
                                   
                                   
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
                                
                                
                            
                            <script>
                                var slideIndex = 0;
                                showSlides();
                                
                                function showSlides() {
                                  var i;
                                  var slides = document.getElementsByClassName("mySlides");
                                  var dots = document.getElementsByClassName("dot");
                                  for (i = 0; i < slides.length; i++) {
                                    slides[i].style.display = "none";  
                                  }
                                  slideIndex++;
                                  if (slideIndex > slides.length) {slideIndex = 1}    
                                  for (i = 0; i < dots.length; i++) {
                                    dots[i].className = dots[i].className.replace(" active", "");
                                  }
                                  slides[slideIndex-1].style.display = "block";  
                                  dots[slideIndex-1].className += " active";
                                  setTimeout(showSlides, 2000); // Change image every 5 seconds
                                }
                                </script>
                            
                            </body>
                            </html> 
                            

                      
            

           
                </div>
                    </button>
        
                   
                        </div>
                
                
          
          
              
       
