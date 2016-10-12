<!--#include file="../linked/admininclude.asp"-->
<% 
If Session("PersonID") = "" then
Response.Redirect "adminlogon.asp"
End if 
%>
<!DOCTYPE HTML PUBLIC 
<html>
<!-- page to store new group courses in the database-->
<head>
<link rel="stylesheet" type="text/css" href="file:///F|/Dropbox/linked/csssheet.css">
<title>sent</title>
</head>
<body>
<link rel="stylesheet" type="text/css" href="../linked/csssheet.css">
<div id="head"></div>
<h1>sent</h1>
<%
activity=request.form("activity")
instructor=request.form("instructor")
skill=request.form("skill")
date1=request.form("date")
time1=request.form("time")
maxent=request.form("maxent")
duration=request.form("duration")
agerange=request.form("agerange")
slope=request.form("slope")

dim orseof
set db=server.createobject("adodb.connection")
set orseof=server.createobject("adodb.recordset")
db.open "DRIVER={Microsoft Access Driver (*.mdb)}; DBQ=" & Server.MapPath("../linked/skiRossy.mdb") 
 strSQL = "INSERT INTO tblgroup (activity,instructor,time,date,skill,maxentrants,duration,agerange,slope) values ('"&activity&"','"&instructor&"',#"&time1&"#,#"&date1&"#,'"&skill&"',"&maxent&","&duration&",'"&agerange&"','"&slope&"')"
orseof.Open strSQL, db

'orseof.close strSQL, db

%>
</body>
</html>
