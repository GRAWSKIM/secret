<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%><%@ page import = "java.sql.*" %>
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
			<%String sql = "select * from stu03 where num =";
			sql+= request.getParameter("num");
			String driver = "oracle.jdbc.driver.OracleDriver";
			String url = "jdbc:oracle:thin:@localhost:1521:xe";
			String user ="scott";
			String password="tiger";
			Connection conn = null;
			Statement stmt = null;
			ResultSet rs = null;
			int num=0,kor=0,eng=0,math=0;
			String name="";
			try{
				Class.forName(driver);
				conn=DriverManager.getConnection(url,user,password);
				stmt = conn.createStatement();
				rs = stmt.executeQuery(sql);
				if(rs.next()){
					num =rs.getInt("num");
					name= rs.getString("name");
					kor =rs.getInt("kor");
					eng =rs.getInt("eng");
					math =rs.getInt("math");
				}
			}catch(Exception e){
				e.printStackTrace();
				
			}
			%>
			<h1 align="center">상세정보</h1>
			<p align="center">이름	: <%=name %></p>		
			<p align="center">국어	: <%=kor %></p>		
			<p align="center">영어	: <%=eng %></p>		
			<p align="center">수학	: <%=math %></p>		
			<p align="center">합계	: <%=kor+eng+math %></p>		
			<p align="center">평균	: <%=(kor+eng+math)*100/3/100.0 %></p>		
			<p align="center"><a href="edit.jsp?name=<%=rs.getString("name")%>&num=<%=rs.getInt("num")%>
			&kor=<%=rs.getInt("kor")%>&eng=<%=rs.getInt("eng")%>&math=<%=rs.getInt("math")%>">
			수정</a></p>		
			<p align="center"><a href ="deljsp.jsp?num=<%=rs.getInt("num")%>">삭제</a></p>
			
			</td>	
		<tr>	
			<td colspan="6">어쩌구 저쩌구</td>		
		</tr>
			
	</table>
</body>
</html>