<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Insert title here</title>
	</head>
	<body>
	
		I am in Action - before <br/>
		
		<jsp:include page="fulldate.jsp"/>  

		<br/>I am in Action - After <br/>
		
		<!-- Employee emp = new Employee -->
		<%-- <jsp:useBean id="emp" class="com.online.bean.Employee" scope="session"/>
		
		<jsp:setProperty property="eno" name="emp" value="101"/>
		<jsp:setProperty property="ename" name="emp" value="James"/>
		
		
		<jsp:forward page="p1.jsp"></jsp:forward> --%>
		
	</body>
</html>