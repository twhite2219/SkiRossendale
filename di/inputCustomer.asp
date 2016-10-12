<!DOCTYPE HTML PUBLIC >
<html>
<head>
<link rel="stylesheet" type="text/css" href="../linked/csssheet.css">
<title>Ski rossendale Homepage!</title>
<script type="text/javascript" src="user/scripts.js"></script>
</head>
<body>
<div id="head"></div>
<!-- the page where customers reguister their details -->
<a href="/logonreal.asp">If you already have an online account click here to log on!</a>
<% dim orseof 
 set db=server.createobject("adodb.connection")
 set orseof=server.createobject("adodb.recordset")
 db.open "DRIVER={Microsoft Access Driver (*.mdb)}; DBQ=" & Server.MapPath("../linked/skiRossy.mdb") 
    orseof.open "tblCustomer",db
	orseof.close 
	LastRecSQL="SELECT TOP 1 (clientID) FROM tblCustomer ORDER BY clientID DESC;"
 orseof.open LastRecSQL,db
 LastRec = orseof("clientID")
  response.write("Your unique client id is:")
   response.write(LastRec+1) 
   response.write"<br>"
   response.Write("please write this down alongside your password for future reference")
      %>
<form action="../post/storeinputcustomer.asp" method="post" name="frmAddCustomer"  onsubmit="return validateuser1()">
  <table width="329" border="0" cellspacing="3">
    <tr >
      <td width="74" ><div align="left" class="style1">First name: </div></td>
      <td width="242"><input name="txtFirstName" type="text"></td>
    </tr>
    <tr>
      <td><p align="left" class="style1">Surname:</p></td>
      <td><input name="txtlastname" type="text" id="txtlastname"></td>
    </tr>
    <tr>
      <td><p align="left" class="style1">Address line 1:</p></td>
      <td><input name="txtaddressln1" type="text" id="txtaddressln1"></td>
    </tr>
    <tr>
      <td><p align="left" class="style1">Address line 2:</p></td>
      <td><input name="txtaddressln2" type="text" id="txtaddressln2"></td>
    </tr>
    <tr>
      <td><p align="left" class="style1">Postcode:</p></td>
      <td><input name="txtpostcode" type="text" id="txtpostcode"></td>
    </tr>
    <tr>
      <td><p align="left" class="style1">Email address:</p></td>
      <td><input type="text" name="txtemail"></td>
    </tr>
    <tr>
      <td ><div align="left" class="style1">Date of Birth:</div></td>
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
  <p>
    <input type="submit" name="Submit" value="Submit" >
  </p>
</form>
</body>
</html>
