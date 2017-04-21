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
			#menu>div{
				background-color: #adb56e;
				height: 50px;
			}
					#menu>div>ul{
						width:400px;
						/*overflow: hidden;*/
						padding:0px;
						margin:0px auto;
					}
						#menu>div>ul>li{
							text-align:center;
							width:100px;
							float:left;
							color:white;
							list-style: none;
							height: 50px;
							position: relative;
						}
						#menu>div>ul>li:hover{
							background-color: #edb56e;
							
						}
							#menu>div>ul>li>ul{
								display:none;
								padding:0px;
							}
								#menu>div>ul>li>ul>li{
									list-style:none;
									height: 50px;
									width:100px;
									text-align: center;
								}
									#menu>div>ul>li>ul>li>a{
										text-decoration: none;
										color:white;
									}
									#menu>div>ul>li>ul>li>a:hover,#menu>div>ul>li>ul>li>a:active{
										color:#ffee6f;
									}
							#menu>div>ul>li:hover>ul{
								
								display:inline-block;
								position: absolute;
								background-color:#edb56e;
								top:50px;
								left: 0px;
							}
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
						<li>menu1
							<ul>
								<li><a href="#">menu1-1</a></li>
								<li><a href="#">menu1-2</a></li>
								<li><a href="#">menu1-3</a></li>
								<li><a href="#">menu1-4</a></li>
							</ul>
						</li>
						<li>menu2
							<ul>
								<li><a href="#">menu2-1</a></li>
								<li><a href="#">menu2-2</a></li>
								<li><a href="#">menu2-3</a></li>
								<li><a href="#">menu2-4</a></li>
							</ul>
						</li>
						<li>menu3
							<ul>
								<li><a href="#">menu3-1</a></li>
								<li><a href="#">menu3-2</a></li>
								<li><a href="#">menu3-3</a></li>
								<li><a href="#">menu3-4</a></li>
							</ul>
						
						</li>
						<li>menu4
							<ul>
								<li><a href="#">menu3-1</a></li>
								<li><a href="#">menu3-2</a></li>
								<li><a href="#">menu3-3</a></li>
								<li><a href="#">menu3-4</a></li>
							</ul>
						</li>
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