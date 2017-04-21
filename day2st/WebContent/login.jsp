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
<%
String id = request.getParameter("id");
String pw = request.getParameter("pw");
String sql = "select count(*)from user where = num"+id+"and name="+pw;
System.out.println(sql);
String url = "jdbc:oracle:thin:@127.0.0.1:1521:xe";
String driver = "oracle.jdbc.driver.OracleDriver";
String user = "scott";
String password = "tiger";
Connection conn= null;
Statement stmt = null;
ResultSet rs =null;
int result=0;
try{
	Class.forName(driver);
	conn = DriverManager.getConnection(url,user,password);
	stmt= conn.createStatement();
    rs=stmt.executeQuery(sql);
    
    if(rs.next()){		    			    
    	result=rs.getInt("cnt");
   }
} catch(Exception e){
	e.printStackTrace();
} finally {
	if(stmt!=null)stmt.close();
	if(conn!=null)conn.close();
}
if(result>0)response.sendRedirect("http://localhost:8080/day2st/main.jsp");
else response.sendRedirect("http://localhost:8080/day2st/");
%>

</body>
</html>