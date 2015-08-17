
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%--       
   Does "Female" contains "male"::  
	<c:out value="${fn:contains(Female,male)}"/> <br/><br/>

    <c:out value="${fn:containsIgnoreCase(Hiox,h)}"/> <br/><br/>
     
    <c:out value="${fn:endsWith(HioxIndia,a)}"/> <br/><br/>
	      
    Character encoded string::${fn:escapeXml("romeo&juliet")} <br/><br/>
     
    Index of "n" in the string "indiancity" ::${fn:indexOf("indiancity","n")} <br/><br/>
     
    <c:set var="str" value="j o i n"/> 
    	<p><b>The string array "join" using "|"::</b></p>
    	
    <c:set var="jnd" value="${fn:split(str,' ')}" />
    
    <c:out value="${fn:join(jnd,'|')}" /> <br/><br/>
    
    <form>
	   	<p>Enter your new User Name:<input type="text" name="usr" size="25">
	   	<input type="submit" value="Submit">
   	</form>
   	<br/>
   	Length of your User Name is:: <c:out value="${fn:length(param.usr)}" /><br/><br/>
   	
   	${fn:replace("Myname is SAM",'SAM','PAM')} <br/><br/>
   	
   	<b>String "Apple" starts with "n"::</b> ${fn:startsWith("Apple",'n')} <br/><br/>
   	
   	${fn:substring('trees',0,4)}  <br/><br/>
   	 
   	${fn:substringAfter('hioxindia','hiox')}  <br/><br/>
   	
   	${fn:substringBefore('indiaisacountry','is')}  <br/><br/>
   	
   	${fn:toLowerCase('APPLE')}  <br/><br/>
  --%>  		
   	<form>
	    USERNAME:<input type="text" name="usr" size="25">
	    <p></p>
	    <input type="submit" value="Submit">
    </form>
    Your User Name in Uppercase:: <c:out value="${fn:toUpperCase(param.usr)}" />  <br/><br/>
