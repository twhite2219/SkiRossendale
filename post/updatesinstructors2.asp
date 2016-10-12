<!DOCTYPE HTML PUBLIC
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<title>sent succesfully</title>
</head>
<!-- page to store instructors for the week ahead to the database -->
<body>
<link rel="stylesheet" type="text/css" href="../linked/csssheet.css">
<div id="head"></div>
<h1>done!</h1>
<%
bimon=request.form("bimon")
bitues=request.form("bitues")
biwed=request.form("biwed")
bithurs=request.form("bithurs")
bifri=request.form("bifri")
bisat=request.form("bisat")
bisun=request.form("bisun")
skimon=request.form("skimon")
skitues=request.form("skitues")
skiwed=request.form("skiwed")
skithurs=request.form("skithurs")
skifri=request.form("skifri")
skisat=request.form("skisat")
skisun=request.form("skisun")
dim orseof
set db=server.createobject("adodb.connection")
set brs1=server.createobject("adodb.recordset")
set brs2=server.createobject("adodb.recordset")
set brs3=server.createobject("adodb.recordset")
set brs4=server.createobject("adodb.recordset")
set brs5=server.createobject("adodb.recordset")
set brs6=server.createobject("adodb.recordset")
set brs7=server.createobject("adodb.recordset")
set srs1=server.createobject("adodb.recordset")
set srs2=server.createobject("adodb.recordset")
set srs3=server.createobject("adodb.recordset")
set srs4=server.createobject("adodb.recordset")
set srs5=server.createobject("adodb.recordset")
set srs6=server.createobject("adodb.recordset")
set srs7=server.createobject("adodb.recordset")
db.open "DRIVER={Microsoft Access Driver (*.mdb)}; DBQ=" & Server.MapPath("../linked/skiRossy.mdb") 
SQLmonb = "UPDATE tblinstructor SET instructor='"&bimon&"' where dayavailable='monday' AND activity='snowboarding';"
brs1.Open SQLmonb, db
SQLtuesb = "UPDATE tblinstructor SET instructor='"&bitues&"' where dayavailable='tuesday' AND activity='snowboarding';"
brs2.Open SQLtuesb, db
SQLwedb = "UPDATE tblinstructor SET instructor='"&biwed&"' where dayavailable='wednesday' AND activity='snowboarding';"
brs3.Open SQLwedb, db
SQLthursb = "UPDATE tblinstructor SET instructor='"&bithurs&"' where dayavailable='thursday' AND activity='snowboarding';"
brs4.Open SQLthursb, db
SQLfrib = "UPDATE tblinstructor SET instructor='"&bifri&"' where dayavailable='friday' AND activity='snowboarding';"
brs5.Open SQLfrib, db
SQLsatb = "UPDATE tblinstructor SET instructor='"&bisat&"' where dayavailable='saturday' AND activity='snowboarding';"
brs6.Open SQLsatb, db
SQLsunb = "UPDATE tblinstructor SET instructor='"&bisun&"' where dayavailable='sunday' AND activity='snowboarding';"
brs7.Open SQLsunb, db
SQLmons = "UPDATE tblinstructor SET instructor='"&bimon&"' where dayavailable='monday' AND activity='skiing';"
srs1.Open SQLmons, db
SQLtuess = "UPDATE tblinstructor SET instructor='"&bitues&"' where dayavailable='tuesday' AND activity='skiing';"
srs2.Open SQLtuess, db
SQLweds = "UPDATE tblinstructor SET instructor='"&biwed&"' where dayavailable='wednesday' AND activity='skiing';"
srs3.Open SQLweds, db
SQLthurss = "UPDATE tblinstructor SET instructor='"&bithurs&"' where dayavailable='thursday' AND activity='skiing';"
srs4.Open SQLthurss, db
SQLfris = "UPDATE tblinstructor SET instructor='"&bifri&"' where dayavailable='friday' AND activity='skiing';"
srs5.Open SQLfris, db
SQLsats = "UPDATE tblinstructor SET instructor='"&bisat&"' where dayavailable='saturday' AND activity='skiing';"
srs6.Open SQLsats, db
SQLsuns = "UPDATE tblinstructor SET instructor='"&bisun&"' where dayavailable='sunday' AND activity='skiing';"
srs7.Open SQLsuns, db
%>
</body>
</html>
