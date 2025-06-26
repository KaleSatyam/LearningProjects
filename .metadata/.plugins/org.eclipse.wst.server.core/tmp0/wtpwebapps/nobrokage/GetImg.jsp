<%@page import="com.dao.userdao"%>
<%@page import="com.model.Flat_image"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@page import="com.model.*,com.dao.*,java.util.* %>
<%
try{
	int id=Integer.parseInt(request.getParameter("id"));
	System.out.println("Id  "+id);
	Flat_image flatimage=userdao.getimageobj(id);
	byte[] b=flatimage.getFlat_img();
	response.getOutputStream().write(b);
	response.setContentType("image/jpeg");
	response.getOutputStream().close();
	response.getOutputStream().flush();
	
}catch(Exception e)
{
	
}

%>
</body>
</html>