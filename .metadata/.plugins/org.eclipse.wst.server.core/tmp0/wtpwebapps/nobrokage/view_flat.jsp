<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>view_flat</title>
</head>

<body>
<center>
<%@page import="com.model.*,com.dao.*,java.util.*" %>
<table align="left" border="2" width="60%" height="50%">
<tr bgcolor="red">
			<th width="23" >Sr.no.  </th>
        	<th width="40">Flat_ID  </th>
        	<th width="50">Deposite</th>
        	<th width="65">Maintanance</th>
        	<th width="40">Rent</th>
        	<th width="40">Room</th>
        	<th width="40">type</th>
        	<th width="40">Sq.Ft</th>
        	<th width="80">Address</th>
        	<th>Images</th>
        	 </tr>
<%
	
try{
	
	int id=Integer.parseInt(session.getAttribute("id").toString());

	Owner owner=userdao.getowner(id);
	System.out.println("oid  :"+id);
	List<Flat_info>flist=owner.getFlatinfo();
	int n=1;
	if(flist.isEmpty())
	{%>
		   <h1><font color="orange">No flats Available....plz add flat</font></h1>
	<%}else	
		for(Flat_info fl:flist)
	{%>
		<tr>
		<td bgcolor="blue"><%=n++ %></td>
		<td><%=fl.getF_id() %></td>
		<td><%=fl.getF_deposite() %></td>
		<td><%=fl.getF_maintan() %></td>
		<td><%=fl.getF_rent() %></td>
		<td><%=fl.getF_room() %></td>
		<td><%=fl.getF_type() %></td>
		<td><%=fl.getF_sqft() %></td>
		<td><%=fl.getAddress().getA_area()%> , <%=fl.getAddress().getA_city()%></td>
		<% 
			Set<Flat_image>iset=fl.getImg();
			if(iset.isEmpty())
			  {%>
         	   <td>Image Not Available.....</td>
         	 <% }
			else
				for(Flat_image fi:iset)
				{%>
					<td><img alt="no Image" src="GetImg.jsp?id=<%=fi.getImg_id()%>">
				<% }
			%>
		</tr>
<%}
}catch(Exception e)
{
	 
}
%>
</table>
</center>
</body>
</html>