<!DOCTYPE HTML PUBLIC 
<html>
<!-- page to store newly regiustered customers information in the database -->
<head>
<link rel="stylesheet" type="text/css" href="../linked/csssheet.css">
<title>customer details sent!</title>
</head>
<body>
<link rel="stylesheet" type="text/css" href="../linked/csssheet.css">
<div id="head"></div>
<h1>Details sent succesfully!</h1>
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
dim orseof
set db=server.createobject("adodb.connection")
set orseof=server.createobject("adodb.recordset")
db.open "DRIVER={Microsoft Access Driver (*.mdb)}; DBQ=" & Server.MapPath("../linked/skiRossy.mdb") 
strSQL = "INSERT INTO tblCustomer (firstname,lastname,addressln1,addressln2,postcode,email,dob,phoneno,emergency,password) values ('"&tmpfirstname&"','"&tmplastname&"','"&tmpaddressln1&"','"&tmpaddressln2&"','"&tmppostcode&"','"&tmpemail&"',#"&tmpdob&"#,'"&tmpphoneno&"','"&tmpemergency&"','"&tmppassword&"')"
orseof.Open strSQL, db
Response.Redirect "../di/logonreal.asp"
'orseof.close 
%>
</body>
</html>
