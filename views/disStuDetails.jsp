<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">


<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Student Details Page</title>
<style>
        body{
            background-color:honeydew;
        }
        h1{
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif
        }
        td{
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif
        }
        
        
        </style>
</head>
<body>
	<center>
		
		<h1>You have successfully submitted your Registration Form !</h1>
		<br>
		<h3>Remember your Login ID and password for filling up your
			application form</h3>
		<pre>
	</center>
	<center>
	<h1>Student Registration Form</h1>
		<table border="1" cellpadding="3" id="printTable">
			<tbody>
				<tr>
					<th>Parameters</th>
					<th>Details</th>

				</tr>
				<tr>
					<td>Login Id</td>
					<td>${studentDetails.studentId}</td>
				</tr>
				<tr>
					<td>State of Domicile</td>
					<td>${studentDetails.stateOfDomicile}</td>
				</tr>
				<tr>
					<td>District</td>
					<td>${studentDetails.district}</td>
				</tr>
				<tr>
					<td>Name: (AS PER MARKSHEET)</td>
					<td>${studentDetails.name}</td>
				</tr>
				<tr>
					<td>Date Of Birth</td>
					<td>${studentDetails.dateOfBirth}</td>
				</tr>
				<tr>
					<td>Gender</td>
					<td>${studentDetails.gender}</td>
				</tr>
				<tr>
					<td>Mobile No</td>
					<td>${studentDetails.mobileNo}</td>
				</tr>
				<tr>
					<td>Email Id:</td>
					<td>${studentDetails.email}</td>
				</tr>
				<tr>
					<td>Institute Code</td>
					<td>${studentDetails.instituteCode}</td>
				</tr>
				<tr>
					<td>Aadhaar Number</td>
					<td>${studentDetails.aadhaarNumber}</td>
				</tr>
				<tr>
					<td>Bank IFSC CODE</td>
					<td>${studentDetails.bankIFSC}</td>
				</tr>
				<tr>
					<td>Account Number:</td>
					<td>${studentDetails.bankAccountNumber}</td>
				</tr>

			</tbody>
		</table>
		<br /> <br />
	</center>

	<br />
	<br />
	<center>
		<input class="button" type="submit" id="print"
			value="Print Regsitration Form" onclick="printData()"> 
			<br>
			<br>
	<!-- 	<input
			class="button" type="submit" value="Submit Registration Form"
			onclick="window.location.href='submitRegForm'" align="middle">
		<br> -->
		<br> <input class="button" type="submit" id="goBack"
			value="Go Back to Home Page"
			onclick="window.location.href='homePage'"> <br>

	</center>
	<script>
		function printData() {
			var divToPrint = document.getElementById("printTable");
			newWin = window.open("");
			newWin.document.write(divToPrint.outerHTML);
			newWin.print();
			newWin.close();
		}

		$('button').on('click', function() {
			printData();
		})
	</script>
</body>
</html>