<%@page import="com.hb.pm.JavaBean"%>
<%@page import="com.hb.pm.sawon"%>
<%@page import="java.util.ArrayList"%>
<%@ page import = "com.hb.pm.OraDb,java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<%!
	ResultSet rs ;
	PreparedStatement pstmt;
%>
<body>
<%
	ArrayList<JavaBean> list = new ArrayList<JavaBean>();
	String sql = "select * from lec_emp";
	Connection conn = OraDb.getConnection();
	try{
	pstmt=conn.prepareStatement(sql);
	rs = pstmt.executeQuery();
	
	while(rs.next()){
		JavaBean bean = new JavaBean();
		bean.setsabun(rs.getInt("sabun"));
		bean.setname(rs.getString("name"));
		bean.setNalja(rs.getDate("nalja"));
		bean.setPay(rs.getInt("pay"));
		list.add(bean);
	}
	}finally{
		if(rs!=null)rs.close();
		if(pstmt!=null)pstmt.close();
		if(conn!=null)conn.close();
	}
%>
	<h1>리스트페이지</h1>
		<table>
			<tr>
				<th>사번</th>
				<th>이름</th>
				<th>날짜</th>
				<th>금액</th>
			</tr>
			<%for(int i =0;i<list.size();i++ ) {
			JavaBean bean = list.get(i);%>
			<tr>
				<th><%=bean.getsabun() %></th>
				<th><%=bean.getName() %></th>
				<th><%=bean.getNalja() %></th>
				<th><%=bean.getPay() %></th>
			</tr>
			<%} %>
		</table>
</body>
</html>