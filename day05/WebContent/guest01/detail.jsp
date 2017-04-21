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
	<%
		String param = request.getParameter("idx");
		int sabun = Integer.parseInt(param);
		Guest01Dao dao = new Guest01Dao();
		Guest01Bean bean = dao.selectOne(sabun);
		
	%>
<center>
	<h1>상세페이지</h1>
		
	<table width = "60%" border="1" cellspacing="0">
	  <tr>
	    <th width="30%">사번</th>
	    <td><%=bean.getSabun() %></td>
	  </tr>
	   <tr>
	    <th width="30%">이름</th>
	    <td><%=bean.getName() %></td>
	  </tr>
	   <tr>
	    <th width="30%">날짜</th>
	    <td><%=bean.getNalja() %></td>
	  </tr>
	   <tr>
	    <th width="30%">급여</th>
	    <td><%=bean.getPay() %></td>
	  </tr>
	   <tr>
	    <td colspan="2" align="center">
	    <a href = "edit.jsp?param1=<%=bean.getSabun() %>&param2=<%=bean.getName()%>&param3=<%=bean.getNalja()%>&param4=<%=bean.getPay() %>"><input type = "button" value="수정"></a>
	    <a><input type = "button" value="삭제"></a>
	    <a href="#" onclick="history.back()">뒤로</a>
	    
	    </td>
	    
	  </tr>
	  
	</table>
</center>
	
	<%@ include file = "../template/footer.jspf" %>
</body>
</html>