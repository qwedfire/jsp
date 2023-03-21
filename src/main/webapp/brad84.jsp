<%@page import="tw.brad.api.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String account=request.getParameter("account");
	String password=request.getParameter("password");
	if(account.equals("brad")&&password.equals("123")){
		Member member=new Member();
		member.setId(1);
		member.setAccount("11");
		member.setRealname("Brad B");
		session.setAttribute("member",member);
		response.sendRedirect("brad85.jsp");
	}else{
		session.invalidate();
		response.sendRedirect("brad83.html");
	}
%>