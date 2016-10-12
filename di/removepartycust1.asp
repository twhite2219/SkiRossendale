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
<!-- removes party course bookings-->
<body>
<div id="head"></div>
<h1>Admin zone</h1>
<form name="removeparty" method="post" action="../post/removepartycust2.asp">
  <h1>Remove a party customer course!</h1>
  Courseno:
  <input type="text" name="courseno">
  <input type="submit">
</form>
</body>
</html>
