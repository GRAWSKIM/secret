<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" import = "java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%
	String name = request.getParameter("name");
	String sql= "insert into lec_emp (sabun,name) values ((select Max(sabun)+1 from lec_emp),'"+name+"')";
	System.out.println(sql);
	String driver = "oracle.jdbc.driver.OracleDriver";
	String url = "jdbc:oracle:thin:@localhost:1521:xe";
	Connection conn= null;
	Statement stmt = null;
	String user ="scott";
	String password = "tiger";
	int result = 0;			
	try{
		Class.forName(driver);
		conn = DriverManager.getConnection(url , user ,password);
		stmt = conn.createStatement();
	    result=stmt.executeUpdate(sql);
		
	}catch(Exception e){
		e.printStackTrace();
	}finally{
		try{
		if(stmt!=null)stmt.close();
		if(conn!=null)conn.close();
		}catch (Exception e){
			e.printStackTrace();
		}
	}

	if(result>0){
		response.sendRedirect("./list.jsp");
	}else {
		response.sendRedirect("./add.jsp");
	}

%>
</body>
</html>