<!--#include file="../linked/admininclude.asp"-->
<% 
If Session("PersonID") = "" then
Response.Redirect "adminlogon.asp"
End if 
%>
<!DOCTYPE HTML PUBLIC <html>
<!-- page to remove a customers details from the db  via sql-->
<head></head>
<body>
<link rel="stylesheet" type="text/css" href="../linked/csssheet.css">
<div id="head"></div>
<h1>done!</h1>
<%
clientid=request.form("clientid")

dim orseof
set db=server.createobject("adodb.connection")
set orseof=server.createobject("adodb.recordset")
db.open "DRIVER={Microsoft Access Driver (*.mdb)}; DBQ=" & Server.MapPath("../linked/skiRossy.mdb") 
strSQL = "DELETE FROM tblcustomer WHERE clientid="&clientid&";"
orseof.Open strSQL, db
%>
</body>
</html>
