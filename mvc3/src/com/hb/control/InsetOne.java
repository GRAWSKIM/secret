package com.hb.control;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hb.model.Guest04Dao;

@WebServlet("/insert.hb")
public class InsetOne extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		String[] params= new String[3];
		params[0] = req.getParameter("name").trim();
		params[1] = req.getParameter("sub").trim();
		params[2] = req.getParameter("pay").trim();
		
		for(int i =0;i<params.length;i++){
			if(params[i].equals("")){
				String msg="<h1>스크립트 공격</h1>";
				resp.getWriter().print(msg);;
				return;
			}
		}
		
		String name =params[0];
		String sub =params[1];
		int pay = Integer.parseInt(params[2]);
		
		Guest04Dao dao= new Guest04Dao();
		int cnt = 0;
		try {
			cnt = dao.insertOne(name,sub,pay);
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		if(cnt>0){
			resp.sendRedirect("index.hb");
		}else{
			resp.setContentType("text/html;charset=UTF-8");
			resp.setCharacterEncoding("UTF-8");
			String msg="<script type=\"text/javascript\">";
			msg+="window.history.back()";
			msg+="<script>";
			resp.getWriter().print(msg);
		}
		}
}
