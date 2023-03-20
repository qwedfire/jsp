
<%@page import="org.json.JSONObject"%>
<%@page import="org.json.JSONArray"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	request.setCharacterEncoding("UTF-8");
	String key=(String)request.getParameter("key");
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection conn=DriverManager.getConnection("jdbc:mysql://localhost/iii","root","root");
	PreparedStatement pstmt;
	String sql="SELECT*FROM food";
	if(key!=null){
		sql+=" WHERE name LIKE ? OR addr like ? OR  tel LIKE ?";
		pstmt=conn.prepareStatement(sql);
		pstmt.setString(1,"%"+key+"%"); //第一個問號是什麼
		pstmt.setString(2,"%"+key+"%");
		pstmt.setString(3,"%"+key+"%");
	}else{
		pstmt=conn.prepareStatement(sql);
	}
	//執行
	ResultSet rs=pstmt.executeQuery();
	JSONArray root=new JSONArray();
	//當rs有下一個
	while(rs.next()){
		JSONObject obj=new JSONObject();
		//通訊協定要一模一樣"id"  後面參數為資料庫的欄位
		obj.put("id", rs.getString("id"));
		obj.put("name", rs.getString("name"));
		obj.put("addr", rs.getString("addr"));
		obj.put("tel", rs.getString("tel"));
		obj.put("city", rs.getString("city"));
		obj.put("town", rs.getString("town"));
		root.put(obj);
	}
	out.print(root.toString().trim());
%>