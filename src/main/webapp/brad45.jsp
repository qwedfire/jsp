<%@page import="tw.brad.api.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF8"
    pageEncoding="UTF-8"%>
<%
	Member member1=new Member(1,"brad","Brad","1999-01-01");
%>
<jsp:useBean id="member2" class="tw.brad.api.Member">無傳參數建構式</jsp:useBean> 
<jsp:setProperty property="id" name="member2" value="2"/>
<jsp:setProperty property="account" name="member2" value="peter"/>
<jsp:setProperty property="realname" name="member2" value="Peter"/>
<jsp:setProperty property="birthday" name="member2" value="1998-01-01"/>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Brad</title>
	</head>
	<body>
		<hr>
		Member1:
		<%=member1.getId() %>|<%=member1.getAccount() %>|
		<%=member1.getRealname() %>|<%=member1.getBirthday() %>|
		${member2.id }
		<hr>
		Member2:
		<%=member2.getId() %>|<%=member2.getAccount() %>|
		<%=member2.getRealname() %>|<%=member2.getBirthday() %>
		<hr>
		Member1:
<%-- 		<jsp:getProperty property="id" name="member1"/>| --%>
<%-- 		<jsp:getProperty property="account" name="member1"/>| --%>
<%-- 		<jsp:getProperty property="realname" name="member1"/>| --%>
<%-- 		<jsp:getProperty property="birthday" name="member1"/>| --%>
		<hr>
		Member2:
		<jsp:getProperty property="id" name="member2"/>|
		<jsp:getProperty property="account" name="member2"/>|
		<jsp:getProperty property="realname" name="member2"/>|
		<jsp:getProperty property="birthday" name="member2"/>|
	</body>
</html>