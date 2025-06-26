<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>buyerreg</title>
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
input[type=text], input[type=password],input[type=email] {
  width: 90%;
  padding: 12px;
  margin: 5px 0 10px 0;
  display: inline-block;
  border: none;
  background: #f1f1f1;
}
 legend{
font-size: 40px;
font-weight: bold;
}
label{
font-size: 17px;
}
input[type=reset], input[type=submit] {
     width: 50%;
     color: blue;
     background-color: orange;
  }
  input[type=reset], input[type=submit] :hover
  {
    background-color: #111;
  }
</style>
<center>
<body>
<form action="buyerser" method="post" >

<fieldset >
<legend style="font-family: Times New Roman, Times, serif;" ><font color="red">Register Buyer</font></legend>
<label >Enter Name<br />
 <input type="text" name="t1" required="required" placeholder="Enter Name" /></label><br /><br />
<label>Enter Address<br />
<input type="text" name="t2" required="required" placeholder="Enter Address" /></label><br /><br />
<label>Enter Contact<br />
<input type="text" name="t3" required="required" placeholder=" eg.9876543210" pattern="[0-9]{10}" /></label><br/><br />
<label>Enter Email<br />
<input type="email"  name="t4" required="required" placeholder="Enter Email" /></label><br/><br />
<label>Enter Password<br />
<input type="password" name="t5" required="required" placeholder="atleast 6 digits" pattern="[0-9|a-z|A-Z|*&^%$#@!_+]{6,10}" /></label><br/>

<input type="reset" name="reset" ><input type="submit" name="SignUp"/>

 
</fieldset>

	</form>
</body>
</center>
</html>