<%@page import="com.min.edu.dto.Reserv_Dto"%>
<%@page import="com.min.edu.dto.Hospi_Dto"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style type="text/css"></style>
<title>병원 상세보기 페이지</title>
<%
Hospi_Dto hdto = (Hospi_Dto)request.getAttribute("dto");
%>

</head>
<body>
	<jsp:include page="./header.jsp"/>

	<form action="./addHospital.do?u_id=<%=hdto.getU_id()%>" method="post">
	<table>
		<thead>
				<tr>
					<th>사업자등록증</th>
					<td></td>
				</tr>
		</thead>
		<tbody>
				<tr>
					<th>회원아이디</th>
					<td><%=hdto.getU_id()%></td>
				</tr>
				<tr>
					<th>병원이름</th>
					<td><%=hdto.getH_name()%></td>
				</tr>
				<tr>
					<th>주소</th>
					<td><%=hdto.getH_address()%></td>
				</tr>
				<tr>
					<th>전화번호</th>
					<td><%=hdto.getH_phone()%></td>
				</tr>
				<tr>
					<th>이메일</th>
					<td><%=hdto.getH_mail()%></td>
				</tr>
				<tr>
					<th>진료과</th>
					<td><%=hdto.getMain_obj()%></td>
				</tr>
				<tr>
					<th>진료동물</th>
					<td><%=hdto.getMain_ani()%></td>
				</tr>
				<tr>
					<th>권한수정</th>
					<td><%=hdto.getH_enable()%></td>
					<td><button onclick="changeAuth('<%=hdto.getU_id()%>')">권한변경</button></td>
				</tr>
			</tbody>
			
			
	</table>
			<input type="submit"  value="병원추가" >
	</form>
	
	
	
	
</body>
</html>