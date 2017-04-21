package com.hb.dto;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/MyXml.xml")
public class Ex01 extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("id");
		response.setContentType("text/xml; charset=UTF-8");
		response.setCharacterEncoding("UTF-8");
		PrintWriter out = response.getWriter();
		out.print("<?xml version=\"1.0\" encoding=\"UTF-8\"?>");
		out.print("<data>");
			out.print("<user>");
				out.print("<id>");
					out.print(id);
				out.print("</id>");
				out.print("<password>");
					out.print(1234);
				out.print("</password>");
				out.print("<name>");
					out.print("°ü¸®ÀÚ");
				out.print("</name>");
			out.print("</user>");
		out.print("</data>");
		out.close();
	}

}
