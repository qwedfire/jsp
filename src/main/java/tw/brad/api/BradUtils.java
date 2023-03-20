package tw.brad.api;

import java.io.BufferedReader;
import java.io.FileReader;

public class BradUtils {
	public static String loadView(String view) throws Exception{
		String viewFile=
			String.format(
					"E:\\Eclipse\\Web58\\src\\main\\webapp\\views\\%s.html", 
					view);
		FileReader reader=new FileReader(viewFile);
		BufferedReader br=new BufferedReader(reader);
		String line=null;StringBuffer sb=new StringBuffer();
		while((line=br.readLine())!=null) {
			sb.append(line);
		}
		return sb.toString();
	}
	public static String sayYa() {
		return "ya";
	}
	public static String sayYa(String name) {
		return String.format("Ya!%s",name);
	}
	public static String calc(String x,String y,String op) {
		try {
			int intX=Integer.parseInt(x);
			int intY=Integer.parseInt(y);
			int r=0,mod=0;
			switch(op) {
			case "1":
				r=intX+intY;
				return r+"";
			case "2":
				r=intX-intY;
				return r+"";
			case "3":
				r=intX*intY;
				return r+"";
			case "4":
				r=intX/intY;
				mod=intX%intY;
				return r+"..."+mod;
			}
		}catch(Exception e) {
			return "";
		}
		return "";
	}
	public static int createScore() {
		return (int)(Math.random()*101);
	}
	public static int nextPage(String page,String pages) {
		int intPages=(int)Double.parseDouble(pages);
		int intPage=Integer.parseInt(page);
		return intPage>=intPages?intPage:intPage+1;
	}
	public static String encPassword(String plainPassword) {
		return BCrypt.hashpw(plainPassword, BCrypt.gensalt());
	}
}
