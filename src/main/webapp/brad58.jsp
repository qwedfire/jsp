<%@page import="tw.brad.api.BradUtils"%>
<%@ page language="java" contentType="text/html; charset=UTF8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="score">${BradUtils.createScore() }</c:set>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Brad</title>
	</head>
	<body>
		Score:${score }<hr>
		<!-- test再做判斷true||false -->
		<c:if test="${score>=50 }">ok</c:if><br>
		<c:if test="false">ok</c:if>
		<!-- 這裡沒有else只有iff的邏輯 -->
		<c:if test="true">ok</c:if><br>
		<c:if test="${score>=90 }">A</c:if><br>
		<c:if test="${score>=80 }">B</c:if><br>
		<c:if test="${score>=70 }">C</c:if><br>
		<c:if test="${score>=60 }">D</c:if><br>
		<c:if test="${score>=50 }">E</c:if><br>
		<c:if test="${score>=40 }">F</c:if><br>
		<hr>
		<!-- 分支結構 -->
		
<!--  			如果成立作這件事 類似switch  -->
<%-- 		<c:choose> --%>
<%-- 			<c:when test="${ score>=90}">A</c:when> --%>
<%-- 			<c:when test="${ score>=80}">B</c:when> --%>
<%-- 			<c:when test="${ score>=70}">C</c:when> --%>
<%-- 			<c:when test="${ score>=60}">D</c:when> --%>
<%-- 			<c:when test="${ score>=50}">E</c:when> --%>
<%-- 			<c:otherwise>F</c:otherwise> --%>
<%-- 		</c:choose> --%>
		<c:choose>
			<c:when test="${score >= 90 }">A</c:when>
			<c:when test="${score >= 80 }">B</c:when>
			<c:when test="${score >= 70 }">C</c:when>
			<c:when test="${score >= 60 }">D</c:when>
			<c:otherwise>E</c:otherwise>
		</c:choose>
	</body>
</html>