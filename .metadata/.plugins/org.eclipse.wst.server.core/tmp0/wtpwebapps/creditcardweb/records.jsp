<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>records</title>
</head>
<center>
<body>
<table border="2" >
<tr ><th >Month(date)</th><th>Sum(debit amt)</th></tr>

<%@ page import="com.dao.*, java.util.*" %>

	<%
	LinkedList<Integer> al=custdao.records();	
	 // Add an Iterator to hs. 
    Iterator it = al.iterator(); 

    // Display element by using Iterator 
    while (it.hasNext())
    {%>
		<tr>
		<td><%=it.next()%></td>
		<td><%=it.next()%></td>
		</tr>
		<% }
		%>
	
	

</body>
</table>
</center>
</html>