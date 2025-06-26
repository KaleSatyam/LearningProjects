
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Ownerreg</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
</head>
<style>
fieldset {
  display: block;
 font-size:12px;
  padding:10px;
  width:400px;
  line-height:1.8;
}
body {
font-family: Arial, Helvetica, sans-serif;
}
legend{
color :brown;
font-size: 30px;
font-weight: bold;
}
label{
font-size: 17px;
}
input[type=reset], input[type=submit] {
     width: 40%;
     color: red;
  }
  input[type=reset], input[type=submit] :hover
  {
   	color:brown;
  }
</style>
<center>
<body>
<form action="ownerregserv" method="post" >

<fieldset>
<legend>Register Owner</legend>
<label>Enter Name<br />
 <input type="text" name="t1" required="required" placeholder="Enter Name" /></label><br /><br />
<label>Enter Address<br />
<input type="text" name="t2" required="required" placeholder="Enter Address" /></label><br /><br />
<label>Enter Contact<br />
<input type="text" name="t3" required="required" placeholder=" eg.9876543210" pattern="[0-9]{10}" /></label><br/><br />
<label>Enter Email<br />
<input type="email"  name="t4" required="required" placeholder="Enter Email" /></label><br/><br />
<label>Enter Password<br />
<input type="password" name="t5" required="required" placeholder="atleast 6 digits" pattern="[0-9|a-z|A-Z|*&^%$#@!_+]{6,10}" /></label><br/><br />
<input type="reset" name="reset"/>
 <input type="submit" name="SignUp"/>
</fieldset>
	</form>
	
	<p><font color="red" >If you have already account</font> </p>
<h3><a href="login.html">Login here</font></a></h3>

</body>
</center>
</html>