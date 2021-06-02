<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>GET 방식 submit 데이터 처리</title>
</head>
<body>
	<%
		String str = "홍길동";
		List list = new ArrayList();
		
		System.out.println("aaaa");
		
	%>
	<p>로그인: <%=str%>님</p>
</body>
</html>