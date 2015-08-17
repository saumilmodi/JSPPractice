<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

	<!-- 1 --> 
    	<c:set var="a" value="2"/>				
	   	<c:set var="b" value="3"/>
	   	<c:set var="sum" value="${a+b}"/>
	   	<p>The value of Sum: <c:out value="Sum = ${sum}"/></p>

	<!-- 2 --> 
	<c:forEach var="index" items="Monday,Tuesday,Wenesday,Thursday,Friday">
   		# ${index}: 
	   <c:choose>
		   <c:when test="${index == 'Monday'}">
		      First day of week!<br/>
		   </c:when>
		   <c:when test="${index == 'Wenesday'}">
		      Third day of week!<br/>
		   </c:when>
		   <c:when test="${index =='Friday'}">
		      Fifth day of week!<br/>
		   </c:when>
		   <c:otherwise>
		      Not a chosen day?<br/>
		   </c:otherwise>
	   </c:choose>
   </c:forEach>
   

 <!-- 3 -->
 	<p>for Each loop Example</p>
   	<c:forEach var="a" begin="1" end="4" step="2">
	   	<c:out value="${a}" />
	</c:forEach>
 
 <!-- 4 -->
 	<c:set var="names" value="Venkat:Kiran;Ravi|James;Suman"/>
    <c:forTokens items="${names}"
                 delims="a"
                 var="currentName"
                 varStatus="status"   >

		Family member #<c:out value="${status.count}" /> is <c:out value="${currentName}" /> <br />
    
	</c:forTokens>
 
 <!-- 5 -->
 	<form>
	   	<h5>if tag in Core tag library</h5>
	   	User Name:<input type="text" name="user" size="25">
	   	<input type="submit" value="Submit">
   	</form>
   	<br><br>
   	<c:if test="${param.user==''}">
    	Enter a valid Username
   	</c:if>
 
 <!-- 6 -->
  	<p>Use of c:import in jstl</p>
   	<c:import url="fulldate.jsp"/>
    <p>Date displayed from full date.jsp::</p>
 
<!-- 7 -->    
    <c:redirect url="http://www.google.com"/>
    
 <!-- 8 -->
  	<c:catch var ="iexcept">
    	<% int x = 7/0;%>
  	</c:catch>
  	<c:if test = "${iexcept!=null}">
    	The exception is :<c:out value="${iexcept}" /><br><br>
  	</c:if>
 
 