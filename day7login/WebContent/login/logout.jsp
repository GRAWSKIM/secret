<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<jsp:useBean id = "login" class="com.hb.dto.LoginBean" scope="session"></jsp:useBean>
<%
	login.setResult(0);
	login.setName("guest");
	response.sendRedirect("/day7login/index.jsp");
%>
	
</body>
</html>