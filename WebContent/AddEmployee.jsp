<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<link rel="stylesheet"
		href="https://code.jquery.com/mobile/1.4.5/jquery.mobile-1.4.5.min.css">
<%
	response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate"); // HTTP 1.1.
	response.setHeader("Pragma", "no-cache"); // HTTP 1.0.
	response.setHeader("Expires", "0"); // Proxies.
%>

<body>
<style>
fieldset { 
    display: block;
    margin-left: 2px;
    margin-right: 2px;
    padding-top: 0.35em;
    padding-bottom: 0.625em;
    padding-left: 0.75em;
    padding-right: 0.75em;
    border: 1px groove;

}
</style>
	<script type="text/javascript" src="JS/jquery-1.4.2.min.js"></script>

	<form action="http://localhost:8080/DemoProject/FrontServlet"
		method="post">
		<fieldset>
			<legend>Personal information:</legend>
			<input type="hidden"  name="isFrom" 
				value="fromAdd">
			PSId:<br> <input type="text" id="" name="psID" maxlength="10" required
				pattern="[0-9]*" title="Only Numerics"> <br> Name:<br>
			<input type="text" id="name" name="name" maxlength="10" required
				pattern="[A-Za-z\\s]*" title="Only Alphabets"> <br>
			Grade:<br> <input type="text" id="" name="grade" maxlength="3" required
				pattern="[A-Za-z0-9]*" title="Only AlphaNumerics"> <br>
			Phone #:<br> <input type="text" id="" name="phoneNo" required
				maxlength="10" pattern="[0-9]*" title="Only Numerics"> <br>
			Address:<br> <input type="text" id="" name="address"
				maxlength="20" pattern="[A-Za-z\\s]*" title="Only Alphabets">
			<br>
			<div>
				Gender:<br> <input type="radio" id="mR" name="gender" required
					value="Male"> Male <input type="radio" id="fR"
					name="gender" value="Female"> Female
			</div>
			<br> <input type="submit" name="submit" value="submit" />
		</fieldset>
	</form>
</body>
</html>
