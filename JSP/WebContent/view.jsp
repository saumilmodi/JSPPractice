<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>View</title>
	</head>
	<body>
	
		<% String user = (String)session.getAttribute("user"); %>
		<% 
		String driver="oracle.jdbc.driver.OracleDriver";
		Class.forName(driver);
		String url="jdbc:oracle:thin:@localhost:1521:xe";
		String userName="system";
		String password="manager";
		Connection con=DriverManager.getConnection(url,userName,password);
		
			String query = "select * from employee";
			PreparedStatement ps = con.prepareStatement(query);
			ResultSet rs = ps.executeQuery();
		%>
	
		<h6 align="right"><a href="home.jsp">Home</a></h6>
		<h6 align="right">Welcome to <%= user %></h6>
		
		<h4 align="center">List of Employee</h4>
		<table align="center" border="1">
				<tr>
					<th>Username</th>
					<th>Password</th>
					<th>Gender</th>
					<th>PhoneNumber</th>
					<th>EmailId</th>
				</tr>
			<% while(rs.next()) { %>
				<tr>
					<td><%= rs.getString(1) %></td>
					<td><%= rs.getString(2) %></td>
					<td><%= rs.getString(3) %></td>
					<td><%= rs.getLong(4) %></td>
					<td><%=rs.getString(5) %></td>
				</tr>
			<% } %>
		</table>
	</body>
</html>