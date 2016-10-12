<!--#include file="../linked/admininclude.asp"-->
<% 
If Session("PersonID") = "" then
Response.Redirect "adminlogon.asp"
End if 
%>
<!DOCTYPE HTML PUBLIC 
<html>
<!-- page to store a new admin to the db -->
<head></head>
<body>
<link rel="stylesheet" type="text/css" href="../linked/csssheet.css">
<div id="head"></div>
<h1>done</h1>
<%
newadminid=request.form("name")
newadpassword=request.form("password")
dim orseof
set db=server.createobject("adodb.connection")
set orseof=server.createobject("adodb.recordset")
db.open "DRIVER={Microsoft Access Driver (*.mdb)}; DBQ=" & Server.MapPath("../linked/skiRossy.mdb") 
strSQL = "INSERT INTO tbladmin (adminname,password) values ('"&newadminid&"','"&newadpassword&"')"
orseof.Open strSQL, db
%>
</body>
</html>
