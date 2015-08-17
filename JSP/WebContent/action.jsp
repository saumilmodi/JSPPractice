<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Insert title here</title>
	</head>
	<body>
		
		<!--  Employee emp = new Employee(); -->
		
		<jsp:useBean id="emp" class="com.online.bean.Employee"/>
		
		<!--  emp.eno = 101 or emp.setEno(101)-->
		<jsp:setProperty property="eno" name="emp" value="101"/>
		<jsp:setProperty property="ename" name="emp" value="Venkat"/>
		<jsp:setProperty property="esal" name="emp" value="10000"/>
		
		<!-- Syso(emp.eno) or emp.getEno(); -->
		Eno = <jsp:getProperty property="eno" name="emp"/> <br/>
		Ename = <jsp:getProperty property="ename" name="emp"/><br/>
		Esal = <jsp:getProperty property="esal" name="emp"/>
		
		
	</body>
</html>