<%@page import="java.util.HashMap"%>
<%@page import="java.util.LinkedList"%>
<%@ page language="java" contentType="text/html; charset=UTF8"
    pageEncoding="UTF-8"%>
<%
	String var1[]={"Brad","Tom","Gray","Tony"};
	//pageContext.setAttribute("var1",var1);
	String var2[]={"Brad2","Tom2","Gray2","Tony2"};
	//request.setAttribute("var1",var2);
	String var3[]={"Brad3","Tom3","Gray3","Tony3"};
	//session.setAttribute("var1",var3);
	String var4[]={"Brad4","Tom4","Gray4","Tony4"};
	application.setAttribute("var1",var4);
	
	LinkedList<String> list=new LinkedList<>();
	list.add("Brad5");list.add("Tom5");list.add("Gray5");list.add("Tony5");
	pageContext.setAttribute("list",list); //處理方式跟linkedlist一樣
	HashMap<String,String>map=new HashMap<>();
	map.put("user1","Brad6");
	map.put("user2","Tom6");
	map.put("user3","Gary6");
	map.put("user4","Tony6");
	map.put("user5","Kevin6");
	pageContext.setAttribute("map",map); //輸入這串才可以在下面存取
%> 
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Brad</title>
	</head>
	<body>
		var1[0]=${var1[0] }<br>
		var1[0]=${pageScope.var1[0] }<br>
		var1[0]=${requestScope.var1[0] }<br>
		var1[0]=${sessionScope.var1[0] }<br>
		var1[0]=${applicatonScope.var1[0] }<br>
		list.get(1)=${list[1] }<br>
		list.get(1)=${list[param.i] }<br> <!-- i=1 -->
		map.get("user3")=${map["user3"] }<br>
		map.get("user2")=${map[param.j] }<br> <!-- j=user1 -->
		map.get("user4")=${map.user4 }<br> <!-- 可以視為map裡面的物件所以可以用.取得 -->
		${10+3 }
		${param.x+param.y } <!-- x=1&y=2 -->
		
		
	</body>
</html>