<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%
	System.out.println("Checking...");
	String uname = request.getParameter("uname");
	String pwd = request.getParameter("pwd");
	
	try {
		String driver="oracle.jdbc.driver.OracleDriver";
		Class.forName(driver);
		String url="jdbc:oracle:thin:@localhost:1521:xe";
		String userName="system";
		String password="manager";
		Connection con=DriverManager.getConnection(url,userName,password);
		
		String query = "select * from employee where username=? and password=?";
		PreparedStatement ps = con.prepareStatement(query);
		ps.setString(1, uname);
		ps.setString(2, pwd);
		
		ResultSet rs = ps.executeQuery();
		System.out.println("Checking...4");
		
		if(rs.next()){
			session.setAttribute("user", uname);
			response.sendRedirect("home.jsp");
		}
		else{
			response.sendRedirect("login.jsp?message=Authentication failed..");
		}
		
	}catch(Exception e){
		e.printStackTrace();
	}

%>


