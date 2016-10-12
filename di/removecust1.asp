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
<!-- page where admin staff remove customers from the database-->
<body>
<div id="head"></div>
<h1>Admin Zone</h1>
<form name="removecust" method="post" action="../post/removecust2.asp">
  <h1>Remove a customer from the database!</h1>
  ClientID:
  <input type="text" name="clientID">
  <input type="submit" name="submit">
</form>
</body>
</html>
