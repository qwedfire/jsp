<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	String account=(String)request.getParameter("account");
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection conn=DriverManager.getConnection("jdbc:mysql://localhost/iii","root","root");
	String sql="SELECT*FROM member WHERE account =?";
	PreparedStatement pstmt=conn.prepareStatement(sql);
	pstmt.setString(1,account);
	ResultSet rs=pstmt.executeQuery();
	if(rs.next()){
		out.println("Account EXIST");
	}
%>