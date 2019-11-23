<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Student Details::</title>
<base href="/Project_trial/">
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
	<h1>Student Scholarship Details</h1>
		<br>
		
	<br><br>
		
	<center>
		<table border="1" cellpadding="3" id="printTable">
			<tbody>
				<tr>
					<th>Parameters</th>
					<th>Details</th>

				</tr>
				<tr>
					<td>Application ID</td>
					<td>${scholarshipDetails.applicationId}</td>
				</tr>
				<tr>
					<td>Aadhaar Number</td>
					<td>${scholarshipDetails.aadhaarNumber}</td>
				</tr>

				<tr>
					<td>Religion</td>
					<td>${scholarshipDetails.religion}</td>
				</tr>
				<tr>
					<td>Category/Community</td>
					<td>${scholarshipDetails.community}</td>
				</tr>
				<tr>
					<td>Father Name</td>
					<td>${scholarshipDetails.fatherName}</td>
				</tr>
				<tr>
					<td>Mother Name</td>
					<td>${scholarshipDetails.motherName}</td>
				</tr>
				<tr>
					<td>Family Annual Income:</td>
					<td>${scholarshipDetails.familyAnnualIncome}</td>
				</tr>
				<tr>
					<td>Institute Name</td>
					<td>${scholarshipDetails.instituteName}</td>
				</tr>
				<tr>
					<td>Present Course</td>
					<td>${scholarshipDetails.presentCourse}</td>
				</tr>
				<tr>
					<td>Present Class Year</td>
					<td>${scholarshipDetails.presentClassYear}</td>
				</tr>
				<tr>
					<td>Mode Of Study</td>
					<td>${scholarshipDetails.modeOfStudy}</td>
				</tr>
				<tr>
					<td>Class Start Date</td>
					<td>${scholarshipDetails.classStartDate}</td>
				</tr>
				<tr>
					<td>University Name</td>
					<td>${scholarshipDetails.universityBoardName}</td>
				</tr>
				<tr>
					<td>Previous Course</td>
					<td>${scholarshipDetails.previousClassCourse}</td>
				</tr>
				<tr>
					<td>Previous Passing Year</td>
					<td>${scholarshipDetails.previousPassingYear}</td>
				</tr>
				<tr>
					<td>Previous Course Percentage</td>
					<td>${scholarshipDetails.previousClassPercent}</td>
				</tr>
				<tr>
					<td>Xth Roll Number</td>
					<td>${scholarshipDetails.tenthRollNumber}</td>
				</tr>
				<tr>
					<td>Xth Board Name</td>
					<td>${scholarshipDetails.tenthBoardName}</td>
				</tr>
				<tr>
					<td>Xth Percentage Obtained</td>
					<td>${scholarshipDetails.tenthPercentObtained}</td>
				</tr>
				<tr>
					<td>Xth Passing Year</td>
					<td>${scholarshipDetails.tenthPassingYear}</td>
				</tr>
				<tr>
					<td>XIIth Roll Number</td>
					<td>${scholarshipDetails.twelthRollNumber}</td>
				</tr>
				<tr>
					<td>XIIth Board Name</td>
					<td>${scholarshipDetails.twelthBoardName}</td>
				</tr>
				<tr>
					<td>XIIth Percentage Obtained</td>
					<td>${scholarshipDetails.twelthPercentObtained}</td>
				</tr>
				<tr>
					<td>XIIth Passing Year</td>
					<td>${scholarshipDetails.twelthPassingYear}</td>
				</tr>
				<tr>
					<td>Admission Fee<</td>
					<td>${scholarshipDetails.admissionFee}</td>
				</tr>
				<tr>
					<td>Tuition Fee</td>
					<td>${scholarshipDetails.tutionFee}</td>
				</tr>

				<tr>
					<td>Other Fee</td>
					<td>${scholarshipDetails.otherFee}</td>
				</tr>
				<tr>
					<td>Is Disabled</td>
					<td>${scholarshipDetails.disability}</td>
				</tr>
				<tr>
					<td>Type Of Disability</td>
					<td>${scholarshipDetails.disabilityType}</td>
				</tr>
				<tr>
					<td>Percentage Of Disability</td>
					<td>${scholarshipDetails.percentOfDisability}</td>
				</tr>
				<tr>
					<td>Marital Status</td>
					<td>${scholarshipDetails.maritalStatus}</td>
				</tr>
				<tr>
					<td>Parents Profession</td>
					<td>${scholarshipDetails.parentsProfession}</td>
				</tr>
				<tr>
					<td>Address</td>
					<td>${scholarshipDetails.address}</td>
				</tr>
				<tr>
					<td>Type Of Disability</td>
					<td>${scholarshipDetails.scheme}</td>
				</tr>
				<tr>
					<td>Scholarship Scheme</td>
					<td>${scholarshipDetails.percentOfDisability}</td>
				</tr>


			</tbody>
		</table>
		<br> <br> <br>
		<h2>Uploaded Documents List</h2>
		<table border="1" cellpadding="3" id="notPrintTable">
			<tbody>
				<tr>
					<th>List Of Documents</th>
					<th>Status</th>
					<th>Action</th>
				</tr>
				<tr>
					<td>Domicile Certificate</td>
					<td>Uploaded</td>
					<td><input class="button" type="submit" value="View Uploaded Files"
						onclick="window.location.href='displayPdf/${scholarshipDetails.applicationId}/domCert'"></td>
				</tr>
				<tr>
					<td>Student Photograph</td>
					<td>Uploaded</td>
					<td><input class="button" type="submit" value="View Uploaded Files"
						onclick="window.location.href='displayPdf/${scholarshipDetails.applicationId}/stuPhoto'"></td>
				</tr>
				<tr>
					<td>Institute ID Card</td>
					<td>Uploaded</td>
					<td><input class="button" type="submit" value="View Uploaded Files"
						onclick="window.location.href='displayPdf/${scholarshipDetails.applicationId}/idCard'"></td>
				</tr>
				<tr>
					<td>Caste/Income Certificate</td>
					<td>Uploaded</td>
					<td><input class="button" type="submit" value="View Uploaded Files"
						onclick="window.location.href='displayPdf/${scholarshipDetails.applicationId}/casteCertificate'"></td>
				</tr>
				<tr>
					<td>Previous Year Marksheet</td>
					<td>Uploaded</td>
					<td><input class="button" type="submit" value="View Uploaded Files"
						onclick="window.location.href='displayPdf/${scholarshipDetails.applicationId}/prevYearMarksheet'"></td>
				</tr>
				<tr>
					<td>Fee Receipt Of Current Year</td>
					<td>Uploaded</td>
					<td><input class="button" type="submit" value="View Uploaded Files"
						onclick="window.location.href='displayPdf/${scholarshipDetails.applicationId}/feeReceipt'"></td>
				</tr>
				<tr>
					<td>Bank Passbook(Front Page)</td>
					<td>Uploaded</td>
					<td><input class="button" type="submit" value="View Uploaded Files"
						onclick="window.location.href='displayPdf/${scholarshipDetails.applicationId}/bankPass'"></td>
				</tr>
				<tr>
					<td>Aadhaar Card</td>
					<td>Uploaded</td>
					<td><input class="button" type="submit" value="View Uploaded Files"
						onclick="window.location.href='displayPdf/${scholarshipDetails.applicationId}/aadharCard'"></td>
				</tr>
				<tr>
					<td>10th Class Marksheet</td>
					<td>Uploaded</td>
					<td><input class="button" type="submit" value="View Uploaded Files"
						onclick="window.location.href='displayPdf/${scholarshipDetails.applicationId}/xMarksheet'"></td>
				</tr>
				<tr>
					<td>12th Class Marksheet</td>
					<td>Uploaded</td>
					<td><input class="button" type="submit" value="View Uploaded Files"
						onclick="window.location.href='displayPdf/${scholarshipDetails.applicationId}/xiiMarksheet'"></td>
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
			 <input class="button" type="submit" id="goBack"
			value="Go Back to Home Page"
			onclick="window.location.href='homePage'"> <br> <br>
			<input class="button" type="submit" value="Go Back"
						onclick="window.location.href='getStudentApplicationList'">
	
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