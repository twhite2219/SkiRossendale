<!--#include file="../linked/include.asp"-->
<% 
If Session("PersonID") = "" then
Response.Redirect "logonreal.asp"
End if 
%>
<html>
<!-- page for users to book private courses-->
<link rel="stylesheet" type="text/css" href="../linked/csssheet.css">
<title>Book Onto A Course</title>
<script type="text/javascript" src="../linked/scripts.js"></script>
<head></head>
<body>
<div id="head"></div>
<h1> Ski Rossendale Private tuition booking!</h1>
<% dim orseof 
 set db=server.createobject("adodb.connection")
 set orseof=server.createobject("adodb.recordset")
 db.open "DRIVER={Microsoft Access Driver (*.mdb)}; DBQ=" & Server.MapPath("../linked/skiRossy.mdb") 
    orseof.open "tblprivate",db
	orseof.close 
	LastRecSQL="SELECT TOP 1 (courseno) FROM tblprivate ORDER BY courseno DESC;"
 orseof.open LastRecSQL,db
 LastRec = orseof("courseno")
  response.write("courseno is:PRV")
   response.write(LastRec+1) 
   response.write"<br>"
   response.Write("please write this down  for future reference")
   
      %>
<h3>Please state the activity you wish to do!</h3>
<form action="../post/sendpriv.asp" method="post" name="formpriv" onSubmit="return validateFormpriv()">
  <input type="radio" name="activity" id="a1" value="snowboarding">
  Snowboarding<br>
  <input type="radio" name="activity" id="a2" value="skiing">
  Skiing<br>
  <h3> Please state your level of skill to be assigned a course </h3>
  <SELECT id="selectskill" SIZE=1>
    <option value="beginner">Beginner</option>
    <option value="improver">Improver</option>
    <option value="intermediate">Intermediate</option>
    <option value="advanced">Advanced</option>
    <option value="expert">Expert</option>
  </select>
  <h3>What age range is the person on the course going to be in?</h3>
  <SELECT id="selectage">
    <option value="2-6">2-6</option>
    <option value="7-12">7-12</option>
    <option value="13-17">13-17</option>
    <option value="18+">18+</option>
  </select>
  <h3>Please select a date and time you wish for this to be run!(between 12:00 and 17:00 every day)</h3>
  <table>
    <tr>
      <td>Date</td>
      <td>Time(24h format) </td>
      <td>Duration </td>
    </tr>
    <tr>
      <td><input type="text" name="mydate" value="dd/mm/yyyy"></td>
      <td><input maxlength="5" type="text" name="mytime" value="12:00"  ></td>
      <td><input type="radio" name="duration" value="1" id="d1" checked>
        1 hour<br>
        <input type="radio" name="duration" id="d2" value="2">
        2 hours<br></td>
    </tr>
    <tr></tr>
  </table>
  <input type="submit" name="sumbit" value="submit">
  </p>
  <p>please note: you will be billed on the door to the site. another alternative may be the regular kids clubs. require in centre for a leaflet! </p>
</form>
</body>
</html>
