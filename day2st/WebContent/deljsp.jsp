<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@ page import="java.sql.*" %>
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
			<td colspan="6">
		<%
		String num = request.getParameter("num");
		String sql = "delete from stu03 where num="+num;
		String url = "jdbc:oracle:thin:@127.0.0.1:1521:xe";
		String driver = "oracle.jdbc.driver.OracleDriver";
		String user = "scott";
		String password ="tiger";
		Connection conn= null;
		Statement stmt = null;
		
		try{
		Class.forName(driver);
		conn = DriverManager.getConnection(url, user, password);
		stmt = conn.createStatement();
		int a= stmt.executeUpdate(sql);
		if(a>0){
			out.println("<h1>삭제성공</h1>");
		}else {
			out.println("<h1>삭제실패</h1>");
		}
		
		} catch (Exception e){
			e.printStackTrace();
		} finally{
			if(stmt!=null)stmt.close();
			if(conn!=null)conn.close();
		}
		%>
		</td>	
		<!-- 내용 -->
		<tr>	
			<td colspan="6">어쩌구 저쩌구
		
</td>
		</tr>
			
	</table>

</body>
</html>