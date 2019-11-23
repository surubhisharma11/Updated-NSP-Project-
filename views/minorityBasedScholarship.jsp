<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Post Matric Merit-Cum Scholarship</title>

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
  background-color:rgb(3, 19, 43);
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
    width:75%;
    height:250px;
    position: relative;
    left: 13%;
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
  color:whitesmoke;
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
  position: relative;
  left:43%;
  top:400px;
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
  background-color: rgb(196, 66, 15);
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
        <img class="mah" src="${pageContext.request.contextPath}/resources/images/gra.jpg" alt="bgimage" >
  <article>
    
    <div class="view">
 
    <div class="centeredtext">
    <h1>Minority Based Scholarship</h1>
    <hr>
    <h4>Objective</h4>
    <p>The Maharashtra DTE Scholarship gives the opportunity to the students belonging to the backwards categories to study in the government and private colleges after completion of their Class 12th. This scheme not only provides the scholarship to study in technical courses but also gives the chance to apply for undergraduate and postgraduate courses in India. </p>
    <h4>Eligibility Criteria</h4>
    <p>Those applicants who are belonging to the economically backward caste/category such as SC/ ST/ OBC or other minorities' categories are required to check if they come under the eligibility criteria provided by the Directorate of Technical education, Maharashtra Government.</p>
    <p><ul>
     <li>The candidates applying for the Maharashtra Merit cum Means Scholarship 2017-2018 must have completed 10th and 12th from a recognized board with a minimum of 60% marks in aggregate.</li>
     <li>Maximum two members of a family belonging to the minority category can apply for the scholarship.</li>
     <li>Students applying for the Maharashtra Merit cum Means Scholarship 2017-2018 must have Aadhaar Card enrolled in the State.</li>
     <li>The applicant must produce all the documents prescribed by the state.</li>
    
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
