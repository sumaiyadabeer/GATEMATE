<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>Login</title>
</head>
<body>

<center>
<!--
.style5 {color: #FF0000}
-->
</style>


<style type="text/css">
.menu{ margin:0; padding:5px ; line-height:36px;  font-family:Arial, Helvetica, sans-serif;font-size:14PX; color: #FFFFFF; text-decoration:none; }
.menu:hover{ color:#222; }
.menu.active{ color:#CC0000; }
.link{margin:0; padding:5px ; line-height:36px;  font-family:Arial, Helvetica, sans-serif;font-size:14PX; color:#0000FF; text-decoration:none; }
.link:hover{ color:#222; text-decoration:underline }
.style4 {
	font-size: 24px;
	font-weight: bold;
}
</style>

<title>GateMate</title>
<body>
<body bgcolor="sky blue">
<center>
<table border="0" bgcolor="#FFFFFF" width="80%" height="auto" cellpadding="0" cellspacing="0">
<tr>
<td align="left">
<table border="0"  width="100%" height="10%" cellspacing="0" cellpadding="0" bgcolor="#CC99FF">

</table>
</td>
</tr>
<td align="left">
<table border="0" width="100%" height="110" bgcolor="#FFCCCC" cellspacing="5" cellpadding="0">

</table>
</td>
</tr>
<tr>
<td align="left"><marquee behavior="alternate" scrollamount="2" bgcolor="#CCFFCC"><font size="4.5" color="#0066FF"> GATEMATE- Webportal where you find everything about Gate</font></marquee></td></tr>
<tr>
<td align="left"> 



<hr size="6" color="#000000">
<table width="100%" height="45" cellspacing="0" cellspacing="0" border="0">
<tr bg bgcolor="#CCCCCC"><td><span>

</span></td>

<td width="10%" align="center"><a href="index.html" class="menu">BACK</a> </td>
</tr>
</table>

<table width="100%" height="45" cellspacing="0" cellspacing="0" border="0">
<tr bg bgcolor="black"><td align="center"><span class="style4">
<font color="white">Welcome</font>
</span></td>
</tr>
</table>

<form action="Login" method="post">
<center>
<h1><font color="maroon" face="andalus" >Login To GateMate </font></h1>
<h3>Enter Email Address:<input type="text" name="email"></h3><br>
<h3>Enter Password:<input type="password" name="pass"></h3><br>
<br>
<input type="submit" value="Login"><br>
<br><br>
<a href="recover.jsp">&nbsp;&nbsp;Recover Password &nbsp;&nbsp;</a><br>
New User?<a href="reg.jsp">Create Account</a>
</center>
</form>
</center>
<br>
<br>
<br>
</body>
</html>