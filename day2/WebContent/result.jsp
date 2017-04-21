<%@page import="java.io.*"%>

<%@page import="java.util.Iterator"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" import = "java.util.*" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h1>결과</h1>
	<%
/*	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String name = request.getParameter("name");
	out.println("<p>id:"+id+"</p>");
	out.println("<p>pw:"+pw+"</p>");
	out.println("<p>name:"+name+"</p>");
	*/
	Enumeration<String> enu = request.getParameterNames();
	while(enu.hasMoreElements()){
		String para = enu.nextElement();
		out.println("<p>");
		out.println(para);
		out.println(":");
		out.println(request.getParameter(para));
		out.println("</p>");
	}
	out.print("<br>");
	 ServletRequest req=pageContext.getRequest();
	 pageContext.getResponse();
	//OutputStream os =response.getOutputStream();
	//os.write("<hr>".getBytes());
	out.print("<br>");
	Map<String,String[]> map = request.getParameterMap();
	Set<String> key =  map.keySet();
	Iterator ite= key.iterator();
	while(ite.hasNext()){
		String[] para2 = (String[])ite.next();
		out.println("<p>");
		out.println(para2);
		out.println(":");
		out.println(map.get(para2[0]));
		out.println("</p>");
	}
	%>

</body>
</html>