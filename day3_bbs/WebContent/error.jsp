<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page isErrorPage="true" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%@ include file = "templ/header.jspf" %> 
	<%@ include file = "templ/menu.jspf" %>
	<h1>에러발생(에러메세지:<%=exception.getMessage() %>)</h1>
	<p>빠른시일내에 복구하겠습니다</p>
	
	<%String[] msgs = exception.getStackTrace();
	for(int i = 0;i<msgs.length;i++){ %>
	<p><%out.println(msgs[i]);} %></p>
	<%@ include file = "templ/footer.jspf" %>
</body>
</html>