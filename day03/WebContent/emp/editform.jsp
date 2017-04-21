<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%
	String rootpath =request.getContextPath();
%>
<table width = "100%">

<!-- header -->
<tr>
	<td colspan ="5">
		<a href = "<%=rootpath %>"><img alt ="logo" src = "../imgs/lo.jpg"></a>		
	</td>
	<td colspan ="2">
		<a href = "">login</a>
		<a href = "">join</a>
	</td>
</tr>
<!-- header end -->
<!-- menu -->
<tr>
	<td bgcolor="#ffdddd">&nbsp;</td>
	<td width ="10%" align="center" bgcolor="#ffaaaa"><a href = "<%=rootpath %>/intro/page1.jsp">회사소개</a></td>
	<td bgcolor="#ffdddd">&nbsp;</td>
	<td width ="10%" align="center" bgcolor="#ffaaaa"><a href = "<%=rootpath %>/emp/list.jsp">사원관리</a></td>
	<td bgcolor="#ffdddd">&nbsp;</td>
	<td width ="10%" align="center" bgcolor="#ffaaaa"><a href = "<%=rootpath %>/login/login.jsp">login</a></td>
	<td bgcolor="#ffdddd">&nbsp;</td>
</tr>
<!-- menu end -->
<!-- content -->
<tr>
	<td colspan="7" align="center" height =300>
		<h1>변경화면</h1>
		<%String sabun = request.getParameter("sabun"); %>
		<form action="update.jsp">
		<input type = "hidden" name ="sabun" value="<%=sabun%>">		
		<label>금액</label>		
		<input type = "text" name = "pay">
		<input type = "submit" value ="수정">
		
		
		</form>
	</td>
</tr>
<!-- content end -->
<!-- footer -->
<tr>
<td colspan="7">
	Contact imyosup@nate.com for more information.
	Copyright  2015 언더70. All rights reserve
</td>
</tr>
<!-- footer end -->
</table>

</body>
</html>