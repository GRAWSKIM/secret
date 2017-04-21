<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<%!
	public String func01(int a,int b){
	String ar= a*b;
	return ar;
}


%>

<body>




<table>
	<% for(int i=1 ;i<10;i++){ %>
	<tr>
		<% for(int j = 2;j<10;i++){%>
		<td><%=func01(j,i) %></td>
		<%} %>
	
	</tr>
	<%} %>
</table>

</body>
</html>