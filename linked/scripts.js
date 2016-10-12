// JavaScript Document
var txtfirstname;
var txtlastname;
var txtaddressln1;
var txtaddressln2;
var txtpostcode;
var txtemail;
var txtdob;
var txtphoneno;
var txtemergency;
var txtpassword;
var atpos;
var dotpos;
var currdate = new Date();
var duration;
var numberadults;
var numberinfants;
var numberchildren;
var numberteens;
var skill_level;
var activity;
var age;
var hours1
var dateinput
var validformat
var dayobj
var dayfield
var monthfield
var yearfield
var hrs
var mins


function valgroup()<!-- stops user from not entering blank data on the showgroup.asp form -->
{ 
var courseno=document.getElementById('courseno').value;
if (courseno==null || courseno=="")
  {
  alert  ("Please choose a course number before sumbitting!");
  return false;
  }
}

function actskill() <!-- disables skill level input when tubing is selected -->
{ 
	if(document.getElementById('a3').checked) 
		{
  		activity = document.getElementById('a3').value;
		skill_level = "n/a"
		document.getElementById("s1").disabled=true;
		document.getElementById("s2").disabled=true;
		document.getElementById("s3").disabled=true;
		}
		else
		{
		document.getElementById("s1").disabled=false;
		document.getElementById("s2").disabled=false;
		document.getElementById("s3").disabled=false;
		}
}

function negative1()  <!-- validates 1st number box -->
{ numberadults=document.forms["formparty"]["numberadults"].value;
if (numberadults>0)
	{
	document.getElementById("down1").disabled=false;
	 }
	else
	{
	document.getElementById("down1").disabled=true;
	}
	
}

function negative2() <!-- validates 2nd number box -->
{  numberinfants=document.forms["formparty"]["numberinfants"].value;
if (numberinfants>0)
	{
	document.getElementById("down2").disabled=false;
	 }
	else
	{
	document.getElementById("down2").disabled=true;
	}
}

function negative3() <!-- validates 3rd number box -->
{  numberchildren=document.forms["formparty"]["numberchildren"].value;
 	if (numberchildren>0)
	{
	document.getElementById("down3").disabled=false;
	 }
	else
	{
	document.getElementById("down3").disabled=true;
	}
}

function negative4() <!-- validates 4th number box -->
{ numberteens=document.forms["formparty"]["numberteens"].value;
	if (numberteens>0)
	{
	document.getElementById("down4").disabled=false;
	 }
	else
	{
	document.getElementById("down4").disabled=true;
	}
}
function validateuser1()<!-- form validation for the inputcustomer.asp page -->
{
txtfirstname=document.forms["frmAddCustomer"]["txtFirstName"].value;
txtlastname=document.forms["frmAddCustomer"]["txtlastname"].value;
txtaddressln1=document.forms["frmAddCustomer"]["txtaddressln1"].value;
 txtaddressln2=document.forms["frmAddCustomer"]["txtaddressln2"].value;
 txtpostcode=document.forms["frmAddCustomer"]["txtpostcode"].value;
 txtemail=document.forms["frmAddCustomer"]["txtemail"].value;
 txtdob=document.forms["frmAddCustomer"]["txtdob"].value;
 txtphoneno=document.forms["frmAddCustomer"]["txtphoneno"].value;
 txtemergency=document.forms["frmAddCustomer"]["txtemergency"].value;
 txtpassword=document.forms["frmAddCustomer"]["txtpassword"].value;
 atpos=txtemail.indexOf("@");
 dotpos=txtemail.lastIndexOf(".");
if (txtfirstname==null || txtfirstname=="")<!-- stops the text box from being empty -->
  {
  alert  ("first name must be filled out");
  return false;
  }
  if (txtlastname==null || txtlastname=="")<!-- stops the text box from being empty -->
  {
  alert  ("last name must be filled out");
  return false;
  }
    if (txtaddressln1==null || txtaddressln1=="" ||txtaddressln2==null || txtaddressln2=="")<!-- stops the text box from being empty -->
  {
  alert  ("address must be correctly filled out");
  return false;
  }
    if (txtpostcode==null || txtpostcode=="")<!-- stops the text box from being empty -->
  {
  alert  ("postcode must be filled out");
  return false;
  }
  if (txtemail==null || txtemail=="" || atpos<1 || dotpos<atpos+2 || dotpos+2>=x.length)<!--  stops the text box from being empty and email validation to ensure there is an "@" and a "." -->
  {
  alert("invalid or empty e-mail address, please try again");
  return false;
  }
  if (txtphoneno==null || txtphoneno=="")<!-- stops the text box from being empty -->
  {
  alert  ("phone number must be filled in");
  return false;
  }
   if (txtemergency==null || txtemergency=="")<!-- stops the text box from being empty -->
  {
  alert  ("emergency contact number must be filled in");
  return false;
  }
    if (txtpassword==null || txtpassword=="")<!-- stops the text box from being empty -->
  {
  alert  ("password must be filled in");
  return false;
  }
    if (txtdob==null || txtdob=="" || txtdob.length>7 || txtdob.length<10)<!-- stops the text box from being empty and ensures it is of a valid length -->
  {
  alert  ("date of birth must be filled in correctly");
  return false;
  }
} 

 function validateuser2()<!-- validation for the second user information form updatedetails.asp -->
{
txtfirstname=document.forms["updateuser"]["txtFirstName"].value;
txtlastname=document.forms["updateuser"]["txtlastname"].value;
txtaddressln1=document.forms["updateuser"]["txtaddressln1"].value;
 txtaddressln2=document.forms["updateuser"]["txtaddressln2"].value;
 txtpostcode=document.forms["updateuser"]["txtpostcode"].value;
 txtemail=document.forms["updateuser"]["txtemail"].value;
 txtdob=document.forms["updateuser"]["txtdob"].value;
 txtphoneno=document.forms["updateuser"]["txtphoneno"].value;
 txtemergency=document.forms["updateuser"]["txtemergency"].value;
 txtpassword=document.forms["updateuser"]["txtpassword"].value;
 atpos=txtemail.indexOf("@");
 dotpos=txtemail.lastIndexOf(".");
if (txtfirstname==null || txtfirstname=="")<!-- stops the text box from being empty -->
  {
  alert  ("first name must be filled out");
  return false;
  }
  if (txtlastname==null || txtlastname=="")<!-- stops the text box from being empty -->
  {
  alert  ("last name must be filled out");
  return false;
  }
    if (txtaddressln1==null || txtaddressln1=="" ||txtaddressln2==null || txtaddressln2=="")<!-- stops the text box from being empty -->
  {
  alert  ("address must be correctly filled out");
  return false;
  }
    if (txtpostcode==null || txtpostcode=="")<!-- stops the text box from being empty -->
  {
  alert  ("postcode must be filled out");
  return false;
  }
        if (txtemail==null || txtemail=="" || atpos<1 || dotpos<atpos+2 || dotpos+2>=x.length)<!--  stops the text box from being empty and email validation to ensure there is an "@" and a "." -->
  {
  alert("invalid or empty e-mail address, please try again");
  return false;
  }
    if (txtphoneno==null || txtphoneno=="")<!-- stops the text box from being empty -->
  {
  alert  ("phone number must be filled in");
  return false;
  }
   if (txtemergency==null || txtemergency=="")<!-- stops the text box from being empty -->
  {
  alert  ("emergency contact number must be filled in");
  return false;
  }
    if (txtpassword==null || txtpassword=="")<!-- stops the text box from being empty -->
  {
  alert  ("password must be filled in");
  return false;
  }
    if (txtdob==null || txtdob=="" || txtdob.length>7 || txtdob.length<10)<!-- stops the text box from being empty and ensures it is of a valid length -->
  {
  alert  ("date of birth must be filled in correctly");
  return false;
  }
}

function validateFormparty()  <!-- validates fields in bookparty.asp-->
{ 
dateinput=document.forms["formparty"]["mydate"].value;
hrs=document.forms["formparty"]["mytime"].value
hours1=hrs.split(":")[0]
mins=hrs.split(":")[1]
validformat=/^\d{1,2}\/\d{1,2}\/\d{4}$/
dayfield=dateinput.split("/")[0];
monthfield=dateinput.split("/")[1];
yearfield=dateinput.split("/")[2];
dayobj = new Date(yearfield,monthfield-1,dayfield);
 var result=validformat.test(dateinput)
 numberadults=document.forms["formparty"]["numberadults"].value;
 numberinfants=document.forms["formparty"]["numberinfants"].value;
 numberchildren=document.forms["formparty"]["numberchildren"].value;
 numberteens=document.forms["formparty"]["numberteens"].value;
	
if (document.getElementById('a1').checked) <!-- stops the activity radio buttons from being empty -->
	{
  activity = document.getElementById('a1').value;
		}
else if (document.getElementById('a2').checked) 
	{
  activity = document.getElementById('a2').value;
		}
else if(document.getElementById('a3').checked) 
		{
  activity = document.getElementById('a3').value;
		}
else
	{
	alert  ("please choose an activity");
  	return false;
	}
if (activity=="skiing" || activity=="snowboarding")<!-- if tubing is not selected, ensures the user also chooses a skill level -->
{
	if (document.getElementById('s1').checked) 
		{
 	 	skill_level = document.getElementById('s1').value;
		}
	else if (document.getElementById('s2').checked) 
		{
 		 skill_level = document.getElementById('s2').value;
		}
	else if(document.getElementById('s3').checked) 
		{
 	 skill_level = document.getElementById('s3').value;
		}
	else
		{
		alert ("please select a skill level");
 	 	return false;
		}
}
if (numberadults=="0" &&  numberinfants=="0" &&  numberchildren=="0" && numberteens=="0")<!-- checks there is a min of 1 person in total on the course-->
  {
  alert  ("invalid! nobody is attending the course!");
  return false;
  }

if (result==false)<!-- regex validation for date , basic format check -->
	{
	alert("Invalid Date Format. Please correct and submit again.")
	 return false
	}
else if (dayobj<currdate)<!-- ensures chosen date is after the current date -->
{
  alert("the date you have selected has already passed- please try again.");
   return false;
	}
	  if (mins!=0)<!-- ensures the time of the course is on the hour -->
{
		alert  ("only on the hour. please change time/ seperate the time by a colon, (:)");
		return false;
	}
if (hours1<12 || hours1>17)<!--stops a time entry that is not in centre operating hours-->
{ 
alert ("invalid time! must be between 12.00 and 17.00!");
return false;
}
}



function validateFormpriv()  <!-- validates empty fields in page-->
{
dateinput=document.forms["formpriv"]["mydate"].value;
hrs=document.forms["formpriv"]["mytime"].value
validformat=/^\d{1,2}\/\d{1,2}\/\d{4}$/
dayfield=dateinput.split("/")[0];
monthfield=dateinput.split("/")[1];
yearfield=dateinput.split("/")[2];
hours1=hrs.split(":")[0]
mins=hrs.split(":")[1]
dayobj = new Date(yearfield,monthfield-1,dayfield);
 var result=validformat.test(dateinput)
age=document.getElementById('selectage').value;
skill_level=document.getElementById('selectskill').value;

if (document.getElementById('a1').checked) <!-- stops the activity radio buttons from being empty -->
		{
  activity = document.getElementById('a1').value;
		}
else if (document.getElementById('a2').checked) 
	{
  activity = document.getElementById('a2').value;
		}
else 
	{
	alert  ("please choose an activity");
  	return false;
	}

if (skill_level== null ||skill_level=="") <!-- stops the skill level combo box from being empty -->
		{
		alert  ("please select a skill level");
 	 	return false;
		}
if (age== null || age=="") <!-- stops the age range combo box from being empty -->
		{
		alert  ("please select an age range");
		return false;
		}
if (mins!=0)<!-- ensures the time of the course is on the hour -->
{
		alert  ("only on the hour. please change time/ seperate the time by a colon, (:)");
		return false;
		}
if (hours1<12 || hours1>17)<!--stops a time entry that is not in centre operating hours-->
{ 
alert ("invalid time! must be between 12.00 and 17.00!");
return false;
}
if (result==false)<!-- regex validation for date , basic format check -->
	{
	alert("Invalid Date Format. Please correct and submit again.")
		  return false;
	}
else if (dayobj<currdate)<!-- ensures chosen date is after the current date -->
{
 alert("the date you have selected has already passed- please try again.");
 return false;
 }
}





