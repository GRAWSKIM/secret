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
<h1>수정페이지</h1>
<form action ="update.jsp" method = "post">
	<table width = "60%" border="1" cellspacing="0">
	  <tr>
	    <th width="30%">사번</th>
	    <td><input type = "text" name ="sabun" value="<%=request.getParameter("param1")%>" readonly="readonly"></td><!-- 전달 ㅇ  수정x -->
	  </tr>
	   <tr>
	    <th width="30%">이름</th>
	    <td><input type = "text" name ="name" value="<%=request.getParameter("param2")%>"></td>
	  </tr>
	   <tr>
	    <th width="30%">날짜</th>
	    <td><input type = "text" value="<%=request.getParameter("param3")%>" disabled="disabled"></td>				<!-- 전달 x 수정x -->
	  </tr>
	   <tr>
	    <th width="30%">급여</th>
	    <td><input type = "text" name ="pay" value="<%=request.getParameter("param4")%>"></td>
	  </tr>
	   <tr>
	    <td colspan="2" align="center">
	    <a ><input type = "submit" value="확인"></a>
	    <a href="#" onclick="history.back()">뒤로</a>
	    </td>	    
	  </tr>	
	</table>
	  </form>
</center>
<%@ include file = "../template/footer.jspf" %>
</body>
</html>