<%@page import="com.hb.dto.*"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%@ include file = "../template/header.jspf" %>
<%@ include file = "../template/menu.jspf" %>

<center>
<h1>����������</h1>
<form action ="update.jsp" method = "post">
	<table width = "60%" border="1" cellspacing="0">
	  <tr>
	    <th width="30%">���</th>
	    <td><input type = "text" name ="sabun" value="<%=request.getParameter("param1")%>" readonly="readonly"></td><!-- ���� ��  ����x -->
	  </tr>
	   <tr>
	    <th width="30%">�̸�</th>
	    <td><input type = "text" name ="name" value="<%=request.getParameter("param2")%>"></td>
	  </tr>
	   <tr>
	    <th width="30%">��¥</th>
	    <td><input type = "text" value="<%=request.getParameter("param3")%>" disabled="disabled"></td>				<!-- ���� x ����x -->
	  </tr>
	   <tr>
	    <th width="30%">�޿�</th>
	    <td><input type = "text" name ="pay" value="<%=request.getParameter("param4")%>"></td>
	  </tr>
	   <tr>
	    <td colspan="2" align="center">
	    <a ><input type = "submit" value="Ȯ��"></a>
	    <a href="#" onclick="history.back()">�ڷ�</a>
	    </td>	    
	  </tr>	
	</table>
	  </form>
</center>
<%@ include file = "../template/footer.jspf" %>
</body>
</html>