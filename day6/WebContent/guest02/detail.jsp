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
	private ResultSet rs;
%>
<body>
	<%
	int sabun =  Integer.parseInt(request.getParameter("sabun"));
	String sql = "select * from guest02 where sabun=?";
	Guest02Bean bean = new Guest02Bean();
	conn= myDb.getConnection();			
	try{
		pstmt = conn.prepareStatement(sql);
		pstmt.setInt(1,sabun);
		rs=pstmt.executeQuery();
		if(rs.next()){
			bean.setSabun(rs.getInt("sabun"));
			bean.setName(rs.getString("name"));
			bean.setNalja(rs.getDate("nalja"));
			bean.setPay(rs.getInt("pay"));
			bean.setLv2(rs.getInt("lv2"));
			bean.setLv3(rs.getInt("lv3"));
		}
	} finally{
		rs.close();
		pstmt.close();
		conn.close();
	}
	%>
	<h1>상세페이지</h1>
	<table width= "78%" border="1" cellspacing="0">
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
	</table>
	<p>
		<a href ="#">수정</a>
		<a href ="#">삭제</a>
		<a href ="reply.jsp?re=<%=bean.getLv1()%>&depth=<%=bean.getLv2()%>&ro=<%=bean.getLv3()%>">답글</a>
	</p>		
	
</body>
</html>