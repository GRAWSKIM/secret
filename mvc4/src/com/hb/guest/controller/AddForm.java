package com.hb.guest.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/guest/add.hb")
public class AddForm extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();
		String id="guest";
		if((Boolean)session.getAttribute("result")!=null){
			if((Boolean)session.getAttribute("result")){
				id=(String)session.getAttribute("id");
			}
		}
		request.setAttribute("user", id);
		request.getRequestDispatcher("/add.jsp").forward(request, response);
	}
}
