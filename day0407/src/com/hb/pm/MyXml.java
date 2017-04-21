package com.hb.pm;

import java.io.File;
import java.io.IOException;
import java.io.PrintStream;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



public class MyXml extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		
		File file = new File("C:\\ee\\day0407\\WebContent\\imgs\\list");
		String[] fl= file.list();
		
		
		resp.setContentType("text/json");
		resp.setCharacterEncoding("UTF-8");	
		
		PrintWriter out = resp.getWriter();
		out.print("{\"data\":[");
		for(int i =0;i<fl.length;i++){
			File tmp=new File("C:\\ee\\day0407\\WebContent\\imgs\\list\\"+fl[i]);
			if(i!=0)out.print(",");
			out.print("{\"src\":\""+fl[i]+"\",\"size\":\""+tmp.length()+"\"}");
			
		}
		
		
		
		out.print("]}");
		out.close();
		
	}
	
}


