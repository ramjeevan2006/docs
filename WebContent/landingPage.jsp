<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<%
	response.setHeader("Cache-Control",
			"no-cache, no-store, must-revalidate"); // HTTP 1.1.
	response.setHeader("Pragma", "no-cache"); // HTTP 1.0.
	response.setHeader("Expires", "0"); // Proxies.
%>

<link rel="stylesheet" type="text/css" href="css/style.css" />
<script type="text/javascript" src="JS/jquery-1.4.2.min.js"></script>

<script src="JS/jquery.autocomplete.js"></script>
<link rel="stylesheet"
	href="https://code.jquery.com/mobile/1.4.5/jquery.mobile-1.4.5.min.css">
<script>
	$(document).ready(function() {

		jQuery(function() {
			$("#empList").autocomplete("list.jsp");
		});
	});

	function renderEmployeeData() {
		var c = $("input:text").val();
		$.ajax({
			url : "EmployeeDetails.jsp",
			data : {
				'identifier' : c
			},
			success : function(result) {
				$("#div1").html(result);
			}
		});

	}
	function addClick() {
		window.open("AddEmployee.jsp", "addWindow",
				"top=300,left=500,width=400,height=400");
	}
	function delClick() {
		//alert("deleted")
		var c = $("input:text").val();
		$.ajax({
			url : "DeleteEmployee.jsp",
			data : {
				'identifier' : c
			},
			success : function(result) {
				$("#div1").html(result);

			}
		});

	}

	function editClick() {
		var c = $("input:text").val();
		var editWindow = window.open("EditEmployee.jsp?data=" + c, "editWindow",
				"top=300,left=500,width=400,height=400");
	}
	
	function test(){
		alert("parent");
	}
</script>
</head>
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
	<br>
	<br>
	<center>
		<font face="verdana" size="2"> <font size="4">Employee
				Portal::: <font color="#809e02" size="5">More Information on
					employees::</font>
		</font> 
		<br>
		<br> <b>Provide Employee Name :</b> <input type="text" id="empList"
			name="empList" class="input_text" /> 
			<button onclick="renderEmployeeData()">Search</button>

			<div class="button-group">
				<fieldset>
					<legend>Actions:</legend>
					<button onclick="addClick()">Add</button>
					<button onclick="editClick()">Edit</button>
					<button onclick="delClick()">Remove</button>
				</fieldset>
			</div>

			<div id="div1"></div>

		</font>
</body>
</html>