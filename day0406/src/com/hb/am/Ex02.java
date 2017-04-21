package com.hb.am;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Ex02 extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		String id=req.getParameter("id");
		System.out.println("id="+id);
	}
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		String id=req.getParameter("id");
		System.out.println("id case in method type is post="+id);
		
		
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
		out.println("<h1>ID:"+id+"</h1>");
		out.println("<a href = \"ex03.html\">link</a>");
		out.println("<a href = \"/guest/ex04.jsp\">ex04</a>");
		
		out.println("</body>");
		out.println("</html>");
		out.close();
	}
}
