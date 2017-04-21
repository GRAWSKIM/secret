package com.hb.am;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Ex05 extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		System.out.println("확장자 커스텀 확장자 맘대로");
		System.out.println("xml에서 다중 주소 매핑은가능 ");
		System.out.println("파일의 경로도 바꿀 수 있고 확장자 그리고 파일의 수 까지 맘대로 보여줄 수 있어서 보안에 용이하다");
	}
}
