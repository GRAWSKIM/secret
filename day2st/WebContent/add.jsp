<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<table>
		<!-- 로고 -->
		<tr >
			<td colspan="6"><img alt="logo" src="./img/lo.jpg"></td>	
		</tr>
		<!-- 메뉴 -->
		<tr >
			<td>&nbsp;&nbsp;</td>
			<td bgcolor="#110,96,185" width = 180><a href ="index.jsp">home</a></td>
			<td bgcolor="#110,96,185" width = 180><a href = "add.jsp">입력</a></td>
			<td bgcolor="#110,96,185" width = 180><a href = "vew.jsp">보기</a></td>
			<td bgcolor="#110,96,185" width = 180>방명록</td>
			<td></td>
		</tr>
		<!-- 내용 -->
		<tr>	
			<td colspan="6">
			<h1 align="center">입력페이지</h1>
			<form action ="addresult.jsp">
			<p align="center">
				<label>이름</label>
				<input type = "text" name = "name">
			</p>
			<p align="center">
				<label>국어</label>
				<input type = "text" name = "kor">
			</p>
			<p align="center">
				<label>영어</label>
				<input type = "text" name = "eng">
			</p>
			<p align="center">
				<label>수학</label>
				<input type = "text" name = "math">
			</p >
			<p align="center">
				<input type ="submit" value="입력">
				<input type ="reset" value ="비우기">
			</p>
			</form>	
			</td>
		</tr>
		<tr>	
			<td colspan="6">어쩌구 저쩌구</td>
		</tr>
			
	</table>
</body>
</html>