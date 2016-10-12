<!DOCTYPE HTML PUBLIC 
<html>
<head>
<link rel="stylesheet" type="text/css" href="../linked/csssheet.css">
</head>
<!-- page where users log on following registration-->
	<body bgcolor="#000000" text="#339933" link="#33FF00" vlink="#666666" alink="#666600">
<div id="head"></div>
<% If Request("Again") = "1" then
if Request("BadPW") = "True" then %>
Invalid Password<BR>
<% Else %>
Username not found. Try again<BR>
<% End If %>
<% End If %>
Please enter your username and password to login to the system.
<FORM ACTION="../post/logonreal1.asp<% If Request("Again") = "1" then %>?Again=1<% End If %>" METHOD="POST">
  <TABLE BORDER=0>
    <TR>
      <TD>Client ID:</TD>
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
<a href="inputCustomer.asp">If you do not have a clientid or password please click here!</a>
</body>
</html>
