<%@ page language="java" contentType="text/html; charset=UTF8"
    pageEncoding="UTF-8"%>
<%@ page errorPage="brad33.jsp" %> 
<%
	String rows=request.getParameter("rows");
	String start=request.getParameter("start");
	String cols=request.getParameter("cols");
%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Brad</title>
</head>
	<body>
		<table border="1" width="100%">
				<%
				/*
					int ROWS=rows==null?3:Integer.parseInt(rows);
					int START=start==null?1:Integer.parseInt(start);
					int COLS=cols==null?4:Integer.parseInt(cols);
					for(int k=0;k<ROWS;k++){
						out.print("<tr>");
						for(int i=START;i<=(START+COLS-1);i++){
							int newi=i+COLS*k;
							out.print("<td>");
							for(int j=1;j<10;j++){
								out.print(String.format("%dx%d=%d<br>",newi,j,newi*j));
							}
							out.print("</td>");
						}
						out.print("</tr>");
					}*/
					int ROWS = rows==null?2:Integer.parseInt(rows);
					int START = start==null?2:Integer.parseInt(start);
					int COLS = cols==null?4:Integer.parseInt(cols);
				
					for (int k=0; k<ROWS; k++){
						out.print("<tr>");
						for (int j=START; j<=(START+COLS-1); j++){
							int newj = j + k*COLS;
							out.print("<td>");
							for (int i=1; i<=9; i++){
								int r = newj * i;
								out.print(String.format("%d x %d = %d<br />", newj, i, r));
							}
							out.print("</td>");
						}
						out.print("</tr>");
					}
				%>
		</table>
	</body>
</html>