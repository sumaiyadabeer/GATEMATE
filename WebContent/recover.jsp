<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

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
<font color="white">Recover Password Here!!</font>
</span></td>
</tr>
</table>




<script>
    function validation() {
        
        var email = document.getElementById("txtEmail").value;
        
        if (email == "") {
            
            document.getElementById("MsgEmail").innerHTML = "Please Input Email Address";
            return false;
        }
        else {
            document.getElementById("MsgEmail").innerHTML = "";
        }
       
        var pass = document.getElementById("txtPassword").value;

        if (pass == "") {

            document.getElementById("MsgPassword").innerHTML = "Please Input Password";
            return false;
        }
        
        else if (pass.length<=8) {

            document.getElementById("MsgPassword").innerHTML = "Please Input minimum 8 char Password";
            return false;
        }

        else {
            document.getElementById("MsgPassword").innerHTML = "";
        }
        
        var cpass=document.getElementById("txtCPassword").value;
        
        if(cpass=="")
        	{
        	 document.getElementById("MsgCPassword").innerHTML = "Please Input Confirm  Password";
             return false;
         
        	}
        
        else if(!(cpass.equals(pass)))
        	{
        	 document.getElementById("MsgCPassword").innerHTML = "Confirm pass must be same as pass";
             return false;
         }
         else {
             document.getElementById("MsgCPassword").innerHTML = "";
         }
        	

        return true;
    }

    function PasswordLength() {
        var pass = document.getElementById("txtPassword").value;
        document.getElementById("MeterPasswordLength").value = pass.length;
    if (pass.length<=1) {

        document.getElementById("MsgPassword").innerHTML = "Very Bad";
        

        return false;
    }
    else if (pass.length > 3 && pass.length <=8) {

        document.getElementById("MsgPassword").innerHTML = "Bad";
        
        return false;
    }
    else if (pass.length >= 8 && pass.length <= 10){

        document.getElementById("MsgPassword").innerHTML = "Good";
        
            
    }
    else if (pass.length >= 10) {

        document.getElementById("MsgPassword").innerHTML = "Strong";
        
            
    }
    }



</script>

</head>
<body  background="recovery.jpg">
<center>
<form action ="Forgot" method="post" onsubmit="return validation()">
<br>

<table>

<tr>
<br>
<br>
<br>
<td>Enter Email:</td>
<td><input type="text" id="txtEmail" name="email"/></td>
<td><span id="MsgEmail"></span></td>
</tr>

<tr>
<td>Password:</td>
<td><input type="text" id="txtPassword" name="pass"  onkeypress="PasswordLength();"/></td>
<td><span id="MsgPassword"></span></td>
</tr>

<tr>
<td>Confirm Password:</td>
<td><input type="text" id="textCPassword" name="cpass" ></td>
<td><span id="MsgCPassword"></span></td>
</tr>

<tr><td colspan="2"><input type="submit" /></td></tr>

</table>
</form>
</center>

<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
</body>
</html>



