<%@page import="com.model.statement"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>view user</title>
</head>
<center>
<table border="5" bordercolor="tomato">
<body>
<tr><th>Username</th><th>Mobile</th><th>Address</th><th>Email</th><th>Card no</th></tr>
<%@ page import="com.dao.*,java.util.*,com.model.*" %>
<%
		List<customer> ll=custdao.showuser();
		for(customer st:ll)
		{%>
			<tr>
					<td><%=  st.getCust_name()%></td>
					<td><%=  st.getCust_mob()%></td>
					<td><%=  st.getCust_add()%></td>
					<td><%=  st.getCust_email()%></td>
					<td><%=  st.getCust_ccno()%></td>
		<% }
%>
</body>
</table>
</center>
</html>