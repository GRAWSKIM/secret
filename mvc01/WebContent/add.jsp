<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width,initial-scale=1.0">
<title>Insert title here</title>
<style>
</style>
</head>
<body>
	<h1>입력페이지</h1>
	<form action="insert.hb" method="post">
		<p><lable for="sabun">사번</lable><input type="text" name="sabun" id="sabun"></p>
		<p><lable for="name">이름</lable><input type="text" name="name" id="name"></p>
		<p><lable for="pay">금액</lable><input type="text" name="pay" id="pay"></p>
		<p><input type="submit" value="제출"></p>
	</form>

</body>
</html>