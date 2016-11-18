<%@page import="com.demo.project.EmployeeVO"%>
<%@page import="java.util.Map"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%
	response.setHeader("Cache-Control",
			"no-cache, no-store, must-revalidate"); // HTTP 1.1.
	response.setHeader("Pragma", "no-cache"); // HTTP 1.0.
	response.setHeader("Expires", "0"); // Proxies.
%>
<%!Map<String, EmployeeVO> dataSourceMap;
	String identifier;
	ServletContext sc;%>
<%
	sc = request.getSession().getServletContext();
	dataSourceMap = (Map<String, EmployeeVO>) sc
			.getAttribute("empDataSource");
	identifier = request.getParameter("identifier");
%>
</head>
<body>
	<%
		if (dataSourceMap.get(identifier) == null) {
	%>
	<p>Select a valid record to delete!!</p>
	<%
		} else {
			dataSourceMap.remove(identifier);
	%>
	<p>
		Employee
		<%=identifier%>
		record has been removed successfully!!
	</p>
	<%
		}
	%>
</body>
</html>