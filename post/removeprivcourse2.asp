<!DOCTYPE HTML PUBLIC <html>
<!-- page to remove a course from the db  -->
<head></head>
removed course!
<body>
<link rel="stylesheet" type="text/css" href="../linked/csssheet.css">
<div id="head"></div>
<h1>done!</h1>
<%
courseno=request.form("courseno")

dim orseof
set db=server.createobject("adodb.connection")
set orseof=server.createobject("adodb.recordset")
db.open "DRIVER={Microsoft Access Driver (*.mdb)}; DBQ=" & Server.MapPath("../linked/skiRossy.mdb") 
strSQL = "DELETE FROM tblprivate WHERE courseno="&courseno&";"
orseof.Open strSQL, db
%>
</body>
</html>
