<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>

<%@ include file ="../temple/header.jspf"%>
<%@ include file ="../temple/body.jspf"%>
<%
		String st_idx=request.getParameter("idx");
		int idx=Integer.parseInt(st_idx);
		String sql="delete from lec_bbs where idx=?";
		int i=delOne(sql,idx); 
		if(i>0){%>
			<h1>삭제됨</h1>
	<%		}
	%>
<%@ include file ="../temple/foot.jspf"%>
</body>
</body>
</html>