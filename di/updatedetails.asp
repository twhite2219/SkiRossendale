<!--#include file="../linked/include.asp"-->
<% 
If Session("PersonID") = "" then
Response.Redirect "logonreal.asp"
End if 
%>
<!DOCTYPE HTML PUBLIC 
<html>
<!-- where users update their user details-->
<link rel="stylesheet" type="text/css" href="../linked/csssheet.css">
<style type="text/css">
</style>
<script type="text/javascript" src="../linked/scripts.js"></script>
<head>
<title>Update Instructors</title>
</head>
<body>
<div id="head"></div>
<form name="updateuser" method="post" action="../post/updatedetails2.asp"  onsubmit="return validateuser2();">
  <table width="329" border="0" cellspacing="3">
    <tr >
      <td width="74" ><div align="left" class="style1">First name: </div></td>
      <td width="242"><input name="txtFirstName" type="text"></td>
    </tr>
    <tr>
      <td><p align="left" class="style1">Surname:</p>
      </td>
      <td><input name="txtlastname" type="text" id="txtlastname"></td>
    </tr>
    <tr>
      <td><p align="left" class="style1">Address line 1:</p>
      </td>
      <td><input name="txtaddressln1" type="text" id="txtaddressln1"></td>
    </tr>
    <tr>
      <td><p align="left" class="style1">Address line 2:</p>
      </td>
      <td><input name="txtaddressln2" type="text" id="txtaddressln2"></td>
    </tr>
    <tr>
      <td><p align="left" class="style1">Postcode:</p>
      </td>
      <td><input name="txtpostcode" type="text" id="txtpostcode"></td>
    </tr>
    <tr>
      <td><p align="left" class="style1">Email address:</p>
      </td>
      <td><input type="text" name="txtemail"></td>
    </tr>
    <tr>
      <td ><div align="left" class="style1">Date Of Birth:</div></td>
      <td><input type="text" name="txtdob"></td>
    </tr>
    <tr>
      <td><div align="left" class="style1">Contact no:</div></td>
      <td><input type="text" name="txtphoneno"></td>
    </tr>
    <tr>
      <td><div align="left" class="style1">Emergency : </div></td>
      <td><input type="text" name="txtemergency">
      </td>
    </tr>
    <tr >
      <td><div align="left" class="style1">Password:</div></td>
      <td><input type="password" name="txtpassword"></td>
    </tr>
  </table>
  <input type="submit">
</form>
</body>
</html>
