<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<style>
h2 {
	background-color: rgb(175, 227, 245);
	color: rgb(97, 97, 171);
	height: 50px;
	display: flex;
	align-items: center;
}

p {
	background-color: rgb(175, 227, 245);
	color: rgb(97, 97, 171);
	height: 50px;
	display: flex;
	align-items: center;
	width: 100%;
}

div.form-container {
	display: flex;
	justify-content: center;
	align-items: center;
	padding: 50px;
}
</style>
<meta charset="ISO-8859-1">
<title>Login</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
</head>
<body>
	<h2>Login</h2>
	<div class="form-container">
		<form action="Login" method="post">
			<table class="table table-borderless">
				<tr>
					<td><label for="username">Username <span
							style="color: red">*</span></label></td>
					<td><input type="text" name="username" class="form-control">
					</td>
				</tr>
				<tr>
					<td><label for="username">Password <span
							style="color: red">*</span></label></td>
					<td><input type="password" name="password"
						class="form-control"></td>
				</tr>
				<tr>
					<td><a href="#">Forgotten your password ?</a></td>
				</tr>
				<tr>
					<td><button type="submit" class="btn btn-secondary"
							value="Login">Login>></button></td>
				</tr>
			</table>
		</form>
	</div>
	<div class="error">
		<%
		String error = (String) request.getAttribute("error");
		if (error != null) {
		%>
		<h4 style="color: red; text-align: center;font-family:monospace;"><%=error%></h4>
		<br>
		<h6 style="color: red; text-align: center;font-family:monospace;">Try logging again
			with your credentials</h6>
		<%
		}
		%>
	</div>
</body>
</html>