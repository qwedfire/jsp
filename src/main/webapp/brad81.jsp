<%@page import="java.util.Locale"%>
<%@page import="java.util.Date"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
    
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		<%
// 			手工組合語系平常不用這樣做 示範用
			Locale locale=request.getLocale();
			String language=locale.getLanguage();
			String country=locale.getCountry();
			pageContext.setAttribute("lang",language+"_"+country);
		%>
<!-- 		request不是el的隱含物件 所以要利用pageContext取得 -->
		Country:<%=locale.getDisplayCountry() %><br>
		Country:${pageContext.request.locale.country}<br>
		Language:<%=locale.getDisplayLanguage() %><br>
		Language:${lang }<br>
		<hr>
		<fmt:setLocale value="${lang }"/>
<!-- 		資料夾名稱後面要固定寫法 -->
		<fmt:setBundle basename="resource"/>
		<h1><fmt:message key="companyName"></fmt:message></h1>
		<fmt:message key="hello"></fmt:message>,<fmt:message key="world"></fmt:message>
		<hr>
		<%
			Date now=new Date();
			out.print(now+"<br>");
			pageContext.setAttribute("now",now);
		%>
		<fmt:setTimeZone value="Asia/Taipei"/>
		Taipei:<fmt:formatDate value="${now }" pattern="yyyy-MM-dd HH:mm:ss"/>
		<hr>
		<fmt:setTimeZone value="Asia/Tokyo"/>
		Tokyo:<fmt:formatDate value="${now }" pattern="yyyy-MM-dd HH:mm:ss"/>
		<hr>
		<fmt:setTimeZone value="Europe/Berlin"/>
		Berlin:<fmt:formatDate value="${now }" pattern="yyyy-MM-dd HH:mm:ss"/>
		<hr>
		<fmt:setLocale value="de_de"/>
		<fmt:formatNumber value="213456789.123" type="currency" currencyCode="EUR"/>
	</body>
</html>