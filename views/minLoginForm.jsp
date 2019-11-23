<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Central Ministry Login Page</title>
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
       color: rgb(0, 0, 0);  
    }
  


.login-form {
  background: rgba(255, 255, 255, 0.836);
  box-shadow: 0 0 1rem rgba(0,0,0,0.3);
  min-height: 10rem;
  margin: auto;
  max-width: 80%;
  position: fixed;
  top: 25%;
  left : 32%;
  padding: .5rem;
  height: 350px;
  width: 500px;
  border-radius: 3%;

}
.login-text {


  color: rgb(212, 108, 10);
  font-size: 1.5rem;
  margin: 0 auto;
  max-width: 50%;
  padding: 17%;
  text-align: center;
  text-shadow: 1px -1px 0 rgba(0,0,0,0.3);}
  .fa-stack-1x {
    color: rgb(0, 0, 0);
  
}

.login-username, .login-password {
  background: transparent;
  border: 0 solid;
  border-bottom: 1px solid rgba(white, .5);
  color: rgb(0, 0, 0);
  display: block;
  position: relative;bottom:25%;
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
  border: 1px solid rgb(20, 119, 0);
  background: transparent;
  color: rgb(0, 0, 0);
  display: block;
  margin: 1rem auto;
  min-width: 1px;
width:100px;
  padding: .25rem;
  cursor: pointer;
  transition: 250ms background ease-in;
  position: relative;
  bottom: 20%;
  
}
  .login-submit :hover, .login-submit:focus {
    background: rgb(20, 119, 0);
    color: rgb(255, 255, 255);
    transition: 250ms background ease-in;
  
}
a.login-forgot-pass {
 
  color: rgb(0, 0, 0);
  
  
  font-size: 100%;
 

  
  position: fixed;
  top: 70%;
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


.footer {
  position: fixed;
  left: 40%;
  bottom: 0;

  color:rgb(0, 0, 0);
  text-align:justify;
}
img.home{
    height:10%;
    position:fixed;
    left:95%;
}
img.dig{
    height:35%;
 
    position:fixed;
    left:80%;
    top:25%;
}


p.note{
    font-family: 'Times New Roman', Times, serif;
    font-size: 90%;
    position: fixed;
    left: 37%;
    top: 65%;
    color: azure;
}

img.emb{
    height:12%;
  position: fixed;
  left:50%;
}
a.home{
position: absolute;

top:620px;
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
         
         
           
            
           <form class="login-form" action="getMinistryhome">
                <img class="emb" src="${pageContext.request.contextPath}/resources/images/emb.png" alt="emb">
           
            <p class="login-text">

              <span class="fa-stack fa-lg">
                <i class="fa fa-circle fa-stack-2x"></i>
                <i class="fa fa-lock fa-stack-1x"></i>
          Central Ministry Login</span>
            </p>
            <input type="text" class="login-username" autofocus="true" required="true"  name="stuLoginID" placeholder="Central Ministry ID" />
            <input type="password" class="login-password" required="true" name="password" placeholder="Password" />
            <input type="submit" name="Login" value="Login" class="login-submit" />
          </form>
          
        <a href="#" class="login-forgot-pass">forgot password ?</a>
        
        
        <div class="underlay-photo"></div>


          <div class="underlay-black"></div> 
          
        
              
        <div class="footer">
                        <p>© Copyright 2019

                                National Scholarship Portal</p>
                      </div>
                         <a href="homePage" class="home"><input type="button" value="Visit Home" /></a>
                    </body>
</html>