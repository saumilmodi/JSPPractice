<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>JSTL Message Format Example</title>
	</head>
	<body>
	    
	 	<!-- Setting Locale to India -->
	   <%--  <fmt:setLocale value="en_IN"/>
	    <fmt:formatNumber value="0.345" type="CURRENCY" minFractionDigits="3"></fmt:formatNumber><br/>
	    
	    <!-- Setting Locale to US -->
	    <fmt:setLocale value="en_US"/>
	    <fmt:formatNumber value="0.345" type="CURRENCY" minFractionDigits="3"></fmt:formatNumber><br/>
	    
	    <!-- Setting Locale to UK -->
	    <fmt:setLocale value="en_GB"/>
	    <fmt:formatNumber value="0.345" type="CURRENCY" minFractionDigits="3"></fmt:formatNumber><br/>
	 	 --%>
	 	
	 	<%-- <h3>Number Format:</h3>  
		<c:set var="now" value="<%=new java.util.Date()%>" />
		
		<p>Format (1): <fmt:formatDate type="time" value="${now}" /></p>
		
		<p>Format (2): <fmt:formatDate type="date" value="${now}" /></p>
		
		<p>Format (3): <fmt:formatDate type="both" value="${now}" /></p>
		
		<p>Format (4): <fmt:formatDate type="both" 
							dateStyle="short" timeStyle="short" value="${now}"/></p>
		
		<p>Format (5): <fmt:formatDate type="both" 
		            		dateStyle="medium" timeStyle="medium" value="${now}" /></p>
		
		<p>Format (6): <fmt:formatDate type="both" 
		            		dateStyle="long" timeStyle="long" value="${now}" /></p>
		
		<p>Format (7): <fmt:formatDate pattern="yyyy-MM-dd" value="${now}" /></p>
 --%>

		<c:set var="now" value="<%=new java.util.Date()%>" />
		<p>Date in Current Zone: <fmt:formatDate value="${now}" 
		             type="both" timeStyle="long" dateStyle="long" /></p>
		             
		<p>Change Time Zone to GMT-8</p>
		<fmt:setTimeZone value="GMT-8" />
		
		<p>Date in Changed Zone: <fmt:formatDate value="${now}" 
             type="both" timeStyle="long" dateStyle="long" /></p>

	 	
	</body>
</html>