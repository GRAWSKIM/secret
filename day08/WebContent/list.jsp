<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.sql.*,java.util.*,com.hb.util.MyDB,com.hb.javaBean.Guest03Bean"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type ="text/css" href="css/frame.css">
<style type="text/css">
	section>h1{
		margin:10px auto;
		width:80%;
		text-align: center;
		font-size: 2em;
		border-bottom:solid #ceaefc
	}
	section>table{
		width:80%;
		margin:0px auto;
		border-top-color:gray;
		border-top-style:solid;
		border-top-width:1px; 
		border-left: gray solid 1px;
		border-bottom: darkgray solid 4px;
		border-right: gray solid 4px;
	}
	section>table tr>th:nth-child(1),section>table tr>th:nth-child(4){
		width:15%;
	}
	section>table tr>th:nth-child(3){
		width:20%;
	}
	section>table tr>td{
		border-bottom: dotted red 1px;
	}
	section>table tr:hover{
		background-color: #9fedc2;
		
	}
	section>table tr>th{
		background-color: gray;
	}
	section>table tr>td:nth-child(1),section>table tr>td:nth-child(4){
		text-align: right;
	}
	section>table tr:nth-child(2n-1){
		background-color: #feacde;
	}
	section>p{
		text-align: center;
	}
	section>p>a{
		color:white;
		background-color:#aeacda;
		text-align:center;
		margin:20px aulto;
		display:inline-block;
		width:80px;
		height:50px;
		border-right: darkgray solid 5px;
		border-left: darkgray solid 5px;
		border-top: darkgray solid 5px;
		border-bottom: darkgray solid 5px;
	}
	section>p>a:hover{
		color:red;
		font-size:1.5em;
	}
	#result{
		text-align:center;
		font-size:19pt;
		background-color: red;
		color:white;
		font-weight:bold;
		<%
		String result=request.getParameter("result");
		if(result==null)out.print("display:none");
		%>
		
	}
</style>
</head>
<%!
	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;
%>
<body>
<%
	String sql = "select * from guest03";
	ArrayList<Guest03Bean> list = new ArrayList<Guest03Bean>();
	try{
		conn=MyDB.getConnection();
		pstmt=conn.prepareStatement(sql);
		rs=pstmt.executeQuery();
		while(rs.next()){
			Guest03Bean bean=new Guest03Bean();
			bean.setSabun(rs.getInt("sabun"));
			bean.setName(rs.getString("name"));
			bean.setNalja(rs.getDate("nalja"));
			bean.setPay(rs.getInt("pay"));
			list.add(bean);
			
		}
	}finally{
		if(rs!=null)rs.close();
		if(pstmt!=null)pstmt.close();
		if(conn!=null)conn.close();
	}
%>
	<div id="result">성공하였습니다</div>;
	<header>
		<img alt="logo" src="imgs/ddb.JPG">
	</header>
	<nav>
		<ul>
			<li><a href = "list.jsp">LIST</a></li>
			<li><a href = "#">menu1</a></li>
			<li><a href = "#">menu1</a></li>
			<li><a href = "#">menu1</a></li>
		</ul>
	</nav>
	<section>
		<h1>Guest03테이블 리스트</h1>
		<table>
			<tr>
				<th>사번</th>
				<th>이름</th>
				<th>날짜</th>
				<th>금액</th>
			</tr>
			<%for(Guest03Bean bean:list){%>
			<tr>
				<td><%=bean.getSabun() %></td>
				<td><%=bean.getName() %></td>
				<td><%=bean.getNalja() %></td>
				<td><%=bean.getPay() %></td>
			</tr>
			<% }%>
		</table>
		<p><a href="add.jsp">>>>></a></p>
	</section>
	<footer>
		<address>둥글동글라이언꿀호떡</address>
		<P>COPYRIGHT ~~~~~</P>
	</footer>
</body>
</html>