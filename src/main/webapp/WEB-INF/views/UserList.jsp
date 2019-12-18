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
table {
	border: 1px solid black;
}

th {
	border: 1px solid black;
	background-color: lime;
}

tr, td {
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
				<th><input type="checkbox" onclick="checkAll(this.checked)">
				</th>
				<th>아이디</th>
				<th>이름</th>
				<th>전화번호</th>
				<th>이메일</th>
				<th>권한</th>
			</tr>
			<%
			for(User_Dto dto : lists){
		%>

			<tr>
				<td><input type="checkbox" name="chk"
					value="<%=dto.getU_id()%>"></td>
				<td><a href="mainOne.do?u_id=<%=dto.getU_id()%>"> <%=dto.getU_id()%>
				</a></td>
				<td><%=dto.getU_name()%></td>
				<td><%=dto.getU_phone()%></td>
				<td><%=dto.getU_email()%></td>
				<td><%=dto.getU_auth()%></td>
			</tr>
			<%
		}
		%>

		</table>
		<div>
			<tr>
				<td><input type="button" value="뒤로가기" onclick="back()">
				</td>
			</tr>
		</div>
	</div>
</body>
<script type="text/javascript">
	function back() {
		location.href="index.do";
	}
	
	function checkAll(bool){
		var chk = document.getElementsByName("chk");
		for (var i = 0; i < chk.length; i++) {
			chk[i].checked = bool;
		}
	}
</script>
</html>