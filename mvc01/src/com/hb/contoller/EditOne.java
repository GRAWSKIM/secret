package com.hb.contoller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hb.model.Guest01Dao;
import com.hb.model.Guest01Dto;


@WebServlet("/edit.hb")
public class EditOne extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
int sabun = Integer.parseInt(request.getParameter("sabun"));
		
		
		//
		Guest01Dao dao=new Guest01Dao();
		Guest01Dto bean = dao.selectOne(sabun);
		request.setAttribute("bean", bean);
		//
		RequestDispatcher rd = request.getRequestDispatcher("edit.jsp");
		rd.forward(request, response);
	}

}
