<!--#include file="../linked/include.asp"-->
<% 
If Session("PersonID") = "" then
Response.Redirect "logonreal.asp"
End if 
%>
<!DOCTYPE HTML PUBLIC
<html>
<!-- page to store the updated users details in the db -->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<title>INFORMATION UPDATED</title>
</head>
<body>
<link rel="stylesheet" type="text/css" href="../linked/csssheet.css">
<div id="head"></div>
<h1>done!</h1>
<%
tmpfirstname=request.form("txtfirstname")
tmplastname=request.form("txtlastname")
tmpaddressln1=request.form("txtaddressln1")
tmpaddressln2=request.form("txtaddressln2")
tmppostcode=request.form("txtpostcode")
tmpemail=request.form("txtemail")
tmpdob=request.form("txtdob")
tmpphoneno=request.form("txtphoneno")
tmpemergency=request.form("txtemergency")
tmppassword=request.form("txtpassword")
clientID=session("PersonID")
dim orseof
set db=server.createobject("adodb.connection")
set orseof=server.createobject("adodb.recordset")
db.open "DRIVER={Microsoft Access Driver (*.mdb)}; DBQ=" & Server.MapPath("../linked/skiRossy.mdb") 
SQLstr = "UPDATE tblcustomer SET firstname='"&tmpfirstname&"',lastname='"&tmplastname&"',addressln1='"&tmpaddressln1&"',addressln2='"&tmpaddressln2&"',postcode='"&tmppostcode&"',email='"&tmpemail&"',dob=#"&tmpdob&"#,phoneno='"&tmpphoneno&"',emergency='"&tmpemergency&"',password='"&tmppassword&"' where ClientID="&clientid&";"
orseof.Open SQLstr, db

'orseof.close 
%>
</body>
</html>
