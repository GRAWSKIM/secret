<%@ page import = "com.hb.dto.Guest01Dao" %>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
   <%@ page errorPage="../error.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%
		request.setCharacterEncoding("EUC-KR");//문자열엔코딩
		
		String name = request.getParameter("name");
		String st_pay = request.getParameter("pay");
		if(st_pay!=null){
			st_pay=st_pay.trim();
		}
	
		
		if(name!=null){
			name = name.trim();
		}
		/*
		for(int i = 0;i<st_pay.length();i++){
			char ch = st_pay.charAt(i);
			if((int)'0'<=(int)ch && (int)'9'>=(int)ch){
				
			}else{
				out.println("<script type = \"text/javascript\">");	
				out.println("alter('금액란 확인ㄱ');history.back();");
				out.println("</script>");
				return;
			}
		}
		*/
		int pay=0;
		try{
		pay = Integer.parseInt(st_pay);
		}catch(Exception e){
			out.println("<script type = \"text/javascript\">");	
			out.println("alert('금액란 확인ㄱ');history.back();");
			out.println("</script>");
			return;
		}
		Guest01Dao dao = new Guest01Dao();
		int result = dao.insertOne(name,pay);
		out.println("<script type = \"text/javascript\">");		
		if(result>0){
		//response.sendRedirect("list.jsp");		
			out.println("alert('입력성공');location.replace('list.jsp');");
		}		
		else{
			//response.sendRedirect("add.jsp");			
			out.println("alert('입력실패');history.back();");
		}
		out.println("</script>");
	%>
</body>
</html>