package tw.brad.eeit58;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Enumeration;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Brad03")
public class Brad03 extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//印出所有用戶端發送的資訊
		Enumeration<String> names=request.getHeaderNames();
		while(names.hasMoreElements()) {
			String name=names.nextElement();
			String value=request.getHeader(name);
			System.out.printf("%s: %s\n",name,value);
		}
	}

}
