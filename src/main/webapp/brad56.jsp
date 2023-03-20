<%@ page language="java" contentType="text/html; charset=UTF8"
    pageEncoding="UTF-8"%>
<%
	int b=(Integer)application.getAttribute("a");
	b++;
	//存在範圍為伺服器 只要不重啟就會一直存在(application)
	application.setAttribute("a",b); 
%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Brad</title>
	</head>
	<body>
		I am brad56<hr>
		a=${a }
	</body>
</html>