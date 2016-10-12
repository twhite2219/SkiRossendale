<!--#include file="../linked/admininclude.asp"-->
<% 
If Session("PersonID") = "" then
Response.Redirect "adminlogon.asp"
End if 
%>
<!DOCTYPE HTML PUBLIC 
<html>
<!-- page where admin staff update instructors for the week ahead-->
<head>
<link rel="stylesheet" type="text/css" href="../linked/csssheet.css">
<title>update instructors</title>
</head>
<body>
<h1>admin zone</h1>
<form name="updateinstructors" method="post" action="../post/updatesinstructors2.asp">
  <br>
  Snowboarding
  <table>
    <tr>
      <td>Monday:</td>
      <td><input type="text" name="bimon"></td>
    </tr>
    <tr>
      <td>Tuesday:</td>
      <td><input type="text" name="bitues"></td>
    </tr>
    <tr>
      <td>Wednesday:</td>
      <td><input type="text" name="biwed"></td>
    </tr>
    <tr>
      <td>Thursday:</td>
      <td><input type="text" name="bithurs"></td>
    </tr>
    <tr>
      <td>Friday:</td>
      <td><input type="text" name="bifri"></td>
    </tr>
    <tr>
      <td>Saturday:</td>
      <td><input type="text" name="bisat"></td>
    </tr>
    <tr>
      <td>Sunday:</td>
      <td><input type="text" name="bisun"></td>
    </tr>
  </table>
  <br>
  Skiing
  <table>
    <tr>
      <td>Monday:</td>
      <td><input type="text" name="skimon"></td>
    </tr>
    <tr>
      <td>Tuesday:</td>
      <td><input type="text" name="skitues"></td>
    </tr>
    <tr>
      <td>Wednesday:</td>
      <td><input type="text" name="skiwed"></td>
    </tr>
    <tr>
      <td>Thursday:</td>
      <td><input type="text" name="skithurs"></td>
    </tr>
    <tr>
      <td>Friday:</td>
      <td><input type="text" name="skifri"></td>
    </tr>
    <tr>
      <td>Saturday:</td>
      <td><input type="text" name="skisat"></td>
    </tr>
    <tr>
      <td>Sunday:</td>
      <td><input type="text" name="skisun"></td>
    </tr>
  </table>
  <input type="submit">
</form>
</body>
</html>
