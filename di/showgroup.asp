<!--#include file="../linked/include.asp"-->
<% 
If Session("PersonID") = "" then
Response.Redirect "logonreal.asp"
End if 
%>
<!DOCTYPE HTML PUBLIC
<html>
<head>
<!-- page where users can book onto a free group course -->
<link rel="stylesheet" type="text/css" href="../linked/csssheet.css">
<title>Display all party courses</title>
<script type="text/javascript" src="../linked/scripts.js"></script>
</head>
<body>
<div id="head"></div>
<h1> List of all courses for partys</h1>
<%
currdate=date()
activity=Request.form("selectactivity")
dim orseof
set db=server.createobject("adodb.connection")
set orseof=server.createobject("adodb.recordset")
set RSsearch=server.createobject("adodb.recordset")
db.open "DRIVER={Microsoft Access Driver (*.mdb)}; DBQ=" & Server.MapPath("../linked/skiRossy.mdb") 
orseof.open "SELECT * FROM tblgroup WHERE activity='"&activity&"' AND Date>#"&currdate&"# ORDER BY date ASC;",db


orseof.movefirst

response.write "<table border='1'>"
response.write"<tr><td>CourseNo</td>"
response.write"<td>Activity</td>"
response.write"<td>instructor</td>"
response.write"<td>time</td>"
response.write"<td>date</td>"
response.write"<td>skill</td>"
response.write"<td>maxentrants</td>"
response.write"<td>duration</td>"
response.write"<td>agerange</td>"
response.write"<td>slope</td></tr>"
'this writes a single row for each record and continues to do this until there are no more records

do while not orseof.eof

RSsearch.Open "SELECT COURSENO, Count(ClientID) AS CountOfClientID FROM tblCustgroup WHERE "&orseof("CourseNo")&" = COURSENO GROUP BY COURSENO;",db
If RSsearch("CountOfClientID") < orseof("maxentrants") Then
if orseof("activity")= activity then
response.write "<td>"& orseof("CourseNo")&"</td>"
response.write "<td>"& orseof("Activity")&"</td>"
response.write "<td>"& orseof("instructor")&"</td>"
response.write "<td>"& orseof("time")&"</td>"
response.write "<td>"& orseof("date")&"</td>"
response.write "<td>"& orseof("skill")&"</td>"
response.write "<td>"& orseof("maxentrants")&"</td>"
response.write "<td>"& orseof("duration")&"</td>"
response.write "<td>"& orseof("agerange")&"</td>"
response.write "<td>"& orseof("slope")&"</td></tr>"
end if
end if
RSsearch.close


orseof.movenext
loop

response.write"</table><br>"
%>
<form method="post" name="formgroup" action="../post/sendgroup.asp" onSubmit="return valgroup();">
  Course NO:
  <input type="text" name="courseNO" id="courseno">
  <input type="submit" value="book now!">
</form>
</body>
</html>
