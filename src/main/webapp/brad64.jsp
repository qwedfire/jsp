<%@page import="tw.brad.api.*"%>
<%@ page language="java" contentType="text/html; charset=UTF8"
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
	<c:if test="${!empty param.editid }">
		<sql:query var="rs">
			select*from member where id=?
			<sql:param>${param.editid }</sql:param>
		</sql:query>
	</c:if>
	<c:if test="${!empty param.updateid }">
		<sql:update>
			update member set account=?,realname=?,birthday=? where id=?
			<sql:param>${param.account }</sql:param>
			<sql:param>${param.realname }</sql:param>
			<sql:param>${param.birthday }</sql:param>
			<sql:param>${param.updateid }</sql:param>
		</sql:update>
		<c:redirect url="brad62.jsp"></c:redirect>
	</c:if>
	
	<head>
		<meta charset="UTF-8">
		<title>Brad</title>
	</head>
	<body>
		Edit Page<hr>
		<form method="post">
			<input type="hidden" name="updateid" value="${rs.rows[0].id }">
			Account:<input type="text" name="account" value="${rs.rows[0].account }"><br>
			Realname:<input type="text" name="realname" value="${rs.rows[0].realname }"><br>
			Birthday:<input type="date" name="birthday" value="${rs.rows[0].birthday }"><br>
			<input type="submit" value="Edit">
		</form>
	</body>
</html>