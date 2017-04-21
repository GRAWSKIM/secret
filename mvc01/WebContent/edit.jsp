<%@page import="com.hb.model.Guest01Dto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width,initial-scale=1.0">
<title>Insert title here</title>
<style>
</style>
</head>
<body>
<%
	Guest01Dto dto = (Guest01Dto)request.getAttribute("bean");
%>
<h1>수정페이지</h1>
	<form action="update.hb" method="post">
		<p><lable for="sabun">사번</lable><input type="text" name="sabun" id="sabun" value="<%=dto.getSabun()%>" readonly="readonly"></p>
		<p><lable for="name">이름</lable><input type="text" name="name" id="name" value="<%=dto.getName()%>"></p>
		<p><lable for="nalja">날자</lable><input type="text" name="nalja" id="nalja" value="<%=dto.getNalja()%>" disabled="disabled"></p>
		<p><lable for="pay">금액</lable><input type="text" name="pay" id="pay" value="<%=dto.getPay() %>"></p>
		<p><input type="submit" value="제출"></p>
	</form>
</body>
</html>