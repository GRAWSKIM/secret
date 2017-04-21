<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<%!

%>
<body>
<%
	String ur = request.getParameter("template");
	String ur2 = request.getParameter("template");
	String sabun = request.getParameter("sabun");
	String name = request.getParameter("name");
	String nalja = request.getParameter("nalja");
	String pay = request.getParameter("pay");
	System.out.print(ur);
	if(ur==null){
		ur="main.jsp";
		ur2="index";
	}else if("index".equals(ur)){
		ur="guest/list.jsp";
	}else if("list".equals(ur)){
		ur="guest/list.jsp";
	}else if("add".equals(ur)){
		ur="guest/add.jsp";
	}else if("insert".equals(ur)){
		ur="guest/insert.jsp";
	}else if("detail".equals(ur)){
		ur="guest/detail.jsp";
	}else if("edit".equals(ur)){
		ur="guest/edit.jsp";
	}else{
		ur="err.jsp";
	}
%>
	<table width = "100%" align="center">
		<tr>
			<td>
				<img alt="" src="imgs/ddb.JPG">
			</td>
			<td>
			<jsp:useBean id = "login" class="com.hb.dto.LoginBean" scope="session"></jsp:useBean>
			<% if(login.getResult()>0){ %>
				<jsp:include page="login/login.jsp">
				<jsp:param value="<%=login.getName() %>" name ="id"></jsp:param>
				<jsp:param value="<%=ur2 %>" name ="ur2"></jsp:param>
				</jsp:include>
			<%} else{ %>
				<form action = "login/result.jsp" method="post">
		
					<input type ="hidden" name = "template" value="<%=ur2%>">
					<p>
						<label>id</label><input type="text" name="id">
						<label>pw</label><input type="password" name="pw">
						<input type="submit" value = "로그인">
					</p>
				</form>
				<%} %>
			</td>
		</tr>
		<tr bgcolor="#ddeeff"><!-- menu -->
			<td colspan="2">
				<font size = "6" color = "#000000">
				<a href = "/day7login/">home</a>
				<a href = "/day7login/index.jsp?template=list">게시판</a>
				<a href = "/day7login/">menu1</a>
				<a href = "/day7login/">menu2</a>
				</font>
			</td>
		</tr>
		<tr height="300">
			<td colspan="2">
			<!-- contents -->
			<jsp:include page = "<%=ur%>">
				<jsp:param value="<%=sabun %>" name="sabun"/>
				<jsp:param value="<%=name %>" name="name"/>
				<jsp:param value="<%=nalja %>" name="nalja"/>
				<jsp:param value="<%=pay %>" name="pay"/>		
			</jsp:include>
			
			<!-- footer -->
			</td>
		</tr>
		<tr bgcolor="#ddeeff">
			<td colspan="2" height="60">
			</td>
		</tr>
	</table>
</body>
</html>