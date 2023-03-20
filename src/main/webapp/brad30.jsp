<%@ page language="java" contentType="text/html; charset=UTF8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Brad</title>
</head>
	<body>
		<h1>Brad</h1>
		<hr>
		<% //java程式寫在這裡面
			out.print("Hello,world");
		%>
		<hr>
		<%
			int lottery=(int)(Math.random()*49+1);
			out.print(lottery);
		%>
		<hr>
		<% 	//變數是活在整個頁面中的
			out.print(lottery);
		%>
		<hr>
		<%=	//變數是活在整個頁面中的
			lottery
		%>
	</body>
</html>