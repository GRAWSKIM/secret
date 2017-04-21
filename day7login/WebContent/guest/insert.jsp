<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.hb.util.MyOracle"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<%! 
	Connection conn;
	PreparedStatement pstmt;
	ResultSet rs;
%>
<body>
	<jsp:useBean id="bean" class ="com.hb.dto.Guest03Bean"></jsp:useBean>
	<jsp:setProperty property="name" name="bean"/>
	<jsp:setProperty property="pay" name="bean"/>
<%
	String sql = "insert into guest03 values (guest03_seq.nextval,?,sysdate,?)";
	try{
		conn=MyOracle.getConnection();
		pstmt= conn.prepareStatement(sql);
		pstmt.setString(1, bean.getName());
		pstmt.setInt(2, bean.getPay());
		rs=pstmt.executeQuery();
		
	}finally{
		
		if(rs!=null)rs.close();
		if(pstmt!=null)pstmt.close();
		if(conn!=null)conn.close();
	}
	response.sendRedirect("index.jsp?template=list");
%>
	

</body>
</html>