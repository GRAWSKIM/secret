<%@ page import = "java.sql.*,com.hb.util.MyOracle" %>
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
<jsp:useBean id="login" class="com.hb.dto.LoginBean"></jsp:useBean>
<jsp:setProperty property="name" name="login"/>
<jsp:setProperty property="pay" name="login"/>
<%
	String sql = "select * from guest03 where name = ? and pay = ?";
	try{
		conn=MyOracle.getConnection();
		pstmt=conn.prepareStatement(sql);
		pstmt.setString(1,login.getName());
		pstmt.setInt(2,login.getPay());
		rs = pstmt.executeQuery();
		if(rs.next()){
			login.setResult(rs.getInt(1));
		}
	}finally{
		if(rs!=null)rs.close();
		if(pstmt!=null)pstmt.close();
		if(conn!=null)conn.close();
	}
		if(login.getResult()>0){%>
			
			

<h1><jsp:getProperty property="name" name = "login"/>님이 로그인됨</h1>
		<% }else{%>
		<h1>로그인 실패</h1>
<%} %>
</body>

</html>