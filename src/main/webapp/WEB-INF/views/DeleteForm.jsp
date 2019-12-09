<%@page import="com.min.edu.dto.User_Dto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	table,tr{
		border : 1px solid black;
	}
	
	th,td{
		border : 1px solid black;
	}
	
</style>
</head>
<%
	User_Dto dto =(User_Dto) request.getAttribute("dto");
%>
<body>
	<div>
		<table>
			<tr>
				<th><input type="checkbox" name="checkbox" onclick="Check()"></th>
				<th>아이디</th>
				<th>이름</th>
				<th>이메일</th>
				<th>전화번호</th>
				<th>삭제 여부</th>
			</tr>
			
			<tr>
				<td><input type="checkbox" name="chk" value="<%=dto.getU_id() %>"></td>
				<td><%=dto.getU_id()%></td>
				<td><%=dto.getU_name()%></td>
				<td><%=dto.getU_email()%></td>
				<td><%=dto.getU_phone()%></td>
				<td><%=dto.getU_enable()%></td>
			</tr>
		</table>
	</div>
</body>
</html>