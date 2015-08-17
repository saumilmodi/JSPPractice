<%@ taglib prefix="sql" uri="http://java.sun.com/jstl/sql" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>
<%@ page isELIgnored="true" %>

<html>
	<head>
		<title>JSTL: SQL action examples</title>
	</head>
	<body bgcolor="#FFFFFF">
		<h1>SQL Query Execution using parameters</h1>

			<sql:setDataSource
				driver="oracle.jdbc.driver.OracleDriver"
				url="jdbc:oracle:thin:@localhost:1521:xe"
				user="system"
				password="manager"
			/>

			<sql:update var="newTable">
				drop table mytable
			</sql:update>

			<sql:update>
				create table mytable (
					nameid int primary key,
					name varchar(80)
				)
			</sql:update>

			<sql:update var="updateCount">
				INSERT INTO mytable VALUES (111,'Flacher')
			</sql:update>
			<c:out value="${updateCount}"/>
			
			<sql:update var="updateCount1">
				INSERT INTO mytable VALUES (?,'James')
				<sql:param value="112"/>
			</sql:update>

			<sql:update var="updateCount2">
				INSERT INTO mytable VALUES (?,?)
				<sql:param value="113"/>
				<sql:param value="Ron"/>
			</sql:update>

			<sql:query var="rs">
				SELECT * FROM mytable
			</sql:query>

			<table border="1">
				<c:forEach var="row" items="${rs.rowsByIndex}">
					<tr>
						<td><c:out value="${row[0]}"/></td>
						<td><c:out value="${row[1]}"/></td>
					</tr>
				</c:forEach>
			</table>
	</body>
</html>

