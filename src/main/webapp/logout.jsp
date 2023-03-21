<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
// 	全部取消
// 	session=null;
	session.invalidate();
	response.sendRedirect("brad83.html");
%>