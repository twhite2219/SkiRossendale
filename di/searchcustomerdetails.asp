<!--#include file="../linked/admininclude.asp"-->
<% 
If Session("PersonID") = "" then
Response.Redirect "adminlogon.asp"
End if 
%>
<!DOCTYPE HTML PUBLIC
<html>
<!-- admin query page for a users details -->
<head>
<link rel="stylesheet" type="text/css" href="../linked/csssheet.css">
<title>Search customer details</title>
<script type="text/javascript" src="user/scripts.js"></script>
</head>
<body>
<div id="head"></div>
<h1>Admin Zone</h1>
Select customer id!
<form method="post" action="../post/getcustomers.asp">
  Client ID:
  <input type="text" name="ClientID">
  <input type="submit">
</form>
<br>
</body>
</html><!--onSubmit="showCustomer(this.value)"<div id="txtHint">Customer info will be listed here...</div>   -->
