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
<!--page to remove a group course -->
removes an entire group course
<div id="head"></div>
<h1>Admin Zone</h1>
<form name="removegrpcourse" method="post" action="../post/removegrpcourse2.asp">
  <h1>Remove a group course!</h1>
  Courseno:
  <input type="text" name="courseno">
  <input type="submit">
</form>
</body>
</html>
