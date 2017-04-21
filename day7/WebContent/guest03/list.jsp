<%@page import="com.hb.util.MyOracle"%>
<%@page import="com.hb.dto.Guest03Bean"%>
<%@ page import = "java.util.*,java.sql.*,com.hb.*" %>
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
	private ResultSet rs;
%>
<body>
<%
	String sql = "select * from guest03";
	ArrayList<Guest03Bean> list = new ArrayList<Guest03Bean>(); 
	try{
		conn= MyOracle.getConnection();
		pstmt=conn.prepareStatement(sql);
		
		rs = pstmt.executeQuery();
		
		while(rs.next()){
			Guest03Bean bean = new Guest03Bean();
			bean.setSabun(rs.getInt("sabun"));
			bean.setName(rs.getString("name"));
			bean.setNalja(rs.getTimestamp("nalja"));
			bean.setPay(rs.getInt("pay"));
			list.add(bean);
		}
	}finally{
		if(rs!=null)rs.close();
		if(pstmt!=null)pstmt.close();
		if(conn!=null)conn.close();
	}
	
	
%>
	<table width = "80%" border="1" cellspacing="0">
		<tr>
			<th>사번</th>
			<th>이름</th>
			<th>날짜</th>
			<th>금액</th>
		</tr>
		<%for(Guest03Bean bean:list){ %>
		<tr>
			<td><%=bean.getSabun() %></td>
			<td><a href = "main4.jsp?sabun=<%=bean.getSabun()%>"><%=bean.getName() %></a></td>
			<td><%=bean.getNalja() %></td>
			<td><%=bean.getPay() %></td>
		</tr>
		<%} %>
		
	</table>
</body>
</html>