<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Pragati Scholarship Page</title>

<style>
* {
  box-sizing: border-box;
}


    
  h1{ 
        position:relative;left:30%;
        font-family: Georgia, 'Times New Roman', Times, serif;
        color: rgb(255, 255, 255)
        
    }
    h3{
        position:relative;left:42%;top:7%;
        font-family: Georgia, 'Times New Roman', Times, serif;
        color: rgb(248, 245, 245);
    }
img.logo{
height: 10%;
position: absolute;
top: 4%;
left: 3%;
}
body {
  font-family:'Times New Roman', Times, serif;
  background-color:rgba(20, 35, 36, 0.863);
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
 
    height:40%;
    position: absolute;
    width:1000px;
    left: 15%;
    top:18%;
    padding: 4px;
}

article {

 
  height : 100px;

  position: relative;
  top:px;
}



/* .responsive {
  max-width: 100%;
  height: auto;
} */

.centeredtext {
  position: absolute;
  top: 400px;
  left:30%;
  transform: translate(-20%, -25%);
  color:whitesmoke;
  font-weight: 200;
  font-family: Arial, Helvetica, sans-serif;
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
  position: relative;
  left:45%;
  top:700px;
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

                        <img class="mah" src="${pageContext.request.contextPath}/resources/images/girl.jpg" alt="bgimage" >           
<section>
      
  <article>
    
    <div class="view">
 
            <div class="centeredtext">
                    <h1 style="position: relative;left:40%;">Pragati Scholarship</h1>
                    <hr>
                    <h4>Objective</h4>
                    <p>This scholarship is meant to provide Education at minimum cost to a girl child whose education is almost neglected in rural areas.
                    'One Girl' per family and it can be extended for Two Girl Child per family where the family income is less than Rs. 8 Lakh /annum (In case of married girl child, the income of parents/ in laws whichever is higher is to be considered).
                    </p>
                    <h4>Eligibility Criteria</h4>
                    <p><ul>
                     <li>The selection of candidate will be made on merit on the basis of qualifying examination to peruse the respective Technical Degree/Diploma course from any of the AICTE approved institution. Amount of scholarship: Tuition Fee of Rs. 30,000/- </li>
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