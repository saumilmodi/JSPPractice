<%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
   <body>
   		<form>
   			Number <input type="text" name="eno"/><br/>
   			Name <input type="text" name="ename"/><br/>
   			Salary <input type="text" name="esal"/><br/>
   			<input type="submit">
   		</form>
   
	   <jsp:useBean id="employee" scope="page" class="com.infy.Employee" />
	   
	   <jsp:setProperty name="employee" property="eno" param="eno" />
	   Get Number: <jsp:getProperty name="employee" property="eno" /><BR>
	   
	   <jsp:setProperty name="employee" property="ename" value="${param.ename}" />
	   Get Name: <jsp:getProperty name="employee" property="ename" /><BR>

	   <jsp:setProperty name="employee" property="esal" value="${param.esal}" />
	   Get Salary: <jsp:getProperty name="employee" property="esal" /><BR>
	   
	</body>
</html>	


	 --%>