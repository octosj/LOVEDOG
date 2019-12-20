<%@page import="com.min.edu.dto.Hospi_Dto"%>
<%@page import="com.min.edu.dto.User_Dto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
		Hospi_Dto dto = (Hospi_Dto)request.getAttribute("dto");
	%>
<body>
	<div>
		<img alt="프로필 사진" src="">
		<table>
			<tr>
				<th>병원 아이디</th>
				<td><%=dto.getU_id()%></td>
			</tr>
			<tr>
				<th>병원 이름</th>
				<td><%=dto.getH_name() %></td>
			</tr>
			<tr>
				<th>병원 주소</th>
				<td><%=dto.getH_address() %></td>
			</tr>
			<tr>
				<th>병원 전화번호</th>
				<td><%=dto.getH_phone() %></td>
			</tr>
			<tr>
				<th>이메일</th>
				<td><%=dto.getH_mail() %></td>
			</tr>
		</table>
		<div>
			<tr>
			<td>
				<input type="button" value="병원 수정" onclick="Hospi_apply()">
				<input type="button" value="병원 탈퇴" onclick="deleteForm()">
				</td>
			</tr>
		</div>
	</div>
</body>
</html>