<%@page import="com.min.edu.dto.Hospi_Dto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>병원 메인페이지</title>
</head>
	<%
		Hospi_Dto Hdto = (Hospi_Dto) session.getAttribute("Hdto");
	%>
<body>
	<h3><a href="./H_main.do">병원 리스트 조회</a></h3>
<%-- 	<h3><a href="./H_Mypage.do?u_id=<%=Hdto.getU_id()%>">병원 마이 페이지</a></h3> --%>
<!-- 	<h3><a href="./H_Mypage.do">병원 마이 페이지</a></h3> -->
</body>
</html>