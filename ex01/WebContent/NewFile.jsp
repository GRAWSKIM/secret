    <%@page language="java"%>
    <%@page contentType="text/html; charset=EUC-KR" %>
    <%@page pageEncoding="EUC-KR"%>
    <%@  page import = "java.util.Date"%>
     <!-- ��Ƽ�� Ŭ���� �ۿ� ���� �͵��� �̰��� ���´� -->
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<%
	Date naljja = new Date();
	//java.util.Date naljja = new java.util.Date();
	int year = naljja.getYear()+1900;	
	int month = naljja.getMonth()+1;
	int day = naljja.getDate();
	String nal = year+"��"+month+"��"+day+"��";
%>
<body>
<%=nal %>
</body>
</html>