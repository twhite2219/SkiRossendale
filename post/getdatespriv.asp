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
<script type="text/javascript" src="../admin/scripts.js"></script>
</head>
<body>
<link rel="stylesheet" type="text/css" href="../linked/csssheet.css">
<div id="head"></div>
<%
date1 = Request.Form("selectdate1")
date2 = Request.Form("selectdate2")

response.expires=-1
set db=server.createobject("adodb.connection")
 set orseof=server.createobject("adodb.recordset")
 db.open "DRIVER={Microsoft Access Driver (*.mdb)}; DBQ=" & Server.MapPath("../linked/skiRossy.mdb") 
 sql = "SELECT * FROM tblprivate WHERE date>=#"&date1&"# And Date<=#"&date2&"# ORDER BY Date ASC;"

orseof.Open sql, db
  
do until orseof.EOF
   response.write("<table>")
     for each x in orseof.Fields
   	response.write("<tr><td><b>" & x.name & "</b></td>")
    response.write("<td>" & x.value & "</td></tr>")
   next
   response.write("<br>")
   response.write("</table>")
  orseof.MoveNext
loop

%>
</body>
</html>
