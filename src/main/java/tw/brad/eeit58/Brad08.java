package tw.brad.eeit58;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

@WebServlet("/Brad08")
@MultipartConfig(
		location="E:\\Eclipse\\Web58\\src\\main\\webapp\\upload"
		) //他會處理這樣的multipart 一定要加
public class Brad08 extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8"); //設定編碼 意義不大
		Part part=request.getPart("upload"); //找到name名字 找參數的方法
		String name=part.getName();
		String sname=part.getSubmittedFileName();
		long size=part.getSize();
		String type=part.getContentType();
		System.out.printf("%s :%s :%s :%d\n",name,sname,type,size);
		part.write(sname);
	}

}
