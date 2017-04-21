<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import = "java.sql.*" %>
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
		<%
		String sql = "select num,name,kor+eng+math as tot from stu03 order by num";
		String url = "jdbc:oracle:thin:@127.0.0.1:1521:xe";
		String driver ="oracle.jdbc.driver.OracleDriver";
		String user = "scott";
		String password = "tiger";
		Connection conn =null;
		Statement stmt = null;
		ResultSet rs =null;
		try{
			Class.forName(driver);
			conn=DriverManager.getConnection(url,user,password);
			stmt = conn.createStatement();
			rs = stmt.executeQuery(sql);
		%>
			<table width = 500 border="1" align="center">
			<caption>학생성적테이블</caption>
				<tr>
					<td>학번</td><td>이름</td><td>합계</t>
				</tr>	
				
				<%while(rs.next()){%>
				<tr>
				<td><%=rs.getInt("num") %></td>
				<td><%=rs.getString("name")%></td>
				<td><a href="viewonejsp.jsp?num=<%=rs.getInt("num") %>"><%=rs.getInt("tot") %></a></td>
				</tr>
				<%}%>

			
		<%}catch (Exception e){
			out.print("<h1>실패</h1>");
		} finally{
			if(rs!=null)rs.close();
			if(stmt!=null)stmt.close();
			if(conn!=null)conn.close();
		}
			
			%>
			</table>
			</td>
		</tr>
		<tr>	
			<td colspan="6">어쩌구 저쩌구</td>
		</tr>
			
	</table>
</body>
</html>