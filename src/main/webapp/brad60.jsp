<%@page import="java.util.Properties"%>
<%@ page language="java" contentType="text/html; charset=UTF8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:catch var="error">
<%
	Class.forName("com.mysql.cj.jdbc.Driver");
	Properties prop=new Properties();
	prop.put("user", "root");
	prop.put("password", "root");
	Connection conn=DriverManager.getConnection("jdbc:mysql://localhost/iii",prop);
	String sql="insert into cust(cname,tel,birthday)values(?,?,?)";
	PreparedStatement pstmt=conn.prepareStatement(sql);
	pstmt.setString(1,"ok");
	pstmt.setString(2,"0912-123456");
	pstmt.setString(3,"1999-01-01");
	int n=pstmt.executeUpdate();
	pageContext.setAttribute("n",n);
%>
</c:catch>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Brad</title>
	</head>
	<body>
		<c:if test="${!empty error }">Server busy</c:if>
		<c:choose>
			<c:when test="${n>0 }">ok</c:when>
			<c:otherwise>X</c:otherwise>
		</c:choose>
	</body>
</html>