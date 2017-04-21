<%@page import="com.hb.model.GuestDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width,initial-scale=1.0">
<title>Insert title here</title>
<style>
	span{
		display:inline-block;
	}
</style>
<jsp:useBean id="dto" scope="request" class="com.hb.model.GuestDto"></jsp:useBean>
<script type="text/javascript" src="js/jquery-1.12.4.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		$('button').click(function(){
			if($(this).text()=='수정'){
				window.location.herf="edit.hb?sabun=<%=dto.getSabun()%>";
			}
		})
		
	})
</script>
</head>

<body>
<%@ include file="template/header.jspf" %>
<%@ include file="template/menu.jspf" %>
	<div id="content">
		<h1>상세페이지</h1>
		<div>
			<span class="col1">제목</span>
			<span><jsp:getProperty property="sub" name ="dto"></jsp:getProperty>제목값</span>
		</div>
		<div>
			<span class="col1">사번</span>
			<span><jsp:getProperty property="sabun" name ="dto"></jsp:getProperty>사번값</span>
			<span class="col1">이름</span>
			<span><jsp:getProperty property="name" name ="dto"></jsp:getProperty>이름값</span>
		</div>
		<div>
			<span class="col1">날짜</span>
			<span><jsp:getProperty property="nalja" name ="dto"></jsp:getProperty>날짜값</span>
			<span class="col1">급여</span>
			<span><jsp:getProperty property="pay" name ="dto"></jsp:getProperty>급여값</span>
		</div>	
		<div><button>수정</button><button>삭제</button></div>
	</div>
<%@ include file="template/footer.jspf" %>
</body>
</html>