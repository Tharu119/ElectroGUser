<%@page import="com.jersy.dao.UserDao"%>
<%@page import="com.jersy.dao.readUsers"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User Management</title>
<link rel="stylesheet" href="Views/bootstrap.min.css">
<script src="Components/jquery-3.4.1.min.js"></script>
<script src="Components/UserManagment.js"></script>
</head>
<body>
	<div class="container">
		<div class="row">
			<div class="col-6">
				<h1>User Management</h1>

				<form id="formUserManagment" name="formUserManagment" method="post" action="UserManagment.jsp">


					Name: <input id="name" name="name" type="text"
						class="form-control form-control-sm"> 
						
						<br>NIC: <input id="email" name="email" type="text"
						class="form-control form-control-sm"> 
						
						<br> Address: <input id="pass" name="pass" type="text"
						class="form-control form-control-sm"> 
						
						<br> Phone: <input id="mobile" name="mobile" type="text"
						class="form-control form-control-sm"> 
						
						
						
						
						<br> <input
						id="btnSave" name="btnSave" type="button" value="Save"
						class="btn btn-primary"> <input type="hidden"
						id="hidProjectIDSave" name="hidProjectIDSave" value="">
				</form>

				<div id="alertSuccess" class="alert alert-success"></div>
				<div id="alertError" class="alert alert-danger"></div>

				<br>
				<div id="divProjectGrid">
					<%
					readUsers projectObj = new readUsers();
						out.print(projectObj.readUsers());
					%>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
