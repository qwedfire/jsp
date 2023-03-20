package tw.brad.eeit58;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Enumeration;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Brad07")
public class Brad07 extends HttpServlet {
	//method =get
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doGet");
		doPost(request,response);
	}
	//method =post
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doPost");
		request.setCharacterEncoding("UTF-8"); //request設定編碼格式
		String account=request.getParameter("account");
		String password=request.getParameter("password");
		String gender=request.getParameter("gender");
		String zipcode=request.getParameter("zipcode");
		//這裡不能用getParameter因為只會選一個要改用
//		String habbit=request.getParameter("habbit");
		String habbits[]=request.getParameterValues("habbit");

		response.setContentType("text/html;charset=UTF-8");		
		PrintWriter out=response.getWriter();
		out.printf("%s :%s :%s :%s <br>\n", account,password,gender,zipcode);
		for(String habbit:habbits) {
			out.print(habbit);	
		}
		response.flushBuffer();
	}

}
