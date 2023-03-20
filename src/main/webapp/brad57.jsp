<%@ page language="java" contentType="text/html; charset=UTF8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!-- int x=10; 下面這一行不只這樣還有幫忙設定好屬性 pageContext.setAttribute("x",10)  -->
<c:set var="x" value="10"></c:set>
<!-- 相當於request.setAttribute("x",12) -->
<c:set var="x" value="12" scope="request"></c:set>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Brad</title>
	</head>
	<body>
		x=${x }<br>
		x=${requestScope.x }<br>
		<%="Hello,World" %><br>
		<c:out value="Hello,World"></c:out><br>
		x=<c:out value="${x }"></c:out><br>
		<!-- url沒給參數的話用default可以給預設值 -->
		i=<c:out value="${param.i }" default="no value"></c:out><br>
		<hr>
		
		<jsp:useBean id="member" class="tw.brad.api.Member"></jsp:useBean>
		<c:set target="${member }"property="id">123</c:set>
		<c:set target="${member }"property="account">Brad</c:set>
		<c:set target="${member }"property="realname">BradChao</c:set>
		<c:set target="${member }"property="birthday">1999-01-01</c:set>
		${member }<br>
		<c:remove var="member"/>
		${member }<br>
	</body>
	
</html>