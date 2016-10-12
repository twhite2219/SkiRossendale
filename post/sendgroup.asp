<!--#include file="../linked/include.asp"-->
<% 
If Session("PersonID") = "" then
Response.Redirect "logonreal.asp"
End if 
%>
<!DOCTYPE HTML PUBLIC 
<html>
<!-- page to store a customers id who has booked onto a group course -->
<head>
<title>customer details sent!</title>
</head>
<body>
<link rel="stylesheet" type="text/css" href="../linked/csssheet.css">
<div id="head"></div>
<h1>Details sent succesfully! thankyou for booking see you there!! </h1>
<%
clientid=session("PersonID")
courseno=request.form("courseNO")
dim orseof
set db=server.createobject("adodb.connection")
set orseof=server.createobject("adodb.recordset")
db.open "DRIVER={Microsoft Access Driver (*.mdb)}; DBQ=" & Server.MapPath("../linked/skiRossy.mdb") 
strSQL = "INSERT INTO tblcustgroup (COURSENO,ClientID) values ('"&courseNO&"',"&clientid&")"
orseof.Open strSQL, db
'orseof.close
%>
</body>
</html>
