<%@page import="com.min.edu.dto.User_Dto"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	table{
		border: 1px solid black;
	}
	th{
		border: 1px solid black;
		background-color: lime;
	}
	tr,td{
		border: 1px solid black;
	}
</style>
</head>
<%
	List<User_Dto> lists =(List<User_Dto>)request.getAttribute("lists");
%>
<body>

<div>
	<table>
		<tr>
			<th>U_ID</th>
			<th>U_PASSWORD</th>
			<th>U_NAME</th>
			<th>U_EMAIL</th>
			<th>U_PHONE</th>
			<th>U_ENABLE</th>
			<th>U_AUTH</th>
			<th>F_NAME</th>
		</tr>
		<%
			for(User_Dto dto : lists){
		%>
			<tr>
				<td>
				<a href="./mainOne.do?id=<%=dto.getU_id()%>">
				<%=dto.getU_id()%>
				</a>
				</td>
				<td><%=dto.getU_password()%></td>
				<td><%=dto.getU_name()%></td>
				<td><%=dto.getU_email()%></td>
				<td><%=dto.getU_phone()%></td>
				<td><%=dto.getU_enable()%></td>
				<td><%=dto.getU_auth()%></td>
				<td><%=dto.getF_name()%></td>
			</tr>
		<%
		}
		%>
		<tr>
			<td>
				<input type="button" value="뒤로가기" onclick="back()">
			</td>
		</tr>
	</table>
</div>
</body>
<script type="text/javascript">
	function back() {
		location.href="index.do";
	}
</script>
</html>