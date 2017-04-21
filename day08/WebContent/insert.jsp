<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import = "java.sql.*,java.util.*,com.hb.util.MyDB,com.hb.javaBean.Guest03Bean"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<%!
	private Connection conn;
	private PreparedStatement pstmt;

%>
<body>
<jsp:useBean id="bean" class="com.hb.javaBean.Guest03Bean"></jsp:useBean>
<jsp:setProperty property="name" name="bean"/>
<jsp:setProperty property="pay"  name="bean"/>
<%
	String sql="insert into guest03 values(guest03_seq.nextval,?,sysdate,?)";
	int result=0;
	try{
		conn=MyDB.getConnection();
		pstmt=conn.prepareStatement(sql);
		pstmt.setString(1, bean.getName());
		pstmt.setInt(2, bean.getPay());
		result=pstmt.executeUpdate();
	}finally{
		
	}
	String url="list.jsp";
	if(result>0){
		url+="?result=1";
	}
	response.sendRedirect(url);
%>
</body>
</html>