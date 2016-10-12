<!DOCTYPE HTML PUBLIC 
<html>
<head></head>
<!-- admin include file-->
<body>
<%
dim db
set db = Server.CreateObject("ADODB.Connection")
db.open "DRIVER={Microsoft Access Driver (*.mdb)}; DBQ=" & Server.MapPath("../linked/skirossy.mdb")

if Session("bValidUser") = True and Session("PersonID") = "" then
dim rsPersonIDCheck
set rsPersonIDCheck = Server.CreateObject("ADODB.Recordset")
dim strSQL 
strSQL = "SELECT adminname FROM tbladmin WHERE adminname = '" & Session("name") & "';"
rsPersonIDCheck.Open strSQL, db
if rsPersonIDCheck.EOF then
Session("bValidUser") = False
else
Session("PersonID") = rsPersonIDCheck("PersonID")
end if
rsPersonIDCheck.Close
end if
%>
</body>
</html>
