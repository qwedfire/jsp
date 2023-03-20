<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<!DOCTYPE html>
<html>
	<sql:setDataSource
		driver="com.mysql.cj.jdbc.Driver"
		url="jdbc:mysql://localhost/iii"
		user="root"
		password="root"
	/>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
<!-- 	有連帶關係要包這一段(一次性的)transaction -->
		<sql:transaction>
			<sql:update>
				insert into cust(cname,tel,birthday) values(?,?,?)
				<sql:param>iiii</sql:param>
				<sql:param>123</sql:param>
				<sql:param>1999-01-01</sql:param>
			</sql:update>
			<sql:query var="rs">
				select last_insert_id() lastid
			</sql:query>
			${rs.rows[0].lastid }
			<sql:update>
				update cust set cname=? where id=?
				<sql:param>大便</sql:param>
				<sql:param>${rs.rows[0].lastid }</sql:param>
			</sql:update>
			
		</sql:transaction>
	</body>
</html>