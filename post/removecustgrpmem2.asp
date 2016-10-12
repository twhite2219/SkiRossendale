<!DOCTYPE HTML PUBLIC <html>
<!-- page to remove a customer booking from a group course in the db via sql-->
<head></head>
<body>
<link rel="stylesheet" type="text/css" href="../linked/csssheet.css">
<div id="head"></div>
<h1>done!</h1>
<%
courseno=request.form("courseno")
clientid=request.form("clientid")
dim orseof
set db=server.createobject("adodb.connection")
set orseof=server.createobject("adodb.recordset")
db.open "DRIVER={Microsoft Access Driver (*.mdb)}; DBQ=" & Server.MapPath("../linked/skiRossy.mdb") 
strSQL = "DELETE FROM tblcustgroup WHERE courseno="&courseno&" and clientid="&clientid&";"
orseof.Open strSQL, db
%>
</body>
</html>
