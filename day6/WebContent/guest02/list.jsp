<%@page import="com.hb.dto.Guest02Bean"%>
<%@page import="com.hb.util.myDb"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@ page import = "java.sql.*,java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<%!
	private Connection conn;
	private Statement stmt;
	private ResultSet rs;
	
	public String space(int cnt){
		String space ="";
		for(int i =0;i<cnt;i++){
		
			space += "&nbsp;"+"&nbsp;"+"&nbsp;";
			if(i==cnt-1){space+="L";}
		}
		
		return space;
	}
%>
<body>
<%
	ArrayList<Guest02Bean> list = new ArrayList<Guest02Bean>();
	String sql = "select sabun,name,nalja,pay,lv2 from guest02 order by lv1 desc,lv3 desc";
	conn = myDb.getConnection();
	try{
	stmt = conn.createStatement();
	rs=stmt.executeQuery(sql);
	while(rs.next()){
		Guest02Bean bean = new Guest02Bean();
		bean.setSabun(rs.getInt(1));
		bean.setName(rs.getString(2));
		bean.setNalja(rs.getDate(3));
		bean.setPay(rs.getInt(4));
		bean.setLv2(rs.getInt(5));
		list.add(bean);
	}
	} finally{
		if(rs!=null)rs.close();
		if(stmt!=null)stmt.close();
		if(conn!=null)conn.close();
	}
	String msg = request.getParameter("msg");
	if(msg==null)msg= "";
	else if(Integer.parseInt(msg)>0)msg="성공";
	else msg= "실패";
%>
	<p><h2 align="center" ><%=msg %></h2></p>
	<ul>
		<il>
			<a href ="<%=request.getContextPath()%>">Home</a>
		</il>
		<il>
			<a href ="guest02/list.jsp">guest02</a>
		</il>
		<il>
			<a href ="#">guest03</a>
		</il>
	</ul>
	<h1>LIST</h1>
	<table border = "2" align="center" cellspacing="0"width="78%">
		<tr>
			<th>사번</th>
			<th>이름</th>
			<th>날짜</th>
			<th>금액</th>
		</tr>
		<%for(Guest02Bean bean:list){ %>
		<tr>
			<td><a href = "detail.jsp?sabun=<%=bean.getSabun()%>"><%=bean.getSabun()%></a></td>
			<td><%=space(bean.getLv2())%><%=bean.getName() %></td>
			<td><%=bean.getNalja() %></td>
			<td><%=bean.getPay() %></td>
		</tr>
		<%}%>
	</table>
		<p align = "center"><a href="add.jsp">입력</a></p>
</body>
</html>