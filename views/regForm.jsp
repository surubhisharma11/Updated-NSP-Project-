<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="sF"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">


<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Student Registration Form</title>
<script src="${pageContext.request.contextPath}/resources/js/studentreg.js"></script> 

   <style>
   
   
   

    
  h1{ 
        position:absolute;left:30%;
        font-family: Georgia, 'Times New Roman', Times, serif;
        color: rgb(255, 255, 255)
        
    }
    h3{
        position:absolute;left:42%;top:7%;
        font-family: Georgia, 'Times New Roman', Times, serif;
        color: rgb(255, 255, 255);
    }
img.logo{
height: 14%;
position: absolute;
top: 3%;
left: 3%;
}
table,td,tr{
    display: block;
 

}


input:not([type="checkbox"]),select {
	background-color: #eee;
	border: 2px solid #aaa;
	padding: 6px 15px;
	margin: 5px 10px;
	width: 80%;
	border-radius: 8px;
	padding-left: 10px;
	transition: 0.3s;
	
}



select:focus {
  border-color: dodgerBlue;
  box-shadow: 0 0 8px 0 dodgerBlue;
  border-radius: 8px;
}

input:focus {
  border-color: dodgerBlue;
  box-shadow: 0 0 8px 0 dodgerBlue;
  border-radius: 8px;
}

.formhead{
	font-family: 'Montserrat';
	font-size: 30px;
	font-weight: 200;
	margin: 15px 10px 0px;

}
.formhead span{
	font-weight: 800;
}

* {
	box-sizing: border-box;
	justify-content: center;
}
body {

background: #0e3f12bb;
justify-content: center;
align-items: center;
font-family: 'Montserrat', sans-serif;	
}
.container {
	background-color: #fff;
	border-radius: 1px;
  	box-shadow: 0 14px 28px rgba(0,0,0,0.25), 
			0 10px 10px rgba(0,0,0,0.22);
    position: absolute;
    top:20%;
    left: 30%;
	overflow: hidden;
	
	max-width: 55%;
	
	/*font-size: 24px;*/
	
	line-height: 25px;
	letter-spacing: 0.5px;
	margin: auto;
}

table, th{

  border-collapse: collapse;
  font-size: 15px;
  padding: 2px 5px;
  border-spacing: 0;
  /*column-gap: 20px;*/
}
td{
	width: 60%;
}
table td.shrink {
    white-space:nowrap;
}

.fdetails{
	font-family: 'Montserrat',sans-serif;
	font-size: 15px;
	padding: 15px;
}

.error{
	border: 2px solid red;
}

.errorMsg{
	font-size: 8;
	color: red;
}
#sub{
	background-color: #0e3f12bb;
}
   </style> 

</head>
<body>
	</div>
	
		<div class="header">
            <h1>NATIONAL SCHOLARSHIP PORTAL</h1>
          
          
              <H3>Government Of India</H3>
              
                     <img class="logo" src="${pageContext.request.contextPath}/resources/images/emblem.png" alt="logo">
          
                    </div>
		
		<div class="newstudRegPage">
			<form action="submitForm" name="insRegForm" method="POST"
				commandName="registration" onsubmit="validation()">
				<div class="container">
					<div class="formhead" style="text-align: center">Student Details</div>
					<hr>
					<div class="fdetails">
						<table>
							<tr>
								<td colspan="2">State of Domicile<br> <select
									name="stateOfDomicile" id="stateOfDomicile" required
									onchange="makeSubmenu(this.value)" required>
										<option value="" disabled selected>------------Select
											State------------</option>
										<option>Andaman and Nicobar Islands</option>
										<option>Andhra Pradesh</option>
										<option>Arunachal Pradesh</option>
										<option>Assam</option>
										<option>Bihar</option>
										<option>Chandigarh (UT)</option>
										<option>Chhattisgarh</option>
										<option>Dadra and Nagar Haveli (UT)</option>
										<option>Daman and Diu (UT)</option>
										<option>Delhi (NCT)</option>
										<option>Goa</option>
										<option>Gujarat</option>
										<option>Haryana</option>
										<option>Himachal Pradesh</option>
										<option>Jammu and Kashmir</option>
										<option>Jharkhand</option>
										<option>Karnataka</option>
										<option>Kerala</option>
										<option>Lakshadweep (UT)</option>
										<option>Madhya Pradesh</option>
										<option>Maharashtra</option>
										<option>Manipur</option>
										<option>Meghalaya</option>
										<option>Mizoram</option>
										<option>Nagaland</option>
										<option>Odisha</option>
										<option>Puducherry (UT)</option>
										<option>Punjab</option>
										<option>Rajasthan</option>
										<option>Sikkim</option>
										<option>Tamil Nadu</option>
										<option>Telangana</option>
										<option>Tripura</option>
										<option>Uttarakhand</option>
										<option>Uttar Pradesh</option>
										<option>West Bengal</option>
								</select></td>
								<td colspan="2">District<br>
								<select name="district" id="district" required>
										<option value="defaultVal" disabled selected>---------Choose
											District-------</option>
								</select>
							</tr>

							<tr>
								<td colspan="2">Name: (AS PER MARKSHEET)<input type="text"
									id="name" name="name" required></td>

								<td colspan="2">Date Of Birth<input type="date"
									id="dateOfBirth" name="dateOfBirth" required></td>
							</tr>
							<tr>
								<td colspan="2">Gender<br> <select id="Gender"
									name="gender" required><option disabled selected
											value="">----Select Gender----</option>
										<option value="Male">Male</option>
										<option value="Female">Female</option>
										<option value="Other">Other</option>
								</select>
								<td colspan="2">Mobile No<br> <input type="number"
									id="mobileNo" name="mobileNo" required
									placeholder="10 digit number" onchange="validMobile()">
								</td>
							</tr>
							<tr>
								<td colspan="2">Email:<br> <input type="Email"
									id="email" name="email" required placeholder="working Email-Id"
									required>
								</td>
								<td colspan="2">Institute Code<br> <input
									type="number" id="instituteCode" name="instituteCode" required>
								</td>
							</tr>
							<tr>
								<td colspan="2">Aadhaar Number<br> <input
									type="Number" id="aadhaarNumber" name="aadhaarNumber" required
									placeholder="12 Digit Aadhaar Number" onchange="validAadhaar()">
								</td>
								<td colspan="2">Bank IFSC CODE<br> <input type="text"
									id="bankIFSC" name="bankIFSC" required>
								</td>
							</tr>
							<tr>
								<td colspan="2">Account Number:<br> <input
									type="Number" id="bankAccountNumber" name="bankAccountNumber"
									required>
								</td>
								<td colspan="2">Bank Name:<br> <input type="text"
									id="bankName" name="bankName" required>
								</td>
							</tr>
							<tr>
								<td colspan="2">Set Password<br> <input
									type="password" id="password" name="password" required>
								</td>
								<td colspan="2">Confirm Password<br> <input
									type="Password" id="repassword" name="repassword" required
									onchange="validPass()">
								</td>
							</tr>

							<tr>
								<td><input type="checkbox" id="condition" required>
									All the above information is furnished by me is true and best
									of my knowledge</td>
							</tr>
							
						
							
						
						</table>
						<br><center>
								<td colspan="1"><input type="Submit" id="submit"
									value="Register" style="background-color: rgb(2, 163, 37);color:white;"></td>
								<td colspan="1"><input type="reset" value="Reset"></td>
							
							<a href="homePage"><input type="button" value="Visit Home" /></a>
						</center>
					</div>
				</div>
			</form>
			<script type="text/javascript"
				src="${pageContext.request.contextPath}/resources/js/newRegJS.js"></script>


		</div>
	</div>
	<script>
		function validMobile() {
			var phoneno = /^\d{10}$/;

			var mobileno = document.getElementById('mobileNo');
			var mobile = mobileno.value;
			if (!mobile.match(/^\d{10}$/)) {
				alert("Invalid Number");
				mobileno.focus();
				document.getElementById("mobileNo").value = "";

			}

		}
		function validPass() {
			var password = document.getElementById('password').value;
			var repassword = document.getElementById('repassword').value;
			if (password != repassword) {
				alert('Password not matching');
				document.getElementById("repassword").value = "";
				iconfpwd.focus();

			}

		}
		function validAadhaar() {
			var aadhaarNumber = document.getElementById('aadhaarNumber').value;
			var len = aadhaarNumber.length;
			if (len != 12) {
				alert('Invalid Aadhaar Number');
				document.getElementById("aadhaarNumber").value = "";
				aadhaarNumber.focus();
			}
		}
	</script>
</body>
</html>
