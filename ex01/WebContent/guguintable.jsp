<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<table border ="2">
	<caption>gugudan</caption>
	<tr align="center"><td>2��</td><td>3��</td><td>4��</td><td>5��</td><td>6��</td><td>7��</td><td>8��</td><td>9��</td></tr>
	<%
	for(int i = 1 ;i<10;i++){
		out.print("<tr>");
		for(int j= 2; j<10;j++){
			out.print("<td>"+j+"x"+i+"="+(i*j)+"</td>");
		}
		out.print("</tr>");
	}

	%>
	</table>
</body>
</html>