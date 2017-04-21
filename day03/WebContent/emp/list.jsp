<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" import ="java.sql.*,java.util.ArrayList"%>    
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
	<td colspan="8" align="center" height =300>
	<%
	String sql = "Select * from lec_emp order by sabun";
	String driver = "oracle.jdbc.driver.OracleDriver";
	String url ="jdbc:oracle:thin:@127.0.0.1:1521:xe";
	String user ="scott";
	String password ="tiger";
	Connection conn = null;
	Statement stmt = null;
	ResultSet rs = null;
	ArrayList<String[]> list = new ArrayList<String[]>();
	try{
		Class.forName(driver);
		conn= DriverManager.getConnection(url,user,password);
		stmt = conn.createStatement();
		rs = stmt.executeQuery(sql);
		while(rs.next()){
			String[] ob = new String[4];
			ob[0]=rs.getInt("sabun")+"";
			ob[1]=rs.getString("name");
			ob[2]=rs.getDate("naljja")+"";
			ob[3]=rs.getInt("pay")+"";
			list.add(ob);
		}
		
	} catch(Exception e){
		e.printStackTrace();
	} finally{
		try{
		if(rs!=null)rs.close();
		if(stmt!=null)stmt.close();
		if(conn!=null)conn.close();
		}
		catch(Exception e){
			e.printStackTrace();
		}
	}
	%>
		<h1>사원목록이다</h1>
		<table border="1" cellspacing="0" width="80%">
		<tr>
			<th>사번</th>
			<th>이름</th>
			<th>날짜</th>
			<th>금액</th>
			<th width = "200">수정/삭제</th>	
		<%
		for(int i =0 ;i<list.size();i++){
		String[] record= list.get(i);	%>
			<tr>
				<td><%=record[0]%></td>
				<td><%=record[1]%></td>
				<td><%=record[2]%></td>
				<td><%=record[3]%></td>
				<td>
					<form action="edit.jsp">
					<input type = "hidden" name="sabun" value= "<%=record[0]%>" >
					<input type = "radio" name ="edit" checked ="checked" value = "0">금액수정
					<input type = "radio" name = "edit" value = "1">삭제
					<input type = "submit" name = "move" value = "입력">
					</form>
				</td>
			</tr>
		<%}%>
		</tr>
		<tr bgcolor="#cccccc">
			<td colspan="5" align="right">	<a href = "add.jsp">신규등록</a></td>
		</tr>
		</table>
	
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