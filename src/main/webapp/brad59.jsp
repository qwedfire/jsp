<%@ page language="java" contentType="text/html; charset=UTF8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String names[]={"Brad","Tony","Gary","Tom","Amy"};
	pageContext.setAttribute("names", names);
%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Brad</title>
	</head>
	<body>
		<table border="1" width="100%">
			<tr>
				<th>Index</th>
				<th>Name </th>
				<td>Count</td>
				<td>First</td>
				<td>Last</td>
			</tr>
			<!-- 尋訪names -->
			<c:forEach items="${names }" var="name" varStatus="status">
				<tr>
					<td>${status.index }</td>
					<td>${name }</td>
					<td>${status.count }</td>
					<td>${status.first }</td>
					<td>${status.last }</td>
				</tr>
			</c:forEach>
		</table>
	</body>
</html>