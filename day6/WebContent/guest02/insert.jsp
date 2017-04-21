<%@page import="com.hb.dto.Guest02Bean"%>
<%@page import="com.hb.util.myDb"%>
<%@page import="java.sql.*"%>
<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
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
	<jsp:setProperty property="name" name="bean"/>
	<jsp:setProperty property="pay" name="bean"/>
	</jsp:useBean>
<%	
	
	String param1 = request.getParameter("name");
	String param2 = request.getParameter("pay");
	
	String name = param1;
	int pay = Integer.parseInt(param2);
	int result = 0;
	String sql = "insert into guest02 values (guest02_seq.nextval,?,sysdate,?,guest02_seq.currval,0,0)";
	
	conn = myDb.getConnection();
	try{
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, bean.getName());
		pstmt.setInt(2, bean.getPay());
		result=pstmt.executeUpdate();
	} finally{
		pstmt.close();
		conn.close();		
	}	
	response.sendRedirect("list.jsp?msg="+result);
%>
</body>
</html>