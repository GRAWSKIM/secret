<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%@ include file = "templ/header.jspf" %> 
	<%@ include file = "templ/menu.jspf" %>
	<%
	String st_idx = request.getParameter("idx");
	int idx = Integer.parseInt(st_idx);
	String sql = "update lec_bbs set cnt =cnt+1 where idx = ?";
	
	try{
		Class.forName(driver);
		conn= DriverManager.getConnection(url, user, password);
		ptmt = conn.prepareStatement(sql);
		ptmt.setInt(1,idx);
		ptmt.executeUpdate();
	} finally{
		if(ptmt!=null)ptmt.close();
		if(conn!=null)conn.close();
	}
	sql = "select * from lec_bbs where idx=?";
	try{
		Class.forName(driver);
		conn= DriverManager.getConnection(url, user, password);
		ptmt = conn.prepareStatement(sql);
		ptmt.setInt(1,idx);
		rs = ptmt.executeQuery();
		if(rs.next()){  %>
		<h1>상세페이지</h1>
		<table>
		 <tr>
		 	<td>글쓴이</td>
		 	<td><%=rs.getString("wid") %></td>
		</tr>
			 <tr>
		 	<td>게시일</td>
		 	<td><%=rs.getString("nalja") %></td>
		</tr>
			 <tr>
		 	<td>조회수</td>
		 	<td><%=rs.getInt("cnt") %></td>
		</tr>
			 <tr>
		 	<td>내용</td>
		 	<td><pre><%=rs.getString("content") %></pre></td>
		</tr>
		</table>
		
		<%}%><% 
	} finally{
		if(rs!=null)ptmt.close();
		if(ptmt!=null)ptmt.close();
		
		if(conn!=null)conn.close();
	}
	%>
	<%@ include file = "templ/footer.jspf" %>
</body>
</html>