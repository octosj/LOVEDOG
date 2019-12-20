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
	User_Dto dto = (User_Dto) request.getAttribute("Dto");
%>
<body>
	<form action="./modifyPw.do" method="post">
		<div>
		<h2>${sessionScope.user.u_id}님 안녕하십니까. password를 입력해주세요</h2>
			<table>
				<tr>
					<th>비밀번호 입력</th>
					<td>
						<input type="password" id="password" required="required" value="${sessionScope.user.u_password}">
					</td>
				</tr>
			</table>
				<tr>
					<td >
						<input type="button" value="취소" onclick="Cancel()">
						<input type="submit" value="이동">
					</td>
				</tr>
		</div>
	</form>
	<script type="text/javascript">
	function Cancel() {
		location.href="index.do";
	}
	</script>
</body>
</html>