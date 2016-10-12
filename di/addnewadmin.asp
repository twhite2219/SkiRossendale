<!--#include file="../linked/admininclude.asp"-->
<% 
If Session("PersonID") = "" then
Response.Redirect "adminlogon.asp"
End if 
%>
<!DOCTYPE HTML PUBLIC <html>
<head>
<link rel="stylesheet" type="text/css" href="../linked/csssheet.css">
</head>
<!-- page to add an admin-->
<body>
<div id="head"></div>
<h1>AdminZone</h1>
<form name="adminnew" method="post" action="../post/sendadmin.asp">
  <h1>Add a new Admin</h1>
  Name:
  <input type="text" name="name">
  Password:
  <input type="password" name="password">
  <input type="submit">
</form>
</body>
</html>
