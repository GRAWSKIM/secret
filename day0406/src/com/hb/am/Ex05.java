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
		System.out.println("Ȯ���� Ŀ���� Ȯ���� �����");
		System.out.println("xml���� ���� �ּ� ���������� ");
		System.out.println("������ ��ε� �ٲ� �� �ְ� Ȯ���� �׸��� ������ �� ���� ����� ������ �� �־ ���ȿ� �����ϴ�");
	}
}
