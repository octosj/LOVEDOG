<%@page import="com.min.edu.dto.User_Dto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>유저 상세 정보 페이지</title>
<style type="text/css">
table, th {
	border: 1px solid black;
}

tr, td {
	border: 1px solid black;
}
</style>
</head>
<%
	User_Dto dto = (User_Dto)request.getAttribute("dto");
%>
<body>
	<div>
		<img alt="프로필 사진" src="">

		<table>
			<tr>
				<th>아이디</th>
				<td><%=dto.getU_id() %></td>
			</tr>
			<tr>
				<th>이름</th>
				<td><%=dto.getU_name() %></td>
			</tr>
			<tr>
				<th>전화번호</th>
				<td><%=dto.getU_phone() %></td>
			</tr>
			<tr>
				<th>이메일</th>
				<td><%=dto.getU_email() %></td>
			</tr>
		</table>
		<div>
			<tr>
				<td><input type="button" value="뒤로가기" onclick="back()">
				<input type="button" value="권한수정"	onclick="AuthChangeForm()">
				</td>
			</tr>
		</div>
	</div>
	<script type="text/javascript">
	function back() {
		location.href="index.do";
	}
	
	function AuthChangeForm(){
		location.href ="AuthChange.do";
	}
</script>
</body>
</html>