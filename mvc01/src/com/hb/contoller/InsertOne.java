package com.hb.contoller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hb.model.Guest01Dao;


@WebServlet("/insert.hb")
public class InsertOne extends HttpServlet {
	
    public InsertOne() {super();}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		String param1=request.getParameter("sabun").trim();
		String param2=request.getParameter("name").trim();
		String param3=request.getParameter("pay").trim();
		int sabun = Integer.parseInt(param1);
		int pay=Integer.parseInt(param3);
		String name= param2;
		
		//model
		Guest01Dao dao = new Guest01Dao();
		dao.insertOne(name,sabun,pay);
		
		//view
		response.sendRedirect("./index.hb");//sendredirect ½Ã "/" sms ip:port/
	}

}
