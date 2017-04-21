<%@page import="com.hb.util.MyOracle"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import = "java.sql.*,com.hb.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">

<title>Insert title here</title>

<%!
	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;
%>
</head>
<body>
<jsp:useBean id="bean" class="com.hb.dto.Guest03Bean" scope="request"></jsp:useBean>
<jsp:setProperty property="sabun" name = "bean"/>

<%
	String sql = "select * from guest03 where sabun = ?";
	try{
		conn= MyOracle.getConnection();
		pstmt=conn.prepareStatement(sql);
		pstmt.setInt(1,bean.getSabun());
		rs=  pstmt.executeQuery();
		if(rs.next()){
			bean.setName(rs.getString("name"));
			bean.setNalja(rs.getTimestamp("nalja"));
			bean.setPay(rs.getInt("pay"));
		}
	}finally{
		if(rs!=null)rs.close();
		if(pstmt!=null)pstmt.close();
		if(conn!=null)conn.close();
	}
%>
	<table width="76%" border = "1" cellspacing="0">
		<tr>
			<td>사번</td>
			<td><%=bean.getSabun() %></td>		
		</tr>
		<tr>
			<td>이름</td>
			<td><%=bean.getName() %></td>		
		</tr>
		<tr>
			<td>날짜</td>
			<td><%=bean.getNalja() %></td>		
		</tr>
		<tr>
			<td>급여</td>
			<td><%=bean.getPay() %></td>		
		</tr>
		<tr>
		<td>
		<a href=""></a>
		</td>
		</tr>
	</table>
</body>
</html>