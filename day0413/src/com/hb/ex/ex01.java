package com.hb.ex;

import java.io.IOException;

import javax.servlet.Servlet;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServlet;

public class ex01 extends HttpServlet implements Servlet {
	ServletConfig servletConf;

	@Override
	public void init(ServletConfig config) throws ServletException {
		System.out.println("servlet init()");
		
	}

	@Override
	public ServletConfig getServletConfig() {
		//getter
		return servletConf;
	}

	@Override
	public void service(ServletRequest req, ServletResponse res)
			throws ServletException, IOException {
		
		System.out.println("servlet service()");
	}

	@Override
	public String getServletInfo() {
		
		return "ver3.0 meanless information";
	}

	@Override
	public void destroy() {
		
		System.out.println("servlet destroy()");
	}

}
