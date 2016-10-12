<!DOCTYPE HTML PUBLIC 
<html>
<head>
<link rel="stylesheet" type="text/css" href="../linked/csssheet.css">
</head>
<body>

<link rel="stylesheet" type="text/css" href="../linked/csssheet.css">
<div id="head"></div>
<!-- gets information from database via sqlfor the admin to log on if the details given are correct -->
<%
dim db
set db = Server.CreateObject("ADODB.Connection")
db.open "DRIVER={Microsoft Access Driver (*.mdb)}; DBQ=" & Server.MapPath("../linked/skirossy.mdb")
dim strUsername, strPassword
strUsername = Request("username")
strPassword = Request("Password")

'find user in database - matching username
dim rsUsers
dim sql
set rsUsers = Server.CreateObject("ADODB.Recordset")
sql = "SELECT * FROM tbladmin WHERE adminname = '" & strUsername & "';"
rsUsers.Open sql, db
'if user does exist then check password
if not rsUsers.EOF then 'User was found - check password
if UCase(rsUsers("Password")) = UCase(strPassword) then
dim strName, value
for each sField in rsUsers.Fields
strName = sField.Name
value = sField.value
next

'if password matches, then the user is allowed entry
session("name")=request("username")
Session("bValidUser") = True

'redirect the user to the main page
Response.write"user credentials recognised."%>
<a href="querysummary.htm">click here for queries</a><br>
<a href="admintools.htm">admin tools</a>
<% else

'if the password does not match
Session("name") = Request("username")
Response.Redirect "../di/adminlogon.asp?Again=1&BadPW=True"
end if
else

response.redirect 
Session("name") = Request("username")
if Request("Again") = "1" then
Response.Redirect "../di/adminlogon.asp?Again=1"
else
response.redirect "../di/adminlogon.asp?Again=1"
end if
end if
%>
</body>
</html>
