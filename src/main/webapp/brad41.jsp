<%@page import="tw.brad.api.Bike"%>
<%@ page language="java" contentType="text/html; charset=UTF8"
    pageEncoding="UTF-8"%>
<%
	Bike b1=(Bike)request.getAttribute("b1");
%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Brad</title>
	</head>
	<body>
		I am Brad41<br>
		<%b1.upSpeed();b1.upSpeed();b1.upSpeed(); %>
		<%=b1.getSpeed() %>
	</body>
</html>