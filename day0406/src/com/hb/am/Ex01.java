package com.hb.am;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Ex01 extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		System.out.println("웹페이지를 이곳에 출력");
		
		resp.setContentType("text/html/ charset=UTF-8");
		resp.setCharacterEncoding("UTF-8");
		
		PrintWriter out=resp.getWriter();
		out.println("메세지 출력");
		out.println("<!doctype html>");
		out.println("<html>");
		out.println("<head>");
		out.println("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=EUC-KR\">");
		out.println("</head>");
		out.println("<body>");
		out.println("<form action=\"ex02.html\" method=\"POST\">");
		out.println("<p>");
		out.println("<label>id:</label>");
		out.println("<input type=\"text\" name=\"id\"/>");
		out.println("</p>");
		out.println("<p>");
		out.println("<input type=\"submit\" value=\"send\"/>");
		out.println("</p>");
		out.println("</form>");
		out.println("<h1>sadsa</h1>");
		out.println("</body>");
		out.println("</html>");
		out.close();
//		out.println("<!doctype html><html><head>");
//		out.println("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=EUC-KR\">");
//		out.println("</head><body>");
//		out.println("</body></html>");
	}
}
