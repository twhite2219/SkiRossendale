<!--#include file="../linked/include.asp"-->
<% 
If Session("PersonID") = "" then
Response.Redirect "logonreal.asp"
End if 
%>
<html>
<!-- page for users to book parties-->
<head>
<script type="text/javascript" src="../linked/scripts.js"></script>
<link rel="stylesheet" type="text/css" href="../linked/csssheet.css">
<title>Book Onto A Course</title>
</head>
<body>
<div id="head"></div>
<h1> Ski Rossendale Party Course booking!</h1>
<h3>Please state the activity you wish to do!</h3>
<% dim orseof 
 set db=server.createobject("adodb.connection")
 set orseof=server.createobject("adodb.recordset")
 db.open "DRIVER={Microsoft Access Driver (*.mdb)}; DBQ=" & Server.MapPath("../linked/skiRossy.mdb") 
   ' orseof.open "tblcourseNO",db
	'orseof.close 
	LastRecSQL="SELECT TOP 1 (courseno) FROM tblparty ORDER BY courseno DESC;"
 orseof.open LastRecSQL,db
 LastRec = orseof("courseno")
  response.write("courseno is:PAR")
   response.write(LastRec+1)
   courseno=("PAR"&Lastrec+1) 
   response.write"<br>"
   response.Write("please write this down  for future reference<br>")
   
      %>
<form action="../post/sendparty.asp" method="post" name="formparty" onSubmit="return validateFormparty()">
  <input type="radio" name="activity" id="a1" value="snowboarding" onClick ="actskill()">
  Snowboarding<br>
  <input type="radio" name="activity" id="a2" value="skiing" onClick="actskill()">
  Skiing<br>
  <input type="radio" name="activity" id="a3" value="tubing" onClick="actskill()">
  Tubing<br>
  <h3> Please state the level of skill for the group</h3>
  <input type="radio" name="skill" id="s1" value="beginner" disabled="disabled">
  Beginner<br>
  <input type="radio" name="skill" id="s2" value="intermediate" disabled="disabled">
  Intermediate<br>
  <input type="radio" name="skill" id="s3" value="advanced" disabled="disabled">
  Advanced<br>
  <h3>How many people are going on this course?</h3>
  <table>
    <tr>
      <th>Adults(18+)</th>
      <th>Infants 2-6</th>
      <th>Children 7-12</th>
      <th>Teens 13-17</th>
    </tr>
    <tr>
      <td class="button" align="center" ><input type="button" value="/\" onClick="form.numberadults.value++; negative1();" ></td>
      <td  class="button" align="center"><input type="button" value="/\"  onClick="form.numberinfants.value++; negative2();" ></td>
      <td class="button" align="center"><input type="button" value="/\"  onClick="form.numberchildren.value++; negative3();"></td>
      <td  class="button" align="center"><input type="button" value="/\"  onClick="form.numberteens.value++; negative4();"></td>
    </tr>
    <tr>
      <td class="numbox" align="center"><input type="text" name="numberadults" value="0" style="text-align:center;"/></td>
      <td  class="numbox" align="center"><input type="text" name="numberinfants" value="0" style="text-align:center;"/></td>
      <td class="numbox" align="center"><input type="text" name="numberchildren" value="0" style="text-align:center;"/></td>
      <td class="numbox" align="center"><input type="text" name="numberteens" value="0" style="text-align:center;"/></td>
    </tr>
    <tr  class="button"align="center">
      <td class="button" align="center"><input type="button" id="down1" value="\/" onClick="form.numberadults.value--; negative1();" disabled="disabled";></td>
      <td class="button" align="center"><input type="button" id="down2" value="\/" onClick="form.numberinfants.value--; negative2();" disabled="disabled"></td>
      <td class="button" align="center"><input type="button" id="down3" value="\/" onClick="form.numberchildren.value--; negative3();" disabled="disabled"></td>
      <td class="button" align="center"><input type="button" id="down4" value="\/" onClick="form.numberteens.value--; negative4();" disabled="disabled"></td>
    </tr>
  </table>
  <h3>Please select a date and time you wish for this to be run!(between 12 and 17 every day(24h))</h3>
  <table>
    <tr>
      <td>Date</td>
      <td>Time(24h format) </td>
      <td>Duration </td>
    </tr>
    <tr>
      <td><input type="text" name="mydate" value="dd/mm/yyyy"></td>
      <td><input maxlength="5" type="text" name="mytime" id="mytime" value="12:00" ></td>
      <td><input type="radio" name="duration" value="1" id="d1" checked>
        1 hour<br>
        <input type="radio" name="duration" id="d2" value="2">
        2 hours<br></td>
    </tr>
    <tr></tr>
  </table>
  <input type="submit" name="sumbit" value="submit">
  </p>
  <p>please note: you will be billed on the door to the site. </p>
</form>
</body>
</html>
