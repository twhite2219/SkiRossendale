<!--#include file="../linked/admininclude.asp"-->
<% 
If Session("PersonID") = "" then
Response.Redirect "adminlogon.asp"
End if 
%>
<!DOCTYPE HTML PUBLIC 
<html>
<!-- gets information from database via sql and returns it in a table -->
<head>
<script type="text/javascript" src="../admin/queries/scripts.js"></script>
</head>
<body>
<link rel="stylesheet" type="text/css" href="../linked/csssheet.css">
<div id="head"></div>
<%
instructor = Request.Form("instructor")
response.expires=-1
sql="SELECT * FROM tblprivate WHERE instructor='"&instructor&"'  ORDER BY date ASC"
'sql=sql & "

set db=server.createobject("adodb.connection")
 set orseof=server.createobject("adodb.recordset")
 db.open "DRIVER={Microsoft Access Driver (*.mdb)}; DBQ=" & Server.MapPath("../linked/skiRossy.mdb") 
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
