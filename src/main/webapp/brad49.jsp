<%@page import="tw.brad.api.BradUtils"%>
<%@ page language="java" contentType="text/html; charset=UTF8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Brad</title>
	</head>
	<body>
		Math.random()=><%=Math.random() %><br>
		Math.random()=>${Math.random() }<br>
		
		${BradUtils.sayYa()}<br>
		${BradUtils.sayYa("Brad")}<br>
		${BradUtils.sayYa(param.name)}<br>
<%-- 		<%=BradUtils.sayYa(param.name) %><br> --%>
		
	</body>
</html>