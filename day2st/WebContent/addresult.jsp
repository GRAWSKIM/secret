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
		<!-- ���� -->
		<tr>	
			<td colspan="6">
			<%
			String name = request.getParameter("name");
			String kor = request.getParameter("kor");
			String eng = request.getParameter("eng");
			String math = request.getParameter("math");
			String sql = "insert into stu03 values (stu03_seq.nextval,'"+name+"',"+kor+","+eng+","+math+")";
			
			String driver = "oracle.jdbc.driver.OracleDriver";
			String url = "jdbc:oracle:thin:@127.0.0.1:1521:xe";
			String user = "scott";
			String password = "tiger";
			int result = 0;
			Connection conn= null;
			Statement stmt = null;
			try{
				Class.forName(driver);
				conn= DriverManager.getConnection(url,user,password);
				stmt = conn.createStatement();
				result= stmt.executeUpdate(sql);
			} catch(Exception e){
				e.printStackTrace();
				out.println("<h1>����������</h1>");
			} finally{
				if(stmt!=null)stmt.close();
				if(conn!=null)conn.close();
			}
			
			if(result>0){
				out.println("<h1>�Է¼���</h1>");
			}else{
				out.println("<h1>�Է½���</h1>");
			}
			%>
		</tr>
		<tr>	
			<td colspan="6">��¼�� ��¼��</td>
		</tr>
			
	</table>
</body>
</html>