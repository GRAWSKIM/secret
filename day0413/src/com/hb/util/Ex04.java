package com.hb.util;

import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.net.URL;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/data05.json")
public class Ex04 extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private final String add_xml="http://samples.openweathermap.org/data/2.5/weather?q=London&mode=xml&appid=b1b15e88fa797225412429c1c50c122a1";	
	private final String add_json="http://samples.openweathermap.org/data/2.5/weather?q=London&appid=b1b15e88fa797225412429c1c50c122a1";
	private final String add_html="http://samples.openweathermap.org/data/2.5/weather?q=London&mode=html&appid=b1b15e88fa797225412429c1c50c122a1";
	private final String add_etc="http://run.plnkr.co/plunks/v8xyYN64V4nqCshgjKms/data-1.json";
       


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		URL me = new URL(add_xml);
		InputStream is = me.openStream();
		
		response.setContentType("text/xml; charset=UTF-8");
		response.setCharacterEncoding("UTF-8");
		String msg="";
		PrintWriter out = response.getWriter();
		int by;
		while((by=is.read())!=-1){
			System.out.print((char)by);
			msg += (char)by;
		}
		out.print(msg);
		is.close();
		out.close();
 	}

}
