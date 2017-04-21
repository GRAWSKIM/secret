<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" import = "java.util.Date"%>
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
		String sub = request.getParameter("sub");
		String wid = request.getParameter("wid");
		String content = request.getParameter("content");
		content.replace("\n", "<br>");	
		Date date = new Date();
		SimpleDateFormat sim = new SimpleDateFormat("yyyy-MM-dd");
	
		String sql ="insert into lec_bbs (idx,sub,wid,content,nalja)";
		sql += "values (lec_bbs_seq.nextval,?,?,?,?)";
	 	try{
	 		Class.forName(driver);
	 		conn = DriverManager.getConnection(url,user,password);
	 		ptmt = conn.prepareStatement(sql);
	 		ptmt.setString(1,sub);
	 		ptmt.setString(2,wid);
	 		ptmt.setString(3,content);
	 		ptmt.setString(4,sim.format(date));
	 		result = ptmt.executeUpdate();
	 	}finally{
	 		if(ptmt!=null)ptmt.close();
	 		if(conn!=null)conn.close();
	 		if(result>0)response.sendRedirect("list.jsp");
	 		else response.sendRedirect("add.jsp");	
	 	}
	%>
	<%@ include file = "templ/footer.jspf" %>
</body>
</html>