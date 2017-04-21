<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%@ include file = "templ/header.jspf" %> 
<%@ include file = "templ/menu.jspf" %>
<form action ="insert.jsp">
	<table>
	<tr>
		<td>제목</td>
		<td><input type ="text" name ="sub" placeholder = "제목없음"></td>
	</tr>
	<tr>
		<td>글쓴이</td>
		<td><input type ="text" name ="wid"></td>
	</tr>
	<tr>
		<td>내용</td>
		<td><textarea rows = "5" cols="15" name = "content"></textarea></td>
	</tr>
	<tr>
		<td colspan="2">
		<input type = "submit" value ="제출">
		</td>
	</tr>
	</table>
	</form>
<%@ include file = "templ/footer.jspf" %>
</body>
</html>