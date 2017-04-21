package com.hb.user.controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebInitParam;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hb.user.model.UserDao;


@WebServlet(
		urlPatterns = { "/user/member.hb" }, 
		initParams = { 
				@WebInitParam(name = "driver", value = "com.mysql.jdbc.Driver"), 
				@WebInitParam(name = "url", value = "jdbc:mysql://localhost:3306/testdb"), 
				@WebInitParam(name = "user", value = "scott"), 
				@WebInitParam(name = "password", value = "tiger")
		})
public class JoinResult extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int result=0;
		request.setCharacterEncoding("UTF-8");
		String id=request.getParameter("id");
		String pw=request.getParameter("pw");
		String email=request.getParameter("email");
		
		String driver = getInitParameter("driver");
		String url = getInitParameter("url");
		String user = getInitParameter("user");
		String password = getInitParameter("password");
		
		try {
			UserDao dao= new UserDao(driver, url, user, password);
			result=dao.insertOne(id,pw,email);
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		if(result>0){
			request.setAttribute("id", id);
			request.getRequestDispatcher("/welcome.jsp").forward(request, response);
		}else{
			request.getRequestDispatcher("/back.jsp").forward(request, response);
		}
		
	}

}
