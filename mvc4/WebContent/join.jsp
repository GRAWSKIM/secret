<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width,initial-scale=1.0">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="../css/frame.css"/>
<link rel="stylesheet" type="text/css" href="../css/table.css"/>
<style>
</style>
<script lang="javascript" src="../js/jquery-1.12.4.js"></script>
<script lang="javascript">
$(document).ready(function() {
	$('form').on('submit',function(){
		$('form input').each(function() {
			if($(this).val()=='')return false;
		});
	if(nxt)return false;
	});
	
	$('#id').on("keyup",function(){
		var val=$('#id').val();
		if(val.trim()!=''){
		$.ajax({
			'url':'idchk.hb',
			'method ':'get',
			'data':{'id':val},
			'dataType':'json',
			'error':function(jqXHR, textStatus){
				alert(textStatus);
			},
			'success':function(data){
				if(data.chk[0].result){
					nxt=true;
					$('#idchk').text('사용불가:중복된 아이디');
					$('#id').css('border','2px solid red');
				}else{
					nxt=false;
					$('#idchk').text('사용가능');
					$('#id').css('border','2px solid gray');
				}
				
			}
		});
		}
	});
});
</script>
</head>
<body>
	<%@ include file = "template/header.jspf" %>
	<%@ include file = "template/menu.jspf" %>
	<div id="content">
		<h1>회원가입</h1>
		<form action="member.hb" method="post">
			<div>
				<label>id</label>
				<input type="text" id="id" name="id"/>
				<span id="idchk"></span>
			</div>
			<div>
				<label>pw</label>
				<input type="text" id="pw" name="pw"/>
			</div>
			<div>
				<label>email</label>
				<input type="text" id="email" name="email"/>
			</div>
			<div>
				<button type="submit">회원가입</button>
				<button type="button">뒤로</button>
			</div>
		</form>
	</div>
	<%@ include file = "template/footer.jspf" %>
</body>
</html>