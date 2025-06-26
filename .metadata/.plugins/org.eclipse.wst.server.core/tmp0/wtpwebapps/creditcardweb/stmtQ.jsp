 <%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Stmt</title>
</head>
<body>
<form action="stmtQ.jsp">
<table>
<tr>
<td><input type="submit" name="submit" value="next"></td>
<td><input type="submit" name="submit" value="prev"></td>
</tr>
<tr bgcolor="gray">
<th>Tno</th><th>CCno</th><th>Date</th><th>Amount</th><th>Type</th><th>Reward</th>
</tr>
<%@page import="java.util.*,com.model.statement" %>


<%
	int start=0;
	if(request.getParameter("submit").equals("prev"))
		start=(Integer.parseInt( request.getParameter("v")))-5;
		else if(request.getParameter("submit").equals("next"))
			start=(Integer.parseInt( request.getParameter("v")))+5;
		else
			start=0;
			int end=start+5;
	
//--int start=Integer.parseInt(request.getParameter("v"));

try{
	System.out.println(start+" "+end);
	int ccno=Integer.parseInt(session.getAttribute("ccno").toString());

	List<statement>stamt=com.dao.custdao.viewstmtQ(ccno,start);
	
	for(statement b:stamt)
	{
		%>
		<tr align="center">
			<td><%=b.getTno() %></td>
				<td><%=b.getDate() %></td>
				<td><%=b.getAmt() %></td>
				<td><%=b.getType() %></td>
				<td><%=b.getReward() %></td>
				<td><%=b.getCcno() %></td>
		
	<% }
	
}catch(Exception e)
{
	e.printStackTrace();
}
%> 

<input type="hidden" name="v" value="<%=start %>">

</table>
</form>
</body>
</font>	
</body>
</html>