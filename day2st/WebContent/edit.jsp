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
		<!-- �ΰ� -->
		<tr >
			<td colspan="6"><img alt="logo" src="./img/lo.jpg"></td>	
		</tr>
		<!-- �޴� -->
		<tr >
			<td>&nbsp;&nbsp;</td>
			<td bgcolor="#110,96,185" width = 180><a href ="index.jsp">home</a></td>
			<td bgcolor="#110,96,185" width = 180><a href = "add.jsp">�Է�</a></td>
			<td bgcolor="#110,96,185" width = 180><a href = "vew.jsp">����</a></td>
			<td bgcolor="#110,96,185" width = 180>����</td>
			<td></td>
		</tr>
			<td colspan="6">
			<h1 align="center">����������</h1>
			<form action ="edittojsp.jsp">
			<p align="center">
				<label>�̸�</label>
				<input type = "text" name = "name" value="<%=request.getParameter("name")%>">
			</p>
			<p align="center">
				<label>��ȣ</label>
				<input type = "text" name = "num" value="<%=request.getParameter("num")%>">
			</p>
			<p align="center">
				<label>����</label>
				<input type = "text" name = "kor" value="<%=request.getParameter("kor")%>">
			</p>
			<p align="center">
				<label>����</label>
				<input type = "text" name = "eng" value="<%=request.getParameter("eng")%>">
			</p>
			<p align="center">
				<label>����</label>
				<input type = "text" name = "math" value="<%=request.getParameter("math")%>">
			</p >
			<p align="center">
				<input type ="submit" value="����">
				<input type ="reset" value ="����">
			</p>
			</form>	
			</td>
			
			
			
			
			
			</td>	
		<!-- ���� -->
		<tr>	
			<td colspan="6">��¼�� ��¼��
		
</td>
		</tr>
			
	</table>
</body>
</html>