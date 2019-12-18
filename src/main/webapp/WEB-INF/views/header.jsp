<%@page import="com.min.edu.dto.User_Dto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<script src="./js/jquery-3.4.1.js"></script>

<style type="text/css">
._qwxfmx4 {
	background-color: #ffe6e6;
}
</style>
<%
Object obj = session.getAttribute("user");
User_Dto Udto = (User_Dto)obj;
%>

<%=Udto.getU_name()%>! Welcome!!(등급:<%=Udto.getU_auth().equals("A")?"Administor":"User"%>)
<nav class="_qwxfmx4">
	<ul class="_d2rh6x">
		<div class="_h69t7tv">
			<li class="_gnp0sp"><a class="_3fec4mm" href="/host/homes">후기 게시판</a></li>
		</div>
		<div class="_h69t7tv">
			<li class="_gnp0sp"><a class="_3fec4mm" href="/help">자유 게시판</a></li>
		</div>
		<li class="_gnp0sp"><a class="_3fec4mm"
			href="/signup_login?redirect_url=%2F">공지 게시판</a></li>
		<li class="_gnp0sp"><a class="_3fec4mm"
			href="">로그인</a></li>
	</ul>
</nav>

<div>

</div>
