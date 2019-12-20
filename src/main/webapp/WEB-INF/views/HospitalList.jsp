<%@page import="com.min.edu.dto.Hospi_Dto"%>
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
	List<Hospi_Dto> Hdto =(List<Hospi_Dto>)request.getAttribute("Hdto");
%>
<body>
	<jsp:include page="./header.jsp"></jsp:include>
	<div>
		<table>
			<tr>
				<th><input type="checkbox" onclick="checkAll(this.checked)">
				</th>
				<th>아이디</th>
				<th>병원 이름</th>
				<th>병원 주소</th>
				<th>병원 이메일</th>
				<th>병원 전화번호</th>
				<th>삭제 여부</th>
			</tr>
			<%
			for(Hospi_Dto dto : Hdto){
		%>

			<tr>
				<td><input type="checkbox" name="chk" value="<%=dto.getU_id()%>"></td>
				<td><%=dto.getU_id()%> </td>
				<td><%=dto.getH_name()%></td>
				<td><%=dto.getH_address()%></td>
				<td><%=dto.getH_mail()%></td>
				<td><%=dto.getH_phone()%></td>
				<td><%=dto.getH_enable()%></td>
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
	function checkAll(bool){
		var chk = document.getElementsByName("chk");
		for (var i = 0; i < chk.length; i++) {
			chk[i].checked = bool;
		}
	}
	function back() {
		location.href="init.do";
	}
</script>
</html>