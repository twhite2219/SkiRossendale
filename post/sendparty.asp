<!--#include file="../linked/include.asp"-->
<% 
If Session("PersonID") = "" then
Response.Redirect "logonreal.asp"
End if 
%>
<!DOCTYPE HTML PUBLIC 
<html>
<!-- page to store data of a party course booking by the user in the database-->
<head>
<script type="text/javascript" src="../linked/scripts.js"></script>
<title>sending data of course</title>
</head>
<body>
<link rel="stylesheet" type="text/css" href="../linked/csssheet.css">
<div id="head"></div>
<h1> details sent!</h1>
<%
activity=request.form("activity")
skill=request.form("skill")
numberadults=request.form("numberadults")
numberinfants=request.form("numberinfants")
numberchildren=request.form("numberchildren")
numberteens=request.form("numberteens")
duration=request.form("duration")
date1=request.form("mydate")
time1=request.form("time")
clientID=session("PersonID")

if activity="snowboarding" then slope="funpark" else if skill="beginner" then slope="beginner slope" else slope="main slope"

dim orseof
set db=server.createobject("adodb.connection")
set orseof=server.createobject("adodb.recordset")
db.open "DRIVER={Microsoft Access Driver (*.mdb)}; DBQ=" & Server.MapPath("../linked/skiRossy.mdb") 
 'strSQL = "INSERT INTO tblparty (clientID,activity,skill,numberadults,numberinfants,numberchildren,numberteens,time,duration,slope) values ("&clientID&",'"&activity&"','"&skill&"',"&numberadults&","&numberinfants&","&numberchildren&","&numberteens&",#"&time1&"#,"&duration&",'"&slope&"')" 
 strSQL = "INSERT INTO tblparty (clientID,activity,skill,numberadults,numberinfants,numberchildren,numberteens,date,time,duration,slope) values ("&clientID&",'"&activity&"','"&skill&"',"&numberadults&","&numberinfants&","&numberchildren&","&numberteens&",#"&date1&"#,"&time1&","&duration&",'"&slope&"')" 
  orseof.Open strSQL, db
'response.write (strSQL)
'orseof.close 
%>
</body>
<!--//validate in sql for checking if there is already one on at that time no overlaps-->
</html>
