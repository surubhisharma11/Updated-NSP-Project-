<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>NTSE Application</title>

<style>
* {
  box-sizing: border-box;
}


    
  h1{ 
        position:relative;left:30%;
        font-family: Georgia, 'Times New Roman', Times, serif;
        color: rgba(3, 2, 65, 0.87)
        
    }
    h3{
        position:relative;left:42%;top:7%;
        font-family: Georgia, 'Times New Roman', Times, serif;
        color: rgba(3, 2, 65, 0.87);
    }
img.logo{
height: 10%;
position: absolute;
top: 4%;
left: 1%;
}
body {
  font-family:'Times New Roman', Times, serif;
  background-color:rgb(245, 247, 255);
  overflow: auto;
  overflow-x: hidden;
  width:100%;
}

.view{
  position: relative;
  display: block;
}

/* Style the header */


/* Create two columns/boxes that floats next to each other */


/* Style the list inside the menu */


img.mah{
    width:10%;
    height:80px;
    position: absolute;
    left: 88%;
    top:4%;

}

article {

 
  height : 100px;

  position: relative;
  top:100px;
}



/* .responsive {
  max-width: 100%;
  height: auto;
} */

.centeredtext {
  position: absolute;
  top: 30px;
  left:30%;
  transform: translate(-20%, -25%);
  color:rgb(0, 0, 0);
  font-weight: bold;
  /* padding: 2%; */
}

/* /* /* Clear floats after the columns */
section:after {
  content: "";
  display: table;
  clear: both;
} */ */


/* Responsive layout - makes the two columns/boxes stack on top of each other instead of next to each other, on small screens */
 
  article {
   
    height:auto;
  }


button.btn{
    background-color: #4CAF50; /* Green */
  border: none;
  color: white;
  position: absolute;
  left:45%;
  bottom:5%;
  padding : 16px 32px;

  text-align: center;
  text-decoration: none;
  
  font-size: 16px;
  margin: 4px 2px;
  -webkit-transition-duration: 0.4s; /* Safari */
  transition-duration: 0.4s;
  cursor: pointer;
  
 
  
}



button.btn:hover {
  background-color: rgb(218, 82, 20);
  color: white;
}



</style>
</head>
<body>

        <div class="header">
                <h1>NATIONAL SCHOLARSHIP PORTAL</h1>
              
              
                  <H3>Government Of India</H3>
                  
                         <img class="logo" src="${pageContext.request.contextPath}/resources/images/emblem.png" alt="logo">
              
                        </div>

                      
<section>
        <img class="mah" src="${pageContext.request.contextPath}/resources/images/nts.jpg" alt="bgimage" >
  <article>
    
    <div class="view">
 
        <div class="centeredtext" >
            <h1>NTSE (National Talent Search Examination) </h1>
            <hr>
            <h4>Objective</h4>
            <p>NTSE(National Talent Search Examination)  </p>
            <h4>Eligibility Criteria</h4>
            <p><ul>
             <li>Candidates must be an Indian national.</li>
             <li>A minimum of 60% marks Class IX is required.</li>
             <li>SC, ST and PH candidates will need 55% marks in Class IX.</li>
             <li>Candidate must be studying in a recognized school in their respective State.</li>
             </ul>
            </p>
            </div>
    </div>
   
  </article>
</section>
<button class="btn"  

onclick="window.location.href='showLoginForm'" align="middle">Apply for Scheme</button>
</body>
</html>