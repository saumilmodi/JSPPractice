<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>

	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Login Page</title>
	</head>
	
	<body>
		<h2 align="center">Employee Login</h2>	
		<% String message = request.getParameter("message"); %>
		
		<% if(message != null) {%>
			<h5 align="center" style="color:red"><%= message %></h5>	
		<% } %>
		
		<form action="check.jsp" method="post">
			<table align="center">
				<tr>
					<td>User Name</td>
					<td><input type="text" name="uname"></td>
				</tr>	
				<tr>
					<td>Password</td>
					<td><input type="password" name="pwd"></td>
				</tr>	
				<tr>
					<td><input type="reset" value="clear"></td>
					<td><input type="submit" value="Login"></td>
				</tr>
			</table>
		</form>
		
	</body>
	
</html>