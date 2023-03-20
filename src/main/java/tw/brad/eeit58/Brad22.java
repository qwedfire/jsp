//package tw.brad.eeit58;
//
//import java.io.IOException;
//import java.sql.Connection;
//import java.sql.DriverManager;
//import java.sql.PreparedStatement;
//import java.sql.ResultSet;
//import java.util.Properties;
//
//import javax.servlet.ServletException;
//import javax.servlet.annotation.WebServlet;
//import javax.servlet.http.HttpServlet;
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;
//
//import tw.brad.api.BCrypt;
//
///**
// * Servlet implementation class Brad22
// */
//@WebServlet("/Brad22")
//public class Brad22 extends HttpServlet {
//	private static final int CHECK_OK=1;
//	private static final int CHECK_ERROR_ACCOUNT=2;
//	private static final int CHECK_ERROR_PASSWORD=3;
//	private static final int CHECK_EXCEPTION=4;
//	
//	private Connection conn;
//	public Brad22() {
//		Properties prop=new Properties();
//		prop.put("user", "root");
//		prop.put("password", "root");
//		try {
//			Class.forName("com.mysql.cj.jdbc.Driver");
//			conn=DriverManager.getConnection("jdbc:mysql://localhost/iii",prop);
//			System.out.println("OK");
//		}catch(Exception e) {
//			System.out.println(e);
//		}
//	}
////	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {  }
////	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {	}
//	@Override
//	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
////		super.service(req, resp); 
////		System.out.println(req.getMethod());
////		if(!req.getMethod().equals("POST")) {	}
//		req.setCharacterEncoding("UTF-8");
//		String account=req.getParameter("account");
//		String password=req.getParameter("password");
//		
//		int result=checkAccount(account,password);
//		switch(result) {
//			case CHECK_OK:
//				resp.sendRedirect("brad23.html");
//				break;
//			case CHECK_EXCEPTION:
//				resp.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR,"Server Busy");
//				break;
//			case CHECK_ERROR_ACCOUNT:
//				resp.sendRedirect("brad22.html");
//				break;
//			case CHECK_ERROR_PASSWORD:
//				resp.sendRedirect("brad22.html");
//				break;
//		}
//	}
//	private int checkAccount(String account,String password) {
//		try {
//			PreparedStatement pstmt=conn.prepareCall(sql);
//			pstmt.setString(1, account);
//			ResultSet rs=pstmt.executeQuery();
//			if(rs.next()) {
//				String hashPassword=rs.getString("password");
//				if(BCrypt.checkpw(password,hashPassword)) {
//					return CHECK_OK;
//				}else {
//					return CHECK_EXCEPTION;
//				}
//			}
//		}catch(Exception e) {
//			
//		}
//		String sql="";
//		return CHECK_OK;
//	}
//}
