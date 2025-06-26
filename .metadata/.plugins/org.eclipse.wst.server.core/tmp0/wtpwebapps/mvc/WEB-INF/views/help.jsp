<%@page import="java.time.LocalDateTime"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page isELIgnored="false"  %>
    
   <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>help page</title>

</head>
<body>
<%-- <% String name=(String)request.getAttribute("name"); --%>
// 			Integer phone=(Integer)request.getAttribute("id");
// 			LocalDateTime time=(LocalDateTime)request.getAttribute("time");
<%-- %> --%>

<h1>my name is 
<%-- <%=name %>  --%>
${name }
this is help page</h1>
<hr>
<h1>my phone no is 
<%-- <%=phone %> --%>
${id }
</h1>
<hr>
<h1>time is  
${time }

<%-- <%=time %> --%>

</h1>

<h1>
<c:forEach var="items" items="${list }" >
		<h1>${items }</h1>

</c:forEach>
</h1>
</body>
</html>