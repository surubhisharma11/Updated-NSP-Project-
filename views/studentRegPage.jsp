<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="sF"%>
<!DOCTYPE html>

<html>
<head>
<style>
@import url('https://fonts.googleapis.com/css?family=Montserrat:400,800');


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



input:not([type="checkbox"]),select {
	background-color: rgb(255, 255, 255);
	border: 2px solid #aaa;
	padding: 6px 15px;
	margin: 5px 10px;
	width: 70%;
	border-radius: 8px;
	padding-left: 10px;
    transition: 0.3s;
    display: block;
	
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
	font-weight: 500;
}

* {
	box-sizing: border-box;
	justify-content: flex-start;
}


body {

	background: #05040552;
	justify-content: center;
	align-items: left;
	font-family: 'Montserrat', sans-serif;	
}

.container {
	background-color: rgba(255, 255, 255, 0.986);
	
  	box-shadow: 0 14px 28px rgba(0,0,0,0.25), 
			0 10px 10px rgba(0,0,0,0.22);
	position: relative;
	top: 20%;
   
	overflow: hidden;
	
	max-width: 65%;

	
	/*font-size: 24px;*/
	
	line-height: 30px;
	letter-spacing: 0.5px;
    margin: auto;
    

 
}

table, th, td {

  border-collapse: collapse;
  font-size: 15px;
  padding: 2px 5px;
  border-spacing: 0;
  /*column-gap: 20px;*/
  display: block;

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
</style>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Student Registration Form</title>
 <script src="${pageContext.request.contextPath}/resources/js/studentreg.js"></script>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/studentRegCSS.css">
 

</head>
<body>
	
	<div class="myForm">
		<sF:form method="POST" commandName="scholarshipForm"
			action="submitScholForm" enctype="multipart/form-data">
			<div class="container">
				<div class="formhead">
                        <span>Basic Details</span>
					<pre>Login ID:${loginID}</pre>
				</div>
				<hr>
				<div class="fdetails">
					<table>
						<tr>
							<td colspan="2">Aadhaar Number<input type="number"
								name="aadhaarNumber" id="aadhaarNumber" required
								onchange="validAadhaar()">
								<div id="aadhar_error" class="errorMsg"></div>
							</td>
							<td colspan="2">Religion<select name="religion"
								id="religion" required>
									<option value="" disabled selected style="font-style: italic">Select 
										Religion</option>
									<option>Hindu</option>
									<option>Christian</option>
									<option>Islam</option>
									<option>Sikh</option>
									<option>Jain</option>
									<option>Buddhism</option>
							</select>
								<div id="religion_error" class="errorMsg"></div>
							</td>

						</tr>
						<tr>
							<td>Community<select id="community"
								name="community" required>
									<option value="" disabled selected style="font-style: italic">Select 
										Community</option>
									<option>General</option>
                                    <option>OBC</option>
                                    <option>SC</option>
									<option>ST</option>
									<option>Others</option>
							</select>
								<div id="mstatus_error" class="errorMsg"></div>
							</td>
							<td colspan="2">Father's Name<input type="text"
								name="fatherName" id="fatherName" required>
								<div id="fathername_error" class="errorMsg"></div>
							</td>
							<td colspan="2">Mother's Name<input type="text"
								name="motherName" id="motherName" required>
								<div id="mothername_error" class="errorMsg"></div>
							</td>


						</tr>
						<tr>
							<td colspan="2">Family Annual Income<input type="number"
								id="familyAnnualIncome" name="familyAnnualIncome" required
								onchange="validPerc(this.id)" required>
								<div id="mobileno_error" class="errorMsg"></div>
							</td>
						</tr>

					</table>
				</div>
			</div>
			<br>
			<br>
			<br>
			<div class="container">
				<div class="formhead">
					<span>Academic Details</span>
				</div>
				<hr>
				<div class="fdetails">
					<table>
						<tr>
							<td colspan="2">Institute Name<select name="instituteName"
								id="instituteName" required>
									<option value="" disabled selected style="font-style: italic">Select 
										Institute</option>
									<option>SAKEC</option>
									<option>SWAMI</option>
									<option>VIT</option>
									<option>RGIT</option>
									<option>RAIT</option>
									<option>PILLAI</option>
							</select>
							</td>
							<td colspan="2">Present Course<input type="text"
								id="presentCourse" name="presentCourse"></td>
						</tr>
						<tr>
							<td>Present Class Year<select id="presentClassYear"
								name="presentClassYear" required>
									<option disabled selected value="" style="font-style: italic">Select 
										Current Year</option>
									<option>1st Year</option>
									<option>2nd Year</option>
									<option>3rd Year</option>
									<option>4th Year</option>
							</select></td>

						</tr>
						<tr>
							<td colspan="2">Mode Of Study<select name="modeOfStudy"
								id="modeOfStudy" required>
									<option disabled selected value="" style="font-style: italic">Select 
										Mode Of Study</option>
									<option>Full-Time</option>
									<option>Part-Time</option>
							</select></td>
						</tr>
						<tr>
							<td colspan="2">Commencement Date<input type="date"
								id="classStartDate" name="classStartDate" required></td>
							<td colspan="2">University Name<input type="text"
								name="universityBoardName" id="universityBoardName" required></td>
						</tr>
						<tr>
							<td colspan="2">Previous Course<input type="text"
								name="previousClassCourse" id="previousClassCourse" required></td>
							<td colspan="2">Previous Passing Year<select
								name="previousPassingYear" id="previousPassingYear" required>
									<option disabled selected value="" style="font-style: italic">Select
										Previous Passing Year</option>
									<option>Freshers</option>
									<option>1st Year</option>
									<option>2nd Year</option>
									<option>3rd Year</option>
									<option>4th Year</option>
							</select>
							</td>
						</tr>
						<tr>
							<td colspan="2">Previous Course %<input type="Number"
								name="previousClassPercent" id="previousClassPercent" min="0"
								max="100" required onchange="validPerc(this.id)"></td>
						</tr>
					</table>
				</div>
			</div>
			<br>
			<br>
			<br>
			<div class="container">
				<div class="formhead">
					<span>SSC Details</span>
				</div>
				<hr>
				<div class="fdetails">
					<table>
						<tr>
							<td colspan="2">Registration Number<input type="number"
								id="tenthRollNumber" name="tenthRollNumber" required></td>
							<td colspan="2">Board Name<input type="text"
								id="tenthBoardName" name="tenthBoardName" required></td>
						</tr>
						<tr>
							<td colspan="2">Passing Year<input type="date"
								id="tenthPassingYear" name="tenthPassingYear" required></td>
							<td colspan="2">Percentage Obtained<input type="Number"
								id="tenthPercentObtained" name="tenthPercentObtained" min="0"
								max="100" required onchange="validPerc(this.id)"></td>
						</tr>
					</table>
				</div>
			</div>
			<br>
			<br>
			<br>
			<div class="container">
				<div class="formhead">
					<span>HSC Details</span>
				</div>
				<hr>
				<div class="fdetails">
					<table>
						<tr>
							<td colspan="2">Registration Number<input type="Number"
								id="twelthRollNumber" name="twelthRollNumber" required></td>
							<td colspan="2">Board Name<input type="text"
								id="twelthBoardName" name="twelthBoardName" required></td>
						</tr>
						<tr>
							<td colspan="2">Passing Year<input type="date"
								id="twelthPassingYear" name="twelthPassingYear" required>
								<div id="field"></div>
							</td>
							<td colspan="2">Percentage Obtained<input type="Number"
								id="twelthPercentObtained" name="twelthPercentObtained" min="0"
								max="100" required onchange="validPerc(this.id)" required></td>
						</tr>
					</table>
				</div>
			</div>
			<br>
			<br>
			<br>

			<br>
			<br>
			<br>
			<div class="container">
				<div class="formhead">
					<span>Fee Details</span>
				</div>
				<hr>
				<div class="fdetails">
					<table>
						<tr>
							<td colspan="2">Admission Fee<input type="Number"
								id="admissionFee" name="admissionFee"
								onchange="validPerc(this.id)" required></td>
							<td colspan="2">Tuition Fee<input type="Number"
								id="tutionFee" name="tutionFee" onchange="validPerc(this.id)"
								required></td>
						</tr>
						<tr>
							<td colspan="2">Other Fee<br>
							<input type="Number" id="otherFee" name="otherFee"
								onchange="validPerc(this.id)" required></td>
						</tr>
					</table>
				</div>
			</div>
			<br>
			<br>
			<br>
			<br>
			<br>
			<br>
			<div class="container">
				<div class="formhead">
					<span>Other Personal Deatils</span>
				</div>
				<hr>
				<div class="fdetails">
					<table>
						<tr>
							<td colspan="2">Is Disabled<br>
							<select id="disability" name="disability" required>
									<option disabled selected value="">Select
										Type</option>
									<option>Yes</option>
									<option>No</option>
							</select></td>
							<td colspan="2">Type Of Disability<input type="text"
								id="disabilityType" name="disabilityType" required></td>
						</tr>
						<tr>
							<td colspan="2">% Of Disability<input type="Number"
								id="percentOfDisability" name="percentOfDisability" min="0"
								max="100" onchange="validPerc(this.id)" required></td>
							<td colspan="2">Marital Status<select id="maritalStatus"
								name="maritalStatus" required>
									<option disabled selected value="" style="font-style: italic">Select 
										Status</option>
									<option>Married</option>
									<option>Un-Married</option>
							</select></td>
						</tr>
						<tr>
							<td colspan="2">Parents Profession<input type="text"
								id="parentsProfession" name="parentsProfession" required></td>
						</tr>
					</table>
				</div>
			</div>
			<br>
			<br>
			<br>
			<br>
			<br>
			<br>
			<div class="container">
				<div class="formhead">
					<span>Contact Details</span>
				</div>
				<hr>
				<div class="fdetails">
					<table>
						<tr>
							<td>Address<br>
							<input type="text" id="address" name="address" required></td>
						</tr>

					</table>
				</div>
			</div>
			<br>
			<br>
			<br>
			<br>
			<br>
			<br>
			<div class="container">
				<div class="formhead">
				<span>Available Scholarship Scheme</span>
				</div>
				<hr>
				<div class="fdetails">
					<table>
						<tr>
							<td colspan="2">Scholarship Scheme<select name="scheme"
								id="scheme" required>
									<option disabled selected value="" style="font-style: italic">Select 
										Scheme</option>
									<option>Post Matric Scholarship</option>
									<option>Merit Based</option>
									<option>Central Scholarship Scheme</option>
							</select></td>
						</tr>
					</table>
				</div>
			</div>
			<br>
			<br>
			<br>


			<div class="container">
				<div class="formhead">
					<span>Document Upload Section</span>
				</div>
				<hr>
				<div class="fdetails">
					<table>
						<tr>
							<td colspan="2">Domicile Certificate<input type="file"
								name="files" id="dom_cert"
								onchange="ValidateSingleInput(this,id)" required></td>
							<td colspan="2">Student Photograph<input type="file"
								name="files" id="stu_phg"
								onchange="ValidateSingleInput(this,id)" required></td>
						</tr>
						<tr>
							<td colspan="2">Institute ID Card<input type="file"
								name="files" id="ins_card"
								onchange="ValidateSingleInput(this,id)" required></td>
							<td colspan="2">Caste/Income Certificate<input type="file"
								name="files" id="inc_cert"
								onchange="ValidateSingleInput(this,id)" required></td>
						</tr>
						<tr>
							<td colspan="2">Previous Year Marksheet<input type="file"
								name="files" id="prev_mark"
								onchange="ValidateSingleInput(this,id)" required></td>
							<td colspan="2">Fee Receipt Of Current Year<input
								type="file" name="files" id="fee_rct"
								onchange="ValidateSingleInput(this,id)" required></td>
						</tr>
						<tr>
							<td colspan="2">Bank Passbook(Front Page)<input type="file"
								name="files" id="bank_pass"
								onchange="ValidateSingleInput(this,id)" required></td>
							<td colspan="2">Aadhaar Card<br>
							<input type="file" name="files" id="aad_card"
								onchange="ValidateSingleInput(this,id)" required></td>
						</tr>
						<tr>
							<td colspan="2">10th Class Marksheet<input type="file"
								name="files" id="ssc_cert"
								onchange="ValidateSingleInput(this,id)" required></td>
							<td colspan="2">12th Class Marksheet<input type="file"
								name="files" id="hsc_cert"
								onchange="ValidateSingleInput(this,id)" required></td>
						</tr>
					</table>
				</div>
			</div>
			<br>
			<br>
			<br>



			<div class="container">
				<div class="fdetails">
					<input type="checkbox" id="saccept" required> All the
					details and documents submitted by us are valid and true . If found
					guilty of submitting invalid documents, we may be held responsible
					for that act by us
				</div>
			</div>

			<br>
			<br>
			<br>

			
				<hr>
				<div class="fdetails">
					<table>
						<tr>
							<td colspan="2"><div class="formhead">
									
								</div>
								<input type="submit" value="Submit" style="cursor: pointer; background: rgb(89, 182, 13);

                                color: white;
                                
							  position:absolute;
							  left: 45%;
                                
                                height: 50px;
                                
                                width: 100px;
                                
                                font: bold 15px arial, sans-serif;
                                
                                text-shadow:none;"></td>
							<td colspan="2"><div class="formhead">
								
								</div>
								<br><br><input type="reset" value="Reset" style="cursor: pointer;background: rgb(230, 230, 230);

                                color: rgb(0, 0, 0);
                                position:absolute;
							  left: 45%;

                                
                                height: 50px;
                                
                                width: 100px;
                                
                                font: bold 15px arial, sans-serif;
                                
                                text-shadow:none;"
                                
                                
                                ></td>
						</tr>
					</table>
					<br><br><br><center>
						<a href="homePage"><input type="button" value=" Home" /></a>
					</center>
				</div>
			</div>
			<br>
			<br>
			<br>

			<script type="text/javascript"
				src="${pageContext.request.contextPath}/resources/js/studentRegJS.js"></script>
			<script>
		function validAadhaar()
		{
			var aadhaarNumber = document.getElementById('aadhaarNumber').value; 
			var len=aadhaarNumber.length;
			if(len!=12)
			{
				alert('Invalid Aadhaar Number');
		        document.getElementById("aadhaarNumber").value= "";
		        aadhaarNumber.focus(); 		
			}
		}
		function validPerc(idField)
		{
			var perc=document.getElementById(idField).value; 
			if(perc<0)
			{
				alert('Invalid Value Enterd');
				document.getElementById(idField).value= "";
				idField.focus();
				
			}
		}
		

		/****************************************FILE UPLOAD CHECK START*******************************************************/
		var _validFileExtensions = [".pdf"];    
		function ValidateSingleInput(oInput,fileID) {
		    if (oInput.type == "file") {
		        var sFileName = oInput.value;
		        if (oInput.size > 2097152) // 2 mb for bytes.
		            {
		                alert("File size must under 2mb!");
		                document.getElementById(fileID).value= "";
		                return;
		            }
		         if (sFileName.length > 0) {
		            var blnValid = false;
		            for (var j = 0; j < _validFileExtensions.length; j++) {
		                var sCurExtension = _validFileExtensions[j];
		                if (sFileName.substr(sFileName.length - sCurExtension.length, sCurExtension.length).toLowerCase() == sCurExtension.toLowerCase()) {
		                    blnValid = true;
		                    break;
		                }
		            }
		             
		            if (!blnValid) {
		                alert("Sorry, file uploaded is invalid, allowed extensions are: " + _validFileExtensions.join(", "));
		                oInput.value = "";
		                return false;
		            }
		        }
		    }
		    return true;
		}
		/****************************************FILE UPLOAD CHECK END*******************************************************/


		/********************************District State End*********************************/
		function makeSubmenu(value) {
		      if(value.length==0) document.getElementById("districtSel").innerHTML = "<option></option>";
		      else {
		            var districtOptions = "";
		            for(districtId in districtByState[value]) {
		                  districtOptions+="<option>"+districtByState[value][districtId]+"</option>";
		            }
		            document.getElementById("districtSel").innerHTML = districtOptions;
		      }
		}

		/********************************District State End*********************************/
		var districtByState = {

		     "Andaman and Nicobar Islands":[  
		     "Nicobar",
		     "North And Middle Andaman",
		     "South Andaman", 
		     ],
		     

		     "Andhra Pradesh":[  
		     "Anantapur",
		     "Chittoor",
		     "East Godavari",
		     "Guntur",
		     "Krishna",
		     "Kurnool",
		     "Nellore",
		     "Prakasam",
		     "Srikakulam",
		     "Visakhapatnam",
		     "Vizianagaram",
		     "West Godavari",
		     "YSR Kadapa"
		     ],

		     "Arunachal Pradesh":[  
		     "Tawang",
		     "West Kameng",
		     "East Kameng",
		     "Papum Pare",
		     "Kurung Kumey",
		     "Kra Daadi",
		     "Lower Subansiri",
		     "Upper Subansiri",
		     "West Siang",
		     "East Siang",
		     "Siang",
		     "Upper Siang",
		     "Lower Siang",
		     "Lower Dibang Valley",
		     "Dibang Valley",
		     "Anjaw",
		     "Lohit",
		     "Namsai",
		     "Changlang",
		     "Tirap",
		     "Longding"
		     ],

		     "Assam":[  
		     "Baksa",
		     "Barpeta",
		     "Biswanath",
		     "Bongaigaon",
		     "Cachar",
		     "Charaideo",
		     "Chirang",
		     "Darrang",
		     "Dhemaji",
		     "Dhubri",
		     "Dibrugarh",
		     "Goalpara",
		     "Golaghat",
		     "Hailakandi",
		     "Hojai",
		     "Jorhat",
		     "Kamrup Metropolitan",
		     "Kamrup",
		     "Karbi Anglong",
		     "Karimganj",
		     "Kokrajhar",
		     "Lakhimpur",
		     "Majuli",
		     "Morigaon",
		     "Nagaon",
		     "Nalbari",
		     "Dima Hasao",
		     "Sivasagar",
		     "Sonitpur",
		     "South Salmara-Mankachar",
		     "Tinsukia",
		     "Udalguri",
		     "West Karbi Anglong"
		     ],

		     "Bihar":[  
		     "Araria",
		     "Arwal",
		     "Aurangabad",
		     "Banka",
		     "Begusarai",
		     "Bhagalpur",
		     "Bhojpur",
		     "Buxar",
		     "Darbhanga",
		     "East Champaran (Motihari)",
		     "Gaya",
		     "Gopalganj",
		     "Jamui",
		     "Jehanabad",
		     "Kaimur (Bhabua)",
		     "Katihar",
		     "Khagaria",
		     "Kishanganj",
		     "Lakhisarai",
		     "Madhepura",
		     "Madhubani",
		     "Munger (Monghyr)",
		     "Muzaffarpur",
		     "Nalanda",
		     "Nawada",
		     "Patna",
		     "Purnia (Purnea)",
		     "Rohtas",
		     "Saharsa",
		     "Samastipur",
		     "Saran",
		     "Sheikhpura",
		     "Sheohar",
		     "Sitamarhi",
		     "Siwan",
		     "Supaul",
		     "Vaishali",
		     "West Champaran"
		     ],

		     "Chandigarh (UT)":[  
		     "Chandigarh"
		     ],

		     "Chhattisgarh":[  
		     "Balod",
		     "Baloda Bazar",
		     "Balrampur",
		     "Bastar",
		     "Bemetara",
		     "Bijapur",
		     "Bilaspur",
		     "Dantewada (South Bastar)",
		     "Dhamtari",
		     "Durg",
		     "Gariyaband",
		     "Janjgir-Champa",
		     "Jashpur",
		     "Kabirdham (Kawardha)",
		     "Kanker (North Bastar)",
		     "Kondagaon",
		     "Korba",
		     "Korea (Koriya)",
		     "Mahasamund",
		     "Mungeli",
		     "Narayanpur",
		     "Raigarh",
		     "Raipur",
		     "Rajnandgaon",
		     "Sukma",
		     "Surajpur  ",
		     "Surguja"
		     ],

		     "Dadra and Nagar Haveli (UT)":[  
		     "Dadra & Nagar Haveli"
		     ],

		     "Daman and Diu (UT)":[  
		     "Daman",
		     "Diu"
		     ],

		     "Delhi (NCT)":[  
		     "Central Delhi",
		     "East Delhi",
		     "New Delhi",
		     "North Delhi",
		     "North East  Delhi",
		     "North West  Delhi",
		     "Shahdara",
		     "South Delhi",
		     "South East Delhi",
		     "South West  Delhi",
		     "West Delhi"
		     ],

		     "Goa":[  
		     "North Goa",
		     "South Goa"
		     ],

		     "Gujarat":[  
		     "Ahmedabad",
		     "Amreli",
		     "Anand",
		     "Aravalli",
		     "Banaskantha (Palanpur)",
		     "Bharuch",
		     "Bhavnagar",
		     "Botad",
		     "Chhota Udepur",
		     "Dahod",
		     "Dangs (Ahwa)",
		     "Devbhoomi Dwarka",
		     "Gandhinagar",
		     "Gir Somnath",
		     "Jamnagar",
		     "Junagadh",
		     "Kachchh",
		     "Kheda (Nadiad)",
		     "Mahisagar",
		     "Mehsana",
		     "Morbi",
		     "Narmada (Rajpipla)",
		     "Navsari",
		     "Panchmahal (Godhra)",
		     "Patan",
		     "Porbandar",
		     "Rajkot",
		     "Sabarkantha (Himmatnagar)",
		     "Surat",
		     "Surendranagar",
		     "Tapi (Vyara)",
		     "Vadodara",
		     "Valsad"
		     ],

		     "Haryana":[  
		     "Ambala",
		     "Bhiwani",
		     "Charkhi Dadri",
		     "Faridabad",
		     "Fatehabad",
		     "Gurgaon",
		     "Hisar",
		     "Jhajjar",
		     "Jind",
		     "Kaithal",
		     "Karnal",
		     "Kurukshetra",
		     "Mahendragarh",
		     "Mewat",
		     "Palwal",
		     "Panchkula",
		     "Panipat",
		     "Rewari",
		     "Rohtak",
		     "Sirsa",
		     "Sonipat",
		     "Yamunanagar"
		     ],

		     "Himachal Pradesh":[  
		     "Bilaspur",
		     "Chamba",
		     "Hamirpur",
		     "Kangra",
		     "Kinnaur",
		     "Kullu",
		     "Lahaul &amp; Spiti",
		     "Mandi",
		     "Shimla",
		     "Sirmaur (Sirmour)",
		     "Solan",
		     "Una"
		     ],

		     "Jammu and Kashmir":[  
		     "Anantnag",
		     "Bandipore",
		     "Baramulla",
		     "Budgam",
		     "Doda",
		     "Ganderbal",
		     "Jammu",
		     "Kargil",
		     "Kathua",
		     "Kishtwar",
		     "Kulgam",
		     "Kupwara",
		     "Leh",
		     "Poonch",
		     "Pulwama",
		     "Rajouri",
		     "Ramban",
		     "Reasi",
		     "Samba",
		     "Shopian",
		     "Srinagar",
		     "Udhampur"
		     ],

		     "Jharkhand":[  
		     "Bokaro",
		     "Chatra",
		     "Deoghar",
		     "Dhanbad",
		     "Dumka",
		     "East Singhbhum",
		     "Garhwa",
		     "Giridih",
		     "Godda",
		     "Gumla",
		     "Hazaribag",
		     "Jamtara",
		     "Khunti",
		     "Koderma",
		     "Latehar",
		     "Lohardaga",
		     "Pakur",
		     "Palamu",
		     "Ramgarh",
		     "Ranchi",
		     "Sahibganj",
		     "Seraikela-Kharsawan",
		     "Simdega",
		     "West Singhbhum"
		     ],

		     "Karnataka":[  
		     "Bagalkot",
		     "Ballari (Bellary)",
		     "Belagavi (Belgaum)",
		     "Bengaluru (Bangalore) Rural",
		     "Bengaluru (Bangalore) Urban",
		     "Bidar",
		     "Chamarajanagar",
		     "Chikballapur",
		     "Chikkamagaluru (Chikmagalur)",
		     "Chitradurga",
		     "Dakshina Kannada",
		     "Davangere",
		     "Dharwad",
		     "Gadag",
		     "Hassan",
		     "Haveri",
		     "Kalaburagi (Gulbarga)",
		     "Kodagu",
		     "Kolar",
		     "Koppal",
		     "Mandya",
		     "Mysuru (Mysore)",
		     "Raichur",
		     "Ramanagara",
		     "Shivamogga (Shimoga)",
		     "Tumakuru (Tumkur)",
		     "Udupi",
		     "Uttara Kannada (Karwar)",
		     "Vijayapura (Bijapur)",
		     "Yadgir"
		     ],

		     "Kerala":[  
		     "Alappuzha",
		     "Ernakulam",
		     "Idukki",
		     "Kannur",
		     "Kasaragod",
		     "Kollam",
		     "Kottayam",
		     "Kozhikode",
		     "Malappuram",
		     "Palakkad",
		     "Pathanamthitta",
		     "Thiruvananthapuram",
		     "Thrissur",
		     "Wayanad"
		     ],

		     "Lakshadweep (UT)":[  
		     "Agatti",
		     "Amini",
		     "Androth",
		     "Bithra",
		     "Chethlath",
		     "Kavaratti",
		     "Kadmath",
		     "Kalpeni",
		     "Kilthan",
		     "Minicoy"
		     ],

		     "Madhya Pradesh":[  
		     "Agar Malwa",
		     "Alirajpur",
		     "Anuppur",
		     "Ashoknagar",
		     "Balaghat",
		     "Barwani",
		     "Betul",
		     "Bhind",
		     "Bhopal",
		     "Burhanpur",
		     "Chhatarpur",
		     "Chhindwara",
		     "Damoh",
		     "Datia",
		     "Dewas",
		     "Dhar",
		     "Dindori",
		     "Guna",
		     "Gwalior",
		     "Harda",
		     "Hoshangabad",
		     "Indore",
		     "Jabalpur",
		     "Jhabua",
		     "Katni",
		     "Khandwa",
		     "Khargone",
		     "Mandla",
		     "Mandsaur",
		     "Morena",
		     "Narsinghpur",
		     "Neemuch",
		     "Panna",
		     "Raisen",
		     "Rajgarh",
		     "Ratlam",
		     "Rewa",
		     "Sagar",
		     "Satna",
		     "Sehore",
		     "Seoni",
		     "Shahdol",
		     "Shajapur",
		     "Sheopur",
		     "Shivpuri",
		     "Sidhi",
		     "Singrauli",
		     "Tikamgarh",
		     "Ujjain",
		     "Umaria",
		     "Vidisha"
		     ],

		     "Maharashtra":[  
		     "Ahmednagar",
		     "Akola",
		     "Amravati",
		     "Aurangabad",
		     "Beed",
		     "Bhandara",
		     "Buldhana",
		     "Chandrapur",
		     "Dhule",
		     "Gadchiroli",
		     "Gondia",
		     "Hingoli",
		     "Jalgaon",
		     "Jalna",
		     "Kolhapur",
		     "Latur",
		     "Mumbai City",
		     "Mumbai Suburban",
		     "Nagpur",
		     "Nanded",
		     "Nandurbar",
		     "Nashik",
		     "Osmanabad",
		     "Palghar",
		     "Parbhani",
		     "Pune",
		     "Raigad",
		     "Ratnagiri",
		     "Sangli",
		     "Satara",
		     "Sindhudurg",
		     "Solapur",
		     "Thane",
		     "Wardha",
		     "Washim",
		     "Yavatmal"
		     ],

		     "Manipur":[  
		     "Bishnupur",
		     "Chandel",
		     "Churachandpur",
		     "Imphal East",
		     "Imphal West",
		     "Jiribam",
		     "Kakching",
		     "Kamjong",
		     "Kangpokpi",
		     "Noney",
		     "Pherzawl",
		     "Senapati",
		     "Tamenglong",
		     "Tengnoupal",
		     "Thoubal",
		     "Ukhrul"
		     ],

		     "Meghalaya":[  
		     "East Garo Hills",
		     "East Jaintia Hills",
		     "East Khasi Hills",
		     "North Garo Hills",
		     "Ri Bhoi",
		     "South Garo Hills",
		     "South West Garo Hills ",
		     "South West Khasi Hills",
		     "West Garo Hills",
		     "West Jaintia Hills",
		     "West Khasi Hills"
		     ],

		     "Mizoram":[  
		     "Aizawl",
		     "Champhai",
		     "Kolasib",
		     "Lawngtlai",
		     "Lunglei",
		     "Mamit",
		     "Saiha",
		     "Serchhip"
		     ],

		     "Nagaland":[  
		     "Dimapur",
		     "Kiphire",
		     "Kohima",
		     "Longleng",
		     "Mokokchung",
		     "Mon",
		     "Peren",
		     "Phek",
		     "Tuensang",
		     "Wokha",
		     "Zunheboto"
		     ],

		     "Odisha":[  
		     "Angul",
		     "Balangir",
		     "Balasore",
		     "Bargarh",
		     "Bhadrak",
		     "Boudh",
		     "Cuttack",
		     "Deogarh",
		     "Dhenkanal",
		     "Gajapati",
		     "Ganjam",
		     "Jagatsinghapur",
		     "Jajpur",
		     "Jharsuguda",
		     "Kalahandi",
		     "Kandhamal",
		     "Kendrapara",
		     "Kendujhar (Keonjhar)",
		     "Khordha",
		     "Koraput",
		     "Malkangiri",
		     "Mayurbhanj",
		     "Nabarangpur",
		     "Nayagarh",
		     "Nuapada",
		     "Puri",
		     "Rayagada",
		     "Sambalpur",
		     "Sonepur",
		     "Sundargarh"
		     ],

		     "Puducherry (UT)":[  
		     "Karaikal",
		     "Mahe",
		     "Pondicherry",
		     "Yanam"
		     ],

		     "Punjab":[  
		     "Amritsar",
		     "Barnala",
		     "Bathinda",
		     "Faridkot",
		     "Fatehgarh Sahib",
		     "Fazilka",
		     "Ferozepur",
		     "Gurdaspur",
		     "Hoshiarpur",
		     "Jalandhar",
		     "Kapurthala",
		     "Ludhiana",
		     "Mansa",
		     "Moga",
		     "Muktsar",
		     "Nawanshahr (Shahid Bhagat Singh Nagar)",
		     "Pathankot",
		     "Patiala",
		     "Rupnagar",
		     "Sahibzada Ajit Singh Nagar (Mohali)",
		     "Sangrur",
		     "Tarn Taran"
		     ],

		     "Rajasthan":[  
		     "Ajmer",
		     "Alwar",
		     "Banswara",
		     "Baran",
		     "Barmer",
		     "Bharatpur",
		     "Bhilwara",
		     "Bikaner",
		     "Bundi",
		     "Chittorgarh",
		     "Churu",
		     "Dausa",
		     "Dholpur",
		     "Dungarpur",
		     "Hanumangarh",
		     "Jaipur",
		     "Jaisalmer",
		     "Jalore",
		     "Jhalawar",
		     "Jhunjhunu",
		     "Jodhpur",
		     "Karauli",
		     "Kota",
		     "Nagaur",
		     "Pali",
		     "Pratapgarh",
		     "Rajsamand",
		     "Sawai Madhopur",
		     "Sikar",
		     "Sirohi",
		     "Sri Ganganagar",
		     "Tonk",
		     "Udaipur"
		     ],

		     "Sikkim":[  
		     "East Sikkim",
		     "North Sikkim",
		     "South Sikkim",
		     "West Sikkim"
		     ],

		     "Tamil Nadu":[  
		     "Ariyalur",
		     "Chennai",
		     "Coimbatore",
		     "Cuddalore",
		     "Dharmapuri",
		     "Dindigul",
		     "Erode",
		     "Kanchipuram",
		     "Kanyakumari",
		     "Karur",
		     "Krishnagiri",
		     "Madurai",
		     "Nagapattinam",
		     "Namakkal",
		     "Nilgiris",
		     "Perambalur",
		     "Pudukkottai",
		     "Ramanathapuram",
		     "Salem",
		     "Sivaganga",
		     "Thanjavur",
		     "Theni",
		     "Thoothukudi (Tuticorin)",
		     "Tiruchirappalli",
		     "Tirunelveli",
		     "Tiruppur",
		     "Tiruvallur",
		     "Tiruvannamalai",
		     "Tiruvarur",
		     "Vellore",
		     "Viluppuram",
		     "Virudhunagar"
		     ],

		     "Telangana":[  
		     "Adilabad",
		     "Bhadradri Kothagudem",
		     "Hyderabad",
		     "Jagtial",
		     "Jangaon",
		     "Jayashankar Bhoopalpally",
		     "Jogulamba Gadwal",
		     "Kamareddy",
		     "Karimnagar",
		     "Khammam",
		     "Komaram Bheem Asifabad",
		     "Mahabubabad",
		     "Mahabubnagar",
		     "Mancherial",
		     "Medak",
		     "Medchal",
		     "Nagarkurnool",
		     "Nalgonda",
		     "Nirmal",
		     "Nizamabad",
		     "Peddapalli",
		     "Rajanna Sircilla",
		     "Rangareddy",
		     "Sangareddy",
		     "Siddipet",
		     "Suryapet",
		     "Vikarabad",
		     "Wanaparthy",
		     "Warangal (Rural)",
		     "Warangal (Urban)",
		     "Yadadri Bhuvanagiri"
		     ],

		     "Tripura":[  
		     "Dhalai",
		     "Gomati",
		     "Khowai",
		     "North Tripura",
		     "Sepahijala",
		     "South Tripura",
		     "Unakoti",
		     "West Tripura"
		     ],

		     "Uttarakhand":[  
		     "Almora",
		     "Bageshwar",
		     "Chamoli",
		     "Champawat",
		     "Dehradun",
		     "Haridwar",
		     "Nainital",
		     "Pauri Garhwal",
		     "Pithoragarh",
		     "Rudraprayag",
		     "Tehri Garhwal",
		     "Udham Singh Nagar",
		     "Uttarkashi"
		     ],

		     "Uttar Pradesh":[  
		     "Agra",
		     "Aligarh",
		     "Allahabad",
		     "Ambedkar Nagar",
		     "Amethi (Chatrapati Sahuji Mahraj Nagar)",
		     "Amroha (J.P. Nagar)",
		     "Auraiya",
		     "Azamgarh",
		     "Baghpat",
		     "Bahraich",
		     "Ballia",
		     "Balrampur",
		     "Banda",
		     "Barabanki",
		     "Bareilly",
		     "Basti",
		     "Bhadohi",
		     "Bijnor",
		     "Budaun",
		     "Bulandshahr",
		     "Chandauli",
		     "Chitrakoot",
		     "Deoria",
		     "Etah",
		     "Etawah",
		     "Faizabad",
		     "Farrukhabad",
		     "Fatehpur",
		     "Firozabad",
		     "Gautam Buddha Nagar",
		     "Ghaziabad",
		     "Ghazipur",
		     "Gonda",
		     "Gorakhpur",
		     "Hamirpur",
		     "Hapur (Panchsheel Nagar)",
		     "Hardoi",
		     "Hathras",
		     "Jalaun",
		     "Jaunpur",
		     "Jhansi",
		     "Kannauj",
		     "Kanpur Dehat",
		     "Kanpur Nagar",
		     "Kanshiram Nagar (Kasganj)",
		     "Kaushambi",
		     "Kushinagar (Padrauna)",
		     "Lakhimpur - Kheri",
		     "Lalitpur",
		     "Lucknow",
		     "Maharajganj",
		     "Mahoba",
		     "Mainpuri",
		     "Mathura",
		     "Mau",
		     "Meerut",
		     "Mirzapur",
		     "Moradabad",
		     "Muzaffarnagar",
		     "Pilibhit",
		     "Pratapgarh",
		     "RaeBareli",
		     "Rampur",
		     "Saharanpur",
		     "Sambhal (Bhim Nagar)",
		     "Sant Kabir Nagar",
		     "Shahjahanpur",
		     "Shamali (Prabuddh Nagar)",
		     "Shravasti",
		     "Siddharth Nagar",
		     "Sitapur",
		     "Sonbhadra",
		     "Sultanpur",
		     "Unnao",
		     "Varanasi"
		     ],

		     "West Bengal":[  
		     "Alipurduar",
		     "Bankura",
		     "Birbhum",
		     "Burdwan (Bardhaman)",
		     "Cooch Behar",
		     "Dakshin Dinajpur (South Dinajpur)",
		     "Darjeeling",
		     "Hooghly",
		     "Howrah",
		     "Jalpaiguri",
		     "Kalimpong",
		     "Kolkata",
		     "Malda",
		     "Murshidabad",
		     "Nadia",
		     "North 24 Parganas",
		     "Paschim Medinipur (West Medinipur)",
		     "Purba Medinipur (East Medinipur)",
		     "Purulia",
		     "South 24 Parganas",
		     "Uttar Dinajpur (North Dinajpur)"
		     ]    
		}

		</script>
		</sF:form>
</body>
</html>