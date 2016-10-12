<!--#include file="../linked/admininclude.asp"-->
<% 
If Session("personid") = "" then
Response.Redirect "adminlogon.asp"
End if 
%>
<!DOCTYPE HTML PUBLIC >
<!--page to add a group course -->
<html>
<head>
<link rel="stylesheet" type="text/css" href="../linked/csssheet.css">
<style type="text/css">
.style1 {color: #FF9900}
</style>
<title>Ski Rossendale Homepage!</title>
<script type="text/javascript" src="user/scripts.js"></script>
</head>
<body>
<div id="head"></div>
<h1>Admin Zone</h1>
<% dim orseof 
 set db=server.createobject("adodb.connection")
 set orseof=server.createobject("adodb.recordset")
 db.open "DRIVER={Microsoft Access Driver (*.mdb)}; DBQ=" & Server.MapPath("../linked/skiRossy.mdb") 
   ' orseof.open "tblcourseNO",db
	'orseof.close 
	LastRecSQL="SELECT TOP 1 (courseno) FROM tblgroup ORDER BY courseno DESC;"
 orseof.open LastRecSQL,db
 LastRec = orseof("courseno")
  response.write("courseno is:GRP")
   response.write(LastRec+1)
   courseno=("GRP"&Lastrec+1) 
   response.write"<br>"
   response.Write("please write this down  for future reference")
   
      %>
<form action="../post/storenewgroup.asp" method="post" name="frmAddgrpcourse">
  <table width="329" border="0" cellspacing="3">
    <tr >
      <td>Activity</td>
      <td><input name="activity" type="text"></td>
    </tr>
    <tr >
      <td>Instructor</td>
      <td><input name="instructor" type="text"></td>
    </tr>
    <tr >
      <td>Skill level</td>
      <td><input name="skill" type="text"></td>
    </tr>
    <tr >
      <td>Date</td>
      <td><input name="date" type="text"></td>
    </tr>
    <tr >
      <td>Time</td>
      <td><input name="time" type="text"></td>
    </tr>
    <tr >
      <td>Duration</td>
      <td><input name="duration" type="text"></td>
    </tr>
    <tr >
      <td>Max entrants</td>
      <td><input name="maxent" type="text"></td>
    </tr>
    <tr >
      <td>Slope</td>
      <td><input name="slope" type="text"></td>
    </tr>
    <tr >
      <td>Age Range</td>
      <td><input name="agerange" type="text"></td>
    </tr>
  </table>
  <p>
    <input type="submit" name="Submit" value="Submit" >
  </p>
</form>
</body>
</html>
