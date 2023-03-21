<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib tagdir="/WEB-INF/tags" prefix="brad" %>
<%@ taglib uri="/WEB-INF/mytags.tld" prefix="iii" %>
<!-- 創建自己的jar檔案 -->
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		<brad:test1></brad:test1>
		<brad:test2></brad:test2>
		<hr>
		<table border="1" width="100%">
			<tr>
				<th>Name</th>
				<th>Price</th>
			</tr>
			<brad:test3 pname="牛匹囉老弟" price="231231"/>
			<brad:test3 pname="牛匹囉兄弟" price="231231"/>
		</table>
		<hr>
		<iii:lottery />
	</body>
</html>