<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>

	<jsp:useBean id = "bean" class="com.hb.dto.Guest03Bean" scope="request"></jsp:useBean>
	<jsp:setProperty property = "*" name="bean"/>
	
	<center>
	<form action = "main6.jsp" method = "post">
	<table width = "18%" border ="1" cellspacing="0">
	<tr>
		<td>사번</td>
		<td><input type = "text" name = "sabun" value="<%=bean.getSabun() %>" readonly="readonly"></td>
	</tr>
	<tr>
		<td>이름</td>
		<td><input type = "text" name = "name" value="<%=bean.getName() %>"></td>
	</tr>
	<tr>
		<td>날짜</td>
		<td><input type = "text" name = "nalja" value="<%=bean.getNalja() %>" disabled="disabled"></td>
	</tr>
	
	<tr>
		<td>금액</td>
		<td><input type = "text" name = "pay" value="<%=bean.getPay() %>"></td>
	</tr>
	
	<tr>
		<td colspan="2">
		<input type= "submit" value ="수정">
		<input type= "reset" value ="취소">
		<input type= "button" value ="이전" onclick="javascpript:history.back();">
		</td>
	</tr>
	</table>
	</form>
	</center>
</body>
</html>