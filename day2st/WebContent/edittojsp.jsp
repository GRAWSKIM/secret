<%@page import="org.eclipse.jdt.internal.compiler.flow.FinallyFlowContext"%>
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
		<%
		String name = request.getParameter("name");
		String num = request.getParameter("num");
		String kor = request.getParameter("kor");
		String eng = request.getParameter("eng");
		String math = request.getParameter("math");
		String sql = "update stu03 set name ='"+name+"',kor="+kor+",eng="+eng+",math="+math+"where num="+num;
		String url = "jdbc:oracle:thin:@127.0.0.1:1521:xe";
		String driver = "oracle.jdbc.driver.OracleDriver";
		String user = "scott";
		String password = "tiger";
		Connection conn= null;
		Statement stmt = null;
		
		try{
			Class.forName(driver);
			conn = DriverManager.getConnection(url,user,password);
			stmt= conn.createStatement();
		    int a=stmt.executeUpdate(sql);
		    
		    if(a>0){		    			    
		 	%>		    
			<td colspan="6">
			<% out.println("<h1>��������</h1>");}
		    else {  
		    	out.println("<h1>��������</h1>");
		    	%>
			
			</td>	
		    <%}
		} catch(Exception e){
			e.printStackTrace();
		} finally {
			if(stmt!=null)stmt.close();
			if(conn!=null)conn.close();
		}
		
		%>
		
		
		<!-- ���� -->
		<tr>	
			<td colspan="6">��¼�� ��¼��
		
</td>
		</tr>
			
	</table>
</body>
</html>