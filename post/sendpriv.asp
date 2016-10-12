<!--#include file="../linked/include.asp"-->
<% 
If Session("PersonID") = "" then
Response.Redirect "logonreal.asp"
End if 
%>
<!DOCTYPE HTML PUBLIC 
<html>
<!-- page to store data of a private course booking in the db-->
<head>
<script type="text/javascript" src="../linked/scripts.js"></script>
<title>sending data of course</title>
</head>
<body>
<link rel="stylesheet" type="text/css" href="../linked/csssheet.css">
<div id="head"></div>
<%
activity=request.form("activity")
skill=request.form("selectskill")
agerange=request.form("selectage")
duration=request.form("duration")
date1=request.form("mydate")
time1=request.form("mytime")
clientID=session("PersonID")
instructorday= WeekdayName(weekday(date1))
if activity="snowboarding" then slope="funpark" else if skill="beginner" then slope="beginner slope" else slope="main slope"
dim orseof
dim instructorcheck
set db=server.createobject("adodb.connection")
set orseof=server.createobject("adodb.recordset")
set instructorcheck=server.createobject("adodb.recordset")
set coursecheck=server.createobject("adodb.recordset")
db.open "DRIVER={Microsoft Access Driver (*.mdb)}; DBQ=" & Server.MapPath("../linked/skiRossy.mdb")

 instructorsql="select * FROM tblinstructor AS instructor WHERE dayavailable='"&instructorday&"' AND activity='"&activity&"';"
instructorcheck.open instructorsql,db
instructor=INSTRUCTORCHECK("instructor")


chksql="select courseno AS cavailable FROM tblprivate where instructor='"&instructor&"' AND date=#"&date1&"# AND time=#"&time1&"#;"
coursecheck.open chksql,db
available=coursecheck("cavailable")
if isnull(available) then 
 	 strSQL = "INSERT INTO tblpriv (clientID,activity,instructor,skill,date,time,duration,agerange,slope) values ("&clientID&",'"&activity&"','"&skill&"','"&instructor&"',#"&date1&"#,#"&time1&"#,"&duration&",'"&agerange&"','"&slope&"');"
  orseof.open strSQL, db
  else
  response.Write("there is already a course running at this time, please try again, you will be returned to the previous page in 5 seconds. if you are not , please click")%>
<a href "bookpriv.asp">here</a>
<%

 end if
%>
</body>
</html>
