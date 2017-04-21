<%@page import="com.hb.dto.Guest02Bean"%>
<%@page import="com.hb.util.myDb"%>
<%@page import="java.sql.*"%>
<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ tagid uri="" prefix-"jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<%!
	private Connection conn;
	private PreparedStatement pstmt;
%>
<body>
	<jsp:useBean id = "bean" class= "com.hb.dto.Guest02Bean">
	<jsp:setProperty property ="name" name = "bean"/>
	<jsp:setProperty property ="pay" name = "bean"/>
	<jsp:setProperty property ="lv1" name = "bean"/>
	<jsp:setProperty property ="lv2" name = "bean"/>
	<jsp:setProperty property ="lv3" name = "bean"/>
	
	<!-- <jsp:setProperty property ="*" name = "bean"/> 모든 속성이 같으면 한번에 처리할수도이싸따 -->
	</jsp:useBean>
<%		
	/*String name = request.getParameter("name");
	int pay = Integer.parseInt(request.getParameter("pay"));
	int re = Integer.parseInt(request.getParameter("re"));
	int depth = Integer.parseInt(request.getParameter("depth"));
	int ro = Integer.parseInt(request.getParameter("ro"));
	
	Guest02Bean bean = new Guest02Bean();
	*/
	String sql = "insert into guest02 values (guest02_seq.nextval,?,sysdate,?,?,?,?)";
	
	String sql2 = "update guest02 set lv3 = lv3+1 where lv1=? and lv3>=?";
	
	conn= myDb.getConnection();
	
	try{
		pstmt= conn.prepareStatement(sql2);
		pstmt.setInt(1,bean.getLv1());
		pstmt.setInt(2,bean.getLv3());
		pstmt.executeUpdate();
		
		pstmt= conn.prepareStatement(sql);
		pstmt.setString(1,bean.getName());
		pstmt.setInt(2,bean.getPay());
		pstmt.setInt(3,bean.getLv1());
		pstmt.setInt(4,bean.getLv2()+1);
		pstmt.setInt(5,bean.getLv3());
		pstmt.executeUpdate();
	}finally{
		pstmt.close();
		conn.close();
	}
	response.sendRedirect("list.jsp");
%>
</body>
</html>