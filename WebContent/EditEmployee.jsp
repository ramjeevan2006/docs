<%@page import="com.demo.project.EmployeeVO"%>
<%@page import="java.util.Map"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<link rel="stylesheet" href="https://code.jquery.com/mobile/1.4.5/jquery.mobile-1.4.5.min.css">
<%
	response.setHeader("Cache-Control",
			"no-cache, no-store, must-revalidate"); // HTTP 1.1.
	response.setHeader("Pragma", "no-cache"); // HTTP 1.0.
	response.setHeader("Expires", "0"); // Proxies.
%>

<%!Map<String, EmployeeVO> dataSourceMap;
	String identifier;
%>
<%
	ServletContext sc = request.getSession().getServletContext();
	dataSourceMap = (Map<String, EmployeeVO>) sc.getAttribute("empDataSource");
	identifier = request.getParameter("data");
%>

<body>
<script type="text/javascript" src="JS/jquery-1.4.2.min.js"></script>
	<script >
	$(document).ready(function() {
		<% if (dataSourceMap.get(identifier) != null && dataSourceMap.get(identifier).getGender().equalsIgnoreCase("male")) { %>
		document.getElementById("mR").checked = true;
		<% } else { %>
		document.getElementById("fR").checked = true;
		<% } %>
			});

	</script>

	<%
		if (dataSourceMap.get(identifier) == null) {
	%>
	<p>Select a valid record to update!!</p>
	<%
		} else {
	%>	

	<form action="http://localhost:8080/DemoProject/FrontServlet"
		method="post">
		<fieldset>
			<legend>Update Personal information:</legend>
			<input type="hidden"  name="isFrom" 
				value="fromEdit">
			PSId:<br> <input type="text" id="" name="psID" style="background-color:grey"
				value="<%=dataSourceMap.get(identifier).getId()%>" readonly
				maxlength="10" pattern="[0-9]*" title="Only Numerics"> <br>
			Name:<br> <input type="text" id="name" name="name" style="background-color:grey"
				value="<%=dataSourceMap.get(identifier).getName()%>" readonly
				maxlength="10" pattern="[A-Za-z\\s]*" title="Only Alphabets">
			<br> Grade:<br> <input type="text" id="" name="grade"
				value="<%=dataSourceMap.get(identifier).getGrade()%>"
				maxlength="3" pattern="[A-Za-z0-9]*" title="Only AlphaNumerics">
			<br> Phone #:<br> <input type="text" id="" name="phoneNo"
				value="<%=dataSourceMap.get(identifier).getPhoneNumber()%>"
				maxlength="10" pattern="[0-9]*" title="Only Numerics"> <br>
			Address:<br> <input type="text" id="" name="address"
				value="<%=dataSourceMap.get(identifier).getAddress()%>"
				maxlength="20" pattern="[A-Za-z\\s]*" title="Only Alphabets">
			<br>
			<div>
				Gender:<br> <input type="radio" id="mR" name="gender"  value="Male"> Male 
							<input type="radio" id="fR"	name="gender" value="Female"> Female
			</div>
			<br> <input type="submit" name="submit" value="submit" />
		</fieldset>
	</form>
	<% } %>
</body>
</html>
