<!--#include file="../linked/include.asp"-->
<% 
If Session("PersonID") = "" then
Response.Redirect "logonreal.asp"
End if 
%>
<!DOCTYPE HTML PUBLIC
<html>
<!-- page where users book onto group courses-->
<head>
<link rel="stylesheet" type="text/css" href="../linked/csssheet.css">
</head>
<body>
<div id="head"></div>
<h1>Display all group courses to book onto!</h1>
<script type="text/javascript" src="user/scripts.js"></script>
<table>
  <tr>
    <td> Show only:
      <form method="post" action="showgroup.asp">
        <SELECT NAME="selectactivity" SIZE=1>
          <% 
	currdate=date()
 set db=server.createobject("adodb.connection")
 set orseof=server.createobject("adodb.recordset")
 db.open "DRIVER={Microsoft Access Driver (*.mdb)}; DBQ=" & Server.MapPath("../linked/skiRossy.mdb") 
orseof.open "SELECT DISTINCT activity From Tblgroup where date>#"&currdate&"#;",db
  %>
          <% Do While Not orseof.EOF  ' define the ListBox OPTIONs %>
          <OPTION VALUE="<%= orseof("activity") %>"> <%= orseof("activity") %>
          <% orseof.MoveNext %>
          <% Loop %>
          <% orseof.Close %>
        </SELECT>
        <input type="submit">
      </form>
    </td>
  </tr>
</table>
</body>
</html>
