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
<!-- removes private course bookings-->
<body>
<div id="head"></div>
<h1>Admin zone</h1>
<form name="removepriv" method="post" action="../post/removeprivcourse2.asp">
  <h1>Remove a private course!</h1>
  courseno:
  <input type="text" name="courseno">
  <input type="submit">
</form>
</body>
</html>
