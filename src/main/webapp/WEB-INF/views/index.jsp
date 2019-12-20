<%@page import="com.min.edu.dto.Hospi_Dto"%>
<%@page import="com.min.edu.dto.User_Dto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<%
	User_Dto dto = (User_Dto) request.getAttribute("Udto");
%>
<body>
	<h3><a href="./main.do">회원 리스트 조회</a></h3>
	<h3><a href="./Mypage.do?u_id=<%=dto.getU_id()%>">마이페이지</a></h3>
</body>
</html>