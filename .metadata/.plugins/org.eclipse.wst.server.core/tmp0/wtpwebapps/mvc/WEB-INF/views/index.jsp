<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<html>
<body>
<h2>Hello World!</h2>

<h1>this is home page</h1>

<%
String name=(String)request.getAttribute("name");
int phone=(Integer)request.getAttribute("id");
%>
	
		<h1> name is <%=name %></h1>
		<h2>phone no is <%=phone %></h2>
		
</body>
</html>
