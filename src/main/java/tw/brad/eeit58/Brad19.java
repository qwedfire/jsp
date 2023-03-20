package tw.brad.eeit58;

import java.awt.Color;
import java.awt.Graphics2D;
import java.awt.image.BufferedImage;
import java.io.IOException;
import java.io.OutputStream;

import javax.imageio.ImageIO;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Brad19
 */
@WebServlet("/Brad19")
public class Brad19 extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		double rate=20;
		int w=400,h=20;
		double rate=Double.parseDouble(request.getParameter("rate"));
		//輸出內容為影像
		response.setContentType("image/jpeg"); 
		//處理一個可以畫圖的東西
		BufferedImage img=new BufferedImage(w, h, BufferedImage.TYPE_INT_RGB);
		Graphics2D g2d=img.createGraphics();
		g2d.setColor(Color.yellow);
		g2d.fillRect(0, 0, w, h);
		g2d.setColor(Color.pink);
		g2d.fillRect(0,0,(int	)(w*rate/100.0),h);
		//取得一個串流
		OutputStream ops=response.getOutputStream();
		ImageIO.write(img, "jpeg", ops);
		response.flushBuffer();
	}
}
