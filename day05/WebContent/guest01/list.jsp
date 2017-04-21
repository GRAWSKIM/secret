<%@ page import="java.util.* , com.hb.dto.Guest01Bean, com.hb.dto.Guest01Dao" %>
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
	<table align="center">
		<caption>리스트</caption>
		<tr bgcolor="#ffbbee">
			<th>사번</th>
			<th>이름</th>
			<th>날짜</th>
			<th>금액</th>
		</tr>
		<%
		String keyword = request.getParameter("keyword");
		String search = request.getParameter("search");
		if(keyword == null){
			keyword = "name";
		}else if(keyword.equals("key1")){
			keyword = "name";
		}else if(keyword.equals("key2")){
			keyword = "sabun";
		}
		Guest01Dao dao = new Guest01Dao();
		ArrayList<Guest01Bean> list = null;
		if(search==null){
			list = dao.selectAll();
		}else{
			list = dao.selectAll(search,keyword);
		}
		if(list!=null){
		for(int i =0 ;i<list.size();i++){
			Guest01Bean bean= list.get(i);
		%>
		<tr>
			<td><a href="detail.jsp?idx=<%=bean.getSabun()%>"><%=bean.getSabun()%></a></td>
			<td><%=bean.getName() %></td>
			<td><%=bean.getNalja() %></td>
			<td><%=bean.getPay() %></td>			
		</tr>
		<%} 
		}%>
	</table>
	<center>
	<form action="list.jsp">
		<select name = "keyword">
		<option value="key1" selected="selected">이름</option>
		<option value="key2" >사번</option>
		</select> 
		<input type = "text" name = "search" >
		<input type = "submit" value="제출">
	</form>
	<a href = "<%=contextPath%>/guest01/add.jsp"><input type ="button" value="입력" ></a>
	</center>
	<%@ include file = "../template/footer.jspf" %>
	
</body>
</html>