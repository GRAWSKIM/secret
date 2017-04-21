<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%
	String id,pw;
	id = request.getParameter("id");
	pw = request.getParameter("pw");
	String[] hobby = request.getParameterValues("hobby");
	System.out.println(request.getRemoteAddr());
	System.out.println(request.getServerName());
	System.out.println(request.getServerPort());
	System.out.println(request.getRequestURL());
	System.out.println(request.getContextPath());
%>
<h1><%=id%></h1>
<h1><%=pw %></h1>
	<%for(int i =0;i<hobby.length;i++){ %>
	<%=hobby[i] %>
	<%} %><br>
	<%=request.getRemoteAddr() %>
</body>
</html>