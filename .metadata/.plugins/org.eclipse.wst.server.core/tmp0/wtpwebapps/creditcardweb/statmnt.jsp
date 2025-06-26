<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<%@ page import="java.util.*,com.model.statement" %>
<font color="brown"> %>
<body>
<% 
			int ccno=Integer.parseInt(session.getAttribute("ccno").toString());
			statement ss=new statement();
			List<statement>stamt=com.dao.custdao.viewstmt(ccno);
											
			for(statement st:stamt)
			{%>
			<tr align="center">
			<td><%=st.getTno() %></td>
				<td><%=st.getDate() %></td>
				<td><%=st.getAmt() %></td>
				<td><%=st.getType() %></td>
				<td><%=st.getReward() %></td>
				<td><%=st.getCcno() %></td>
			<%}
%>
</body>
</html>