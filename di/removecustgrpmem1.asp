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
<body>
<!-- page where admins remove customers from group courses -->
<div id="head"></div>
<h1>Admin Zone</h1>
<form name="removecustgrpmem" method="post" action="../post/removecustgrpmem2.asp">
  <h1>Remove a customer booking on a group course!</h1>
  Courseno:
  <input type="text" name="courseno">
  Clientid:
  <input type="text" name="clientid">
  <input type="submit">
</form>
</body>
</html>
