<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Institute Details Page </title>
<style>
        body{
            background-color:lightgray;
        }
        h1{
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif
        }
        td{
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif
        }
        
        
        </style>
</head>
<body onload()="noBack()" onpageshow="if(event.persisted) noBack();"onunload="">
	<center>
	<h1>Your Institute Registration Application has been successfully
			completed !</h1>
		<h3>Our officials will shortly get in touch with you to manually
			verify documents and complete the process of Registration.</h3>
		<br>
		<br>
		<h1>Institute Details</h1>
	
	<table border="1" cellpadding="3" id="printTable">
		<tbody>
			<tr>
				<th>Parameters</th>
				<th>Details</th>

			</tr>
			<tr>
				<td>Institute Code</td>
				<td>${instituteDetails.instituteCode}</td>
			</tr>
			<tr>
				<td>Institute Category</td>
				<td>${instituteDetails.instituteCategory}</td>
			</tr>
			<tr>
				<td>Institute Name</td>
				<td>${instituteDetails.instituteName}</td>
			</tr>
			<tr>
				<td>State</td>
				<td>${instituteDetails.state}</td>
			</tr>
			<tr>
				<td>District</td>
				<td>${instituteDetails.district}</td>
			</tr>
			<tr>
				<td>Location</td>
				<td>${instituteDetails.location}</td>
			</tr>
			<tr>
				<td>Institute Type</td>
				<td>${instituteDetails.type}</td>
			</tr>
			<tr>
				<td>Affiliated University State</td>
				<td>${instituteDetails.aff}</td>
			</tr>
			<tr>
				<td>Affiliated University/Board id</td>
				<td>${instituteDetails.affUniId}</td>
			</tr>
			<tr>
				<td>Year From Which Admission Started</td>
				<td>${instituteDetails.yearFromAdmissionStarted}</td>
			</tr>
			<tr>
				<td>Address</td>
				<td>${instituteDetails.address}</td>
			</tr>
			<tr>
				<td>Principal Name</td>
				<td>${instituteDetails.principalName}</td>
			</tr>
			<tr>
				<td>Mobile Number</td>
				<td>${instituteDetails.principalMobileNumber}</td>
			</tr>
		</tbody>
	</table>
	<br />
	<br />
	<br>
	<h2>Uploaded Documents List</h2>
	<table border="1" cellpadding="3" id="notPrintTable">
		<tbody>
			<tr>
				<th>List Of Documents</th>
				<th>Status</th>
				<th>Action</th>
			</tr>
			<tr>
				<td>Institute Establishment/Registration Certificate</td>
				<td>Uploaded</td>
				<td><input class="button" type="submit" value="View"
					onclick="window.location.href='displayPdf/${instituteDetails.instituteCode}/EstProof'"></td>
			</tr>
			<tr>
				<td>University/Board Affiliation Certificate</td>
				<td>Uploaded</td>
				<td><input class="button" type="submit" value="View"
					onclick="window.location.href='displayPdf/${instituteDetails.instituteCode}/UnivCert'"></td>
			</tr>
		</tbody>
	</table>
</center>
<br><br>
	<center>
		<input class="button" type="submit" id="print" value="Print Form"
			onclick="printData()"> 
		<br>
		<br> <input class="button" type="submit" id="goBack"
			value="Go Back to Home Page"
			onclick="window.location.href='homePage'"> <br>
		<br>
		
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
		
		window.history.forward();
    	function noBack(){window.history.forward();}
	</script>
</body >
</html>