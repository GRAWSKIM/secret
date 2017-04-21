package com.hb.ex;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebServlet;

@WebServlet(urlPatterns="/hello")
public class ex03 extends MyServlet{

	@Override
	public void service(ServletRequest req, ServletResponse res)
			throws ServletException, IOException {
		res.setContentType("text/html");
		res.setCharacterEncoding("UTF-8");
		PrintWriter out= res.getWriter();
		out.print("<html>");
		out.print("<body>");
		out.print("<h1>page ex03</h1>");
		out.print("</body>");
		out.print("</html>");
		out.close();
		
		
	}

}
