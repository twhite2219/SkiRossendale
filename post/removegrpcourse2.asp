<!DOCTYPE HTML PUBLIC <html>
<!-- page to remove a group course from the database via sql-->
<head></head>
<body>
<link rel="stylesheet" type="text/css" href="../linked/csssheet.css">
<div id="head"></div>
<h1>done!</h1>
<%
courseno=request.form("courseno")

dim orseof
set db=server.createobject("adodb.connection")
set orseof=server.createobject("adodb.recordset")
db.open "DRIVER={Microsoft Access Driver (*.mdb)}; DBQ=" & Server.MapPath("../linked/skiRossy.mdb") 
strSQL = "DELETE FROM tblgroup WHERE courseno="&courseno&";"
orseof.Open strSQL, db
%>
</body>
</html>
