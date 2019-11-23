<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page session="false"%>
<!DOCTYPE html>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="sF"%>



<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Institute Registration Page</title>
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
background-color: #eee;
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
justify-content: center;
}


body {
background: #042631;
justify-content: center;
align-items: center;
font-family: 'Montserrat', sans-serif;	
display: block;
}

.container {
background-color: #fff;
border-radius: 10px;
  box-shadow: 0 14px 28px rgba(0, 141, 141, 0.25), 
        0 10px 10px rgba(0, 0, 0, 0.22);
position: relative;
top: 100px;
overflow: hidden;

max-width: 60%;

/*font-size: 24px;*/

line-height: 30px;
letter-spacing: 0.5px;
margin: auto;

}

table, th, td {

border-collapse: collapse;
font-size: 20px;
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
font-size: 20px;
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
    background-color: #042631;
    box-shadow: none;
}
a{
position: relative;
left: 15%;
text-align: center;
text-decoration: none;}
</style>
</head>
<body>
        <div class="header">
                <h1>NATIONAL SCHOLARSHIP PORTAL</h1>
              
              
                  <br><H3>Government Of India</H3>
                  
                         <img class="logo" src="${pageContext.request.contextPath}/resources/images/emblem.png" alt="logo">
              
                        </div>
<div class="formhead" style="text-align: center;">
    <span style="color: #fff; position:relative; top: 90px;">Institute Registration Form</span>
</div>
<br>
<div class="instituregform">
    <sF:form method="POST" commandName="instituteRegistration"
        action="submitInsForm" name="insRegForm"
        enctype="multipart/form-data">
        <div class="container">
            <div class="formhead">
                <span>Basic Details</span>
            </div>
            <hr>
            <div class="fdetails">
                <table>
                    <tr>
                        <td colspan="2">Institute Category <select
                            name="instituteCategory" id="instituteCategory">
                                <option disabled selected value="defaultVal" style="font-style: italic">Select 
                                    Institute Category</option>
                                <option value="CU">Central University</option>
                                <option value="SU">State University</option>
                                <option value="PU">Private University</option>
                                <option value="DU">Deemed University</option>
                        </select>
                            <div id="instituteCategory_error" class="errorMsg"></div>
                        </td>
                        <td colspan="2">Institute Name<input type="text"
                            name="instituteName" id="instituteName">
                            <div id="instituteName_error" class="errorMsg"></div>
                        </td>
                    </tr>

                    <tr>
                        <td colspan="2">State<br>
                        <select name="state" id="state" size="1"
                            onchange="makeSubmenu(this.value)">
                                <option value="defaultVal" disabled selected style="font-style: italic">Select 
                                    State</option>
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
                        </select>
                            <div id="state_error" class="errorMsg"></div>
                        </td>
                        <td colspan="2">District<br><select name="district"
                            id="district" required>
                                <option value="defaultVal" disabled selected style="font-style: italic">Choose
                                    City</option>
                        </select>
                            <div id="district_error" class="errorMsg"></div>
                        </td>
                    </tr>
                    <tr>

                        <td colspan="2">Location <select id="location"
                            name="location">
                                <option disabled selected value="defaultVal" style="font-style: italic">Select
                                    Location</option>
                                <option>Rural</option>
                                <option>Urban</option>
                        </select>
                            <div id="location_error" class="errorMsg"></div>
                    </tr>
                    <tr>
                        <td colspan="2">Institute Type <select id="type" name="type">
                                <option disabled selected value="defaultVal" style="font-style: italic">Select 
                                    Institute Type</option>
                                <option>Central University</option>
                                <option>State University</option>
                                <option>Private University</option>
                                <option>Deemed University</option>
                        </select>
                            <div id="type_error" class="errorMsg"></div>
                        </td>
                        <td colspan="2">Affiliated University State <select id="aff"
                            name="aff">
                                <option value="defaultVal" disabled selected style="font-style: italic">Select
                                    Affiliated Institute State</option>
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
                        </select>
                            <div id="aff_error" class="errorMsg"></div>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">Affiliated University/Board id<input
                            type="number" id="affUniId" name="affUniId">
                            <div id="affUniName_error" class="errorMsg"></div>
                        </td>
                        <td colspan="2">Year From Which Admission Started<input
                            type="date" name="yearFromAdmissionStarted"
                            id="yearFromAdmissionStarted">
                            <div id="yearFromAdmissionStarted_error" class="errorMsg"></div>
                         <!--  min="2006-1-1" max="2019-10-29" -->
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">Set Password<br>
                        <input type="password" id="password" name="password">
                            <div id="ispwd_error" class="errorMsg"></div>
                        </td>
                        <td colspan="2">Confirm Password<input type="password"
                            name="iconfpwd" id="iconfpwd">
                            <div id="iconfpwd_error" class="errorMsg"></div>
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
                <span>Proof Of Existence Of Institute</span>
            </div>
            <hr>
            <div class="fdetails">

                Institute Establishment/Registration Certificate<input type="file"
                    name="files" id="files" onchange="ValidateSingleInput(this,id)" /><br>

                <div id="instituteEstablishmentCerti_error" class="errorMsg">${errorMessage}</div>

            </div>
        </div>
        <br>
        <br>
        <br>
        <div class="container">
            <div class="formhead">
                <span>Affiliated To
            </div>
            <hr>
            <div class="fdetails">
                University/Board Affiliation Certificate<input type="file"
                    name="files" id="uniAffCerti"
                    onchange="ValidateSingleInput(this,id)" />
                <div id="uniAffCerti_error" class="errorMsg">${errorMessage}</div>
            </div>
        </div>
        <br>
        <br>
        <br>
        <div class="container">
            <div class="formhead">
                <span>Details</span>
            </div>
            <hr>
            <div class="fdetails">
                <table>
                    <tr>
                        <td colspan="2">Address<br>
                        <input type="text" id="address" name="address">
                            <div id="address_error" class="errorMsg"></div>
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
                <span>Contact Details</span>
            </div>
            <hr>
            <div class="fdetails">
                <table>
                    <tr>
                        <td colspan="2">Principal Name<input type="text"
                            id="principalName" name="principalName">
                            <div id="principalName_error" class="errorMsg"></div>
                        </td>
                        <td colspan="2">Mobile Number<input type="Number"
                            id="principalMobileNumber" name="principalMobileNumber">
                            <div id="principalMobileNumber_error" class="errorMsg"></div>
                        </td>
                    </tr>
                </table>
            </div>
        </div>
        <br>
        <br>
      <br>  <div class="container">
            <div class="fdetails">
                <input type="checkbox" id="iaccept" required> All the
                details and documents submitted by us are valid and true . If found
                guilty of submitting invalid documents, we may be held responsible
                for that act by us
            </div>
        </div>
        <br>
        <br>
        <br>
        
         
            <div class="container" id="sub">
            <div class="fdetails">
                <table>
                    <tr>
                        <td colspan="2"><div class="formhead">
                            
                            </div>
                            <input type="submit" value="Submit"
                            onclick="return validation()" style="cursor: pointer;background: rgb(2, 163, 37);

                            color: white;
                            
                            border-style: outset;
                            
                            border-color: rgba(0, 0, 0, 0.884);
                            
                            height: 50px;
                            
                            width: 100px;
                            
                            font: bold 15px arial, sans-serif;
                            
                            text-shadow:none;
                            position: relative;
                            left:320px;"
                            
                            
                            ></td>
                        <td colspan="2"><div class="formhead">
                            
                            </div>
                            <input type="reset" value ="Reset" style="cursor: pointer;background: rgb(73, 73, 73);

                            color: white;
                            
                            border-style: outset;
                            
                            border-color: rgba(0, 0, 0, 0.884);
                            
                            height: 50px;
                            
                            width: 100px;
                            
                            font: bold 15px arial, sans-serif;
                            
                            text-shadow:none;
                            position:relative;
                            left: 320px;"
                            
                            
                    
                            ></td>
                           
                    </tr>
                </table>
                 <a href="homePage"><input type="button" value="Visit Home" /></a>
            </div>
        </div>

    </sF:form>
</div>
<script>
    
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
function makeSubmenu(value) {
if(value.length==0) document.getElementById("district").innerHTML = "<option></option>";
else {
var districtOptions = "";
for(districtId in districtByState[value]) {
districtOptions+="<option>"+districtByState[value][districtId]+"</option>";
}
document.getElementById("district").innerHTML = districtOptions;
}
}


function validation()
{
  var instituteCategory = document.forms["insRegForm"]["instituteCategory"]; 
  var instituteName = document.forms["insRegForm"]["instituteName"];
  var state = document.forms["insRegForm"]["state"];               
  var district = document.forms["insRegForm"]["district"];
  var instituteCode = document.forms["insRegForm"]["instituteCode"]; 
  var location = document.forms["insRegForm"]["location"]; 
  var type = document.forms["insRegForm"]["type"];              
  var aff = document.forms["insRegForm"]["aff"]; 
  var affUniName = document.forms["insRegForm"]["affUniName"];              
  var yearFromAdmissionStarted = document.forms["insRegForm"]["yearFromAdmissionStarted"];


  var instituteEstablishmentCerti = document.forms["insRegForm"]["instituteEstablishmentCerti"];
  var uniAffCerti = document.forms["insRegForm"]["uniAffCerti"];


  var ispwd = document.forms["insRegForm"]["ispwd"];
  var iconfpwd = document.forms["insRegForm"]["iconfpwd"];  
  /*var ilineOne = document.forms["insRegForm"]["ilineOne"];
  var ilineTwo = document.forms["insRegForm"]["ilineTwo"]; 
  var icity = document.forms["insRegForm"]["icity"];
  var istate = document.forms["insRegForm"]["istate"];*/
  var address = document.forms["insRegForm"]["address"]
  var principalName = document.forms["insRegForm"]["principalName"]; 
  var principalMobileNumber = document.forms["insRegForm"]["principalMobileNumber"];
  var iaccept = document.forms["insRegForm"]["iaccept"];

  var submit="true";
  var alphaExp = /^[a-zA-Z]+$/;
  var phoneno = /^\d{10}$/;

  var date = document.getElementById("yearFromAdmissionStarted").value;
  var varDate = new Date(date); //dd-mm-YYYY
  var today = new Date();


   if (instituteCategory.value=="defaultVal")                                  
  { 
       document.getElementById('instituteCategory_error').innerHTML = "** field can't be empty";
       instituteCategory.focus(); 
       submit="false"; 
   }

   if (instituteName.value == "")                               
   { 
      document.getElementById('instituteName_error').innerHTML = "** field can't be empty";
      instituteName.focus(); 
      submit="false"; 
  } 
  

  
  if (state.value == "defaultVal")                                  
  { 
       document.getElementById('state_error').innerHTML = "** field can't be empty";
       state.focus(); 
       submit="false"; 
   } 

   if (district.value == "defaultVal")                               
   { 
      document.getElementById('district_error').innerHTML = "** field can't be empty";
      district.focus(); 
      submit="false"; 
  } 
  
  if (instituteCode.value == "")                                  
  { 
       document.getElementById('instituteCode_error').innerHTML = "** field can't be empty";
       instituteCode.focus(); 
       submit="false"; 
  }
  if (location.value == "defaultVal")                                  
  { 
       document.getElementById('location_error').innerHTML = "** field can't be empty";
       location.focus(); 
       submit="false"; 
   }  
   
  if (type.value == "defaultVal")                                  
  { 
       document.getElementById('type_error').innerHTML = "** field can't be empty";
       type.focus(); 
       submit="false"; 
   }  

   if (aff.value == "defaultVal")                               
   { 
      document.getElementById('aff_error').innerHTML = "** field can't be empty";
      aff.focus(); 
      submit="false"; 
  } 
  if (affUniName.value == "defaultVal")                                  
  { 
       document.getElementById('affUniName_error').innerHTML = "** field can't be empty";
       affUniName.focus(); 
       submit="false"; 
   }  

   if (yearFromAdmissionStarted.value == "")                               
   { 
      document.getElementById('yearFromAdmissionStarted_error').innerHTML = "** field can't be empty";
      yearFromAdmissionStarted.focus(); 
      submit="false"; 
  } 
  if(varDate >= today) 
  {
      document.getElementById('yearFromAdmissionStarted_error').innerHTML = "** date invalid";
      yearFromAdmissionStarted.focus(); 
      submit="false"; 
  }




  if (instituteEstablishmentCerti.value == "")                               
   { 
      document.getElementById('instituteEstablishmentCerti_error').innerHTML = "** field can't be empty";
      instituteEstablishmentCerti.focus(); 
      submit="false"; 
  } 

  if (uniAffCerti.value == "")                               
   { 
      document.getElementById('uniAffCerti_error').innerHTML = "** field can't be empty";
      uniAffCerti.focus(); 
      submit="false"; 
  } 




  if (ispwd.value == "")                               
   { 
      document.getElementById('ispwd_error').innerHTML = "** field can't be empty";
      ispwd.focus(); 
      submit="false"; 
  } 
  if (iconfpwd.value == "")                               
   { 
      document.getElementById('iconfpwd_error').innerHTML = "** field can't be empty";
      iconfpwd.focus(); 
      submit="false"; 
  } 
  if (iconfpwd.value != ispwd.value)                               
   { 
      alert ("password not matching");
      iconfpwd.focus(); 
      submit="false"; 
  } 
  /*if (ilineOne.value == "")                               
   { 
      document.getElementById('ilineOne_error').innerHTML = "** field can't be empty";
      ilineOne.focus(); 
      submit="false"; 
  } 
  if (ilineTwo.value == "")                               
   { 
      document.getElementById('ilineTwo_error').innerHTML = "** field can't be empty";
      ilineTwo.focus(); 
      submit="false"; 
  } 
  if (icity.value == "")                               
   { 
      document.getElementById('icity_error').innerHTML = "** field can't be empty";
      icity.focus(); 
      submit="false"; 
  } 
  if (istate.value == "")                               
   { 
      document.getElementById('istate_error').innerHTML = "** field can't be empty";
      istate.focus(); 
      submit="false"; 
  } */
  if (address.value == "")                               
   { 
      document.getElementById('address_error').innerHTML = "** field can't be empty";
      address.focus(); 
      submit="false"; 
  } 
  if (principalName.value == "")                               
   { 
      document.getElementById('principalName_error').innerHTML = "** field can't be empty";
      principalName.focus(); 
      submit="false"; 
  } 
  if (principalMobileNumber.value == "")                               
   { 
      document.getElementById('principalMobileNumber_error').innerHTML = "** field can't be empty";
      principalMobileNumber.focus(); 
      submit="false"; 
  } 
  if (!principalMobileNumber.value.match(phoneno))                               
   { 
     // document.getElementById('principalMobileNumber_error').innerHTML = "** invalid number";
      principalMobileNumber.focus(); 
      submit="false"; 
  } 
  
  if(!iaccept.checked)
  {
        alert('You must agree to the terms first.');
        submit="false";
  }

  return submit;
}
function removeWarning()
{
  document.getElementById(this.id + "_error").innerHTML= "";
}
document.getElementById("instituteCategory").onchange= removeWarning;
document.getElementById("instituteName").onchange= removeWarning;
document.getElementById("state").onclick= removeWarning;
document.getElementById("district").onchange= removeWarning;
document.getElementById("instituteCode").onkeyup= removeWarning;
document.getElementById("location").onclick= removeWarning;
document.getElementById("type").onchange= removeWarning;
document.getElementById("aff").onchange= removeWarning;
document.getElementById("affUniName").onchange= removeWarning;
document.getElementById("yearFromAdmissionStarted").onchange= removeWarning;
document.getElementById("ispwd").onkeyup= removeWarning;
document.getElementById("iconfpwd").onkeyup= removeWarning;
/*document.getElementById("ilineOne").onkeyup= removeWarning;
document.getElementById("ilineTwo").onkeyup= removeWarning;
document.getElementById("icity").onkeyup= removeWarning;
document.getElementById("istate").onkeyup= removeWarning;*/
document.getElementById("address").onkeyup= removeWarning;
document.getElementById("principalName").onkeyup= removeWarning;
document.getElementById("principalMobileNumber").onkeyup= removeWarning;
document.getElementById("itele").onkeyup= removeWarning;

</script>

</body>
</html>