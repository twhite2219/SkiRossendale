<!DOCTYPE HTML PUBLIC 
<html>
<head>
<link rel="stylesheet" type="text/css" href="../linked/csssheet.css">
</head>
<body>
<div id="head"></div>
<!--  admin log on page-->
<% If Request("Again") = "1" then
if Request("BadPW") = "True" then %>
Invalid Password<BR>
<% Else %>
Username not found. Try again<BR>
<% End If %>
<% End If %>
Please enter your username and password to login to the system.
<FORM ACTION="../post/adminlogon1.asp<% If Request("Again") = "1" then %>?Again=1<% End If %>" METHOD="POST">
  <TABLE BORDER=0>
    <TR>
      <TD>Username:</TD>
      <TD><INPUT TYPE="Text" NAME="username" <% If Request("Again") = "1" then %> VALUE="<%= Session("name") %>"<% End If %> SIZE="40"></TD>
    </TR>
    <TR>
      <TD>Password:</TD>
      <TD><INPUT TYPE="Password" NAME="Password" SIZE="40"></TD>
    </TR>
    <TR>
      <TD align=center><INPUT TYPE="Submit" VALUE="Login">
&nbsp;&nbsp;
        <INPUT TYPE="RESET"></TD>
    </TR>
  </TABLE>
</FORM>
<a href="inputCustomer.asp">if you are not an admin and you are a client, please click here!</a>
</body>
</html>
