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
ClientID = Request.Form("ClientID")

'response.expires=-1
set db=server.createobject("adodb.connection")
 set orseof=server.createobject("adodb.recordset")
db.open "DRIVER={Microsoft Access Driver (*.mdb)}; DBQ=" & Server.MapPath("../linked/skiRossy.mdb") 
sql="SELECT * FROM tblparty WHERE clientID="&ClientID&""  
'sql=sql & "("&clientID&")"
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
