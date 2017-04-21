<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width,initial-scale=1.0">

<link rel="stylesheet" type="text/css" href="../css/frame.css"/>
<link rel="stylesheet" type="text/css" href="../css/table.css"/>

<script type="text/javascript" src="../js/jquery-1.12.4.js"></script>
    <script type="text/javascript">
	$(document).ready(function(){
		$('button[type="button"]').click(function(){
			window.location.replace('join.hb');
		});
		
	});
</script>

<style>
#content>form>div>label{
	width:100px;
	display:inline-block;
	text-align: center;
}

</style>
</head>
<body>
	<%@ include file = "template/header.jspf" %>
	<%@ include file = "template/menu.jspf" %>
	<div id="content">
		<h1>로그인 페이지</h1>
		<form action="result.hb" method="post">
			<div>
				<label for="id">id</label>
				<input type="text" name="id" id="id"/>
			</div>
			<div>
				<label for="pw">pw</label>
				<input type="text" name="pw" id="pw"/>
			</div>
			<div>
				<button type="submit">로그인</button>
				<button type="button">회원가입</button>
			</div>
			
		</form>
	</div>
	<%@ include file = "template/footer.jspf" %>
</body>
</html>