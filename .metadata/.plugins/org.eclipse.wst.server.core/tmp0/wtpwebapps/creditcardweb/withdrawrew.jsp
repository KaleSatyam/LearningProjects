<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Withdraw</title>
</head>
<body>
<center>
<h1><font color="yellow">Withdraw</font></h1>

<%@ page import="com.dao.custdao" %>
<% int ccno=Integer.parseInt(session.getAttribute("ccno").toString());
       int rwd=custdao.getreward(ccno);

%>
<form action="withdraw" >
<table>
<tr>
<td>Enter Withdraw amount </td>
<td>  <input type="text" name="w1" value="w1"></td>
</tr>
<tr>
<td><font color=red >Reward Add or Not</font></td>
</tr>
<tr>
<td><%="("+rwd+")" %><font color=red >Yes</font><input type="checkbox"  name="yes"  value="yes" ></td>
<td><font color=red >No</font><input type="checkbox"  name="yes" value="no" >
</tr>
<tr>
 <td colspan="3" align="right"><br><input type="submit"  name="submit" value="Withdraw" ></td>
<tr>
</table>
</form>
</center>
</body>

</html>