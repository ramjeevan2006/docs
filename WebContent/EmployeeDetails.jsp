<%@page import="com.demo.project.EmployeeVO"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<%
	response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate"); // HTTP 1.1.
	response.setHeader("Pragma", "no-cache"); // HTTP 1.0.
	response.setHeader("Expires", "0"); // Proxies.
%>
<%!
	Map<String, EmployeeVO> dataSourceMap ;
	String identifier;
%>
<%

     ServletContext sc = request.getSession().getServletContext();
	 dataSourceMap = (Map<String, EmployeeVO>)sc.getAttribute("empDataSource");
	 identifier = request.getParameter("identifier");
	 //sc.setAttribute("identifier", identifier);
%>

<script>

</script>
<style>
table {
	width: 50%;
}

table, th, td {
	border: 1px solid black;
	border-collapse: collapse;
}

th, td {
	padding: 5px;
	text-align: left;
}

table#t01 tr:nth-child(even) {
	background-color: #eee;
}

table#t01 tr:nth-child(odd) {
	background-color: #fff;
}

table#t01 th {
	background-color: #809e02;
	color: black;
}
</style>
</head>
<body>
	<% if(dataSourceMap.get(identifier) == null){ %>
	<p>No records found!!</p>
	<% } else{ %>
	<table id="t01">
		 
		<tr>
			   
			<th>PSID</th>    
			<th>Name</th>
			<th>Gender</th>
			<th>Grade</th>    
			<th>Contact No</th>
			<th>Address</th>  
		</tr>
		<tr>
			<td><%=	dataSourceMap.get(identifier).getId() %></td>
			<td><%=	dataSourceMap.get(identifier).getName() %></td>
			<td><%=	dataSourceMap.get(identifier).getGender() %></td>
			<td><%=	dataSourceMap.get(identifier).getGrade() %></td>
			<td><%=	dataSourceMap.get(identifier).getPhoneNumber() %></td>
			<td><%=	dataSourceMap.get(identifier).getAddress() %></td>
		</tr>


	</table>
	<% } %>
</body>
</html>

