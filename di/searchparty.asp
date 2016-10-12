<!--#include file="../linked/admininclude.asp"-->
<% 
If Session("PersonID") = "" then
Response.Redirect "adminlogon.asp"
End if 
%>
<!DOCTYPE HTML PUBLIC
<html>
<!-- admin query page for courses of type :party-->
<head>
<link rel="stylesheet" type="text/css" href="../linked/csssheet.css">
<title>search for a course</title>
<script type="text/javascript" src="user/scripts.js"></script>
</head>
<body>
<div id="head"></div>
<h1>Admin Zone</h1>
<h1>Select an activity</h1>
<form method="post" name="activityp" action="../post/getactivityparty.asp">
  <select name="activity">
    <%
 set db=server.createobject("adodb.connection")
 set orseof=server.createobject("adodb.recordset")
 db.open "DRIVER={Microsoft Access Driver (*.mdb)}; DBQ=" & Server.MapPath("../linked/skiRossy.mdb") 
orseof.open "SELECT DISTINCT activity From tblparty",db
  %>
    <% Do While Not orseof.EOF  ' define the ListBox OPTIONs %>
    <OPTION VALUE="<%= orseof("activity") %>"> <%= orseof("activity") %>
    <% orseof.MoveNext %>
    <% Loop %>
    <% orseof.Close %>
  </SELECT>
  <input type="submit">
</form>
<br>
<h1>Select customer id to see courses they are boked onto</h1>
<form method="post" action="../post/getpartycustomers.asp">
  Client ID:
  <input type="text"name="clientID">
  <input type="submit">
</form>
<form method="post" name="datecheckparty" action="../post/getdatesparty.asp">
  <h1>Select a time frame between x and y </h1>
  <table>
    <tr>
      <td>Between</td>
      <td><SELECT NAME="selectdate1" on>
          <% 
 set db=server.createobject("adodb.connection")
 set orseof=server.createobject("adodb.recordset")
 db.open "DRIVER={Microsoft Access Driver (*.mdb)}; DBQ=" & Server.MapPath("../linked/skiRossy.mdb") 
orseof.open "SELECT DISTINCT date From Tblparty",db
  %>
          <% Do While Not orseof.EOF  ' define the ListBox OPTIONs %>
          <OPTION VALUE="<%= orseof("date") %>"> <%= orseof("date") %>
          <% orseof.MoveNext %>
          <% Loop %>
          <% orseof.Close %>
        </SELECT>
      </td>
    </tr>
    <tr>
      <td>And</td>
      <td><SELECT NAME="selectdate2">
          <% 
 set db=server.createobject("adodb.connection")
 set orseof=server.createobject("adodb.recordset")
 db.open "DRIVER={Microsoft Access Driver (*.mdb)}; DBQ=" & Server.MapPath("../linked/skiRossy.mdb") 
orseof.open "SELECT DISTINCT date From tblparty",db
  %>
          <% Do While Not orseof.EOF  ' define the ListBox OPTIONs %>
          <OPTION VALUE="<%= orseof("date") %>"> <%= orseof("date") %>
          <% orseof.MoveNext %>
          <% Loop %>
          <% orseof.Close %>
        </SELECT>
      </td>
  </table>
  <input type="submit">
</form>
</body>
</html>
