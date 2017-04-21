package com.hb.ex;

import java.io.IOException;

import javax.servlet.Servlet;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

public class ex02 implements Servlet{
	ServletConfig servletConf;

	@Override
	public void init(ServletConfig config) throws ServletException {
		System.out.println(" ex02 servlet init()");
		
	}

	@Override
	public ServletConfig getServletConfig() {
		//getter
		return servletConf;
	}

	@Override
	public void service(ServletRequest req, ServletResponse res)
			throws ServletException, IOException {
		
		System.out.println("ex02 servlet service()");
	}

	@Override
	public String getServletInfo() {
		
		return "ver3.0 meanless information";
	}

	@Override
	public void destroy() {
		
		System.out.println(" ex02 servlet destroy()");
	}

}
