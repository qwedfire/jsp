<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String name=request.getParameter("name");
	if(name==null){
		name="Hello,world";
	}
%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Brad</title>
	</head>
	<body>
		<h1>Brad</h1>
		<hr>
		Hello,<%=name %>!
	</body>
</html>