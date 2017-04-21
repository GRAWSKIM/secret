<%@page import="com.hb.dto.javaBeab"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.hb.dao.Guest03Dao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta name="viewport" content="width=device-width,initial-scale=1.0">
		<title>Insert title here</title>
		<link rel="stylesheet" type="text/css" href="css/grid.css">
		<style>
			#table{
				width:80%;
				margin:0px auto;
				border:solid 1px black;
			}
			#menu{
				height: 50px;
				overflow: hidden;
				}
			#menu:hover{
				height: 150px;
				}
			#menu>div{
				background-color: #ffaa66;
				height:50px;
				overflow:hidden;
			}	
			#menu>div>ul{
				width:400px;
				padding:0px;
				margin:0px auto;
				
			}
			#menu>div>ul>li{
				color: white;
				text-align:center;
				width:100px;
				height: 50px;
				line-height:50px;
				float:left;
				list-style: none;
			}
			/*
			#menu>div:nth-child(1) ~ div{
				display:none;
			}
			#menu>div:nth-child(1):hover ~ div{
				display:block;
			}*/
			
		</style>
	</head>
	<%!
	
	%>
	<body>
	<%
		Guest03Dao dao = new Guest03Dao();
		ArrayList<javaBeab> list=dao.selectAll();
	%>
		<div class="container">
		
			<div id="header" class="row mrow">
				<div class="col-12 mcol-12">
					<h1>어떤 로고</h1>
				</div>
			</div>
	
			
			<div id="menu" class="row mrow">
				<div class="col-12">
				<ul>
					<li>menu1</li>
					<li>menu2</li>
					<li>menu3</li>
					<li>menu4</li>
				</ul>
			</div>
			<div class="col-12">
				<ul>
					<li><a href="#">menu1-1</a></li>
					<li><a href="#">menu2-1</a></li>
					<li><a href="#">menu3-1</a></li>
					<li><a href="#">menu4-1</a></li>
				</ul>
			</div>
			<div class="col-12">
				<ul>
					<li><a href="#">menu1-2</a></li>
					<li><a href="#">menu2-2</a></li>
					<li><a href="#">menu3-2</a></li>
				</ul>
			</div>
			</div>
			
		
			<div id="content" class="row mrow">
				<div class="col-8">
					<h1>list</h1>
					
						<div id="table" class="container">
							<div class="row mrow">
								<div class="col-3 mcol-4">사번</div>
								<div class="col-3 mcol-8">이름</div>
								<div class="col-3 mcol-0">날짜</div>
								<div class="col-3 mcol-0">급여</div>
							</div>
							<%for(javaBeab beab:list){ %>
							<div class="row mrow">
								<div class="col-3 mcol-4"><%=beab.getSabun() %></div>
									<div class="col-3 mcol-8"><%=beab.getName() %></div>
									<div class="col-3 mcol-0"><%=beab.getDate() %></div>
									<div class="col-3 mcol-0"><%=beab.getPay() %></div>
							</div>
							<% }%>
						</div>
				</div>
				<div class="col-4 mcol-0">
					<ul>
						<li>menu1-1</li>
						<li>menu1-2</li>
						<li>menu1-3</li>
						<li>menu1-4</li>
					</ul>
				</div>
			</div>
			
			<div id="footer" class="row mrow">
				<div class="col-5 mcol-0">
					<p>logo</p></div>
				<div class="col-7 mcol-12">
					<p>CopyRight:doyouhave?</p>
				</div>
			</div>
			
			
		</div>
	</body>
</html>