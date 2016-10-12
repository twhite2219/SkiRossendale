<!--#include file="../linked/admininclude.asp"-->
<% 
If Session("AdminPersonIDname") = "" then
Response.Redirect "adminlogon.asp"
End if 
%>
<!DOCTYPE HTML PUBLIC 
<html>
<head>
<!-- gets information from database via sql and returns it in a table -->
<script type="text/javascript" src="../admin/queries/scripts.js"></script>
</head>
<body>
<link rel="stylesheet" type="text/css" href="../linked/csssheet.css">
<div id="head"></div>
<%
ClientID=Request.form("ClientID")
set db=server.createobject("adodb.connection")
 set orseof=server.createobject("adodb.recordset")
db.open "DRIVER={Microsoft Access Driver (*.mdb)}; DBQ=" & Server.MapPath("../linked/skiRossy.mdb") 
sql="SELECT * FROM tblCustomer WHERE clientID="&ClientID&";"
orseof.Open sql,db
response.write("<table>")
do until orseof.EOF
  for each x in orseof.Fields
    response.write("<tr><td><b>" & x.name & "</b></td>")
   response.write("<td>" & x.value & "</td></tr>")
  next
  orseof.MoveNext
loop
response.write("</table>")
%>
</body>
</html>
