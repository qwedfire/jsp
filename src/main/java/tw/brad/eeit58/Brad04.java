package tw.brad.eeit58;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Enumeration;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Brad04")
public class Brad04 extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("Brad04");
		Enumeration<String>params=request.getParameterNames();
		while(params.hasMoreElements()) {
			String param=params.nextElement();
			String value=request.getParameter(param);
			System.out.printf("%s : %s, \n",param,value);
			System.out.println("-----------");
		}
		System.out.println("Brad04:doGet():finish");
	}

}
