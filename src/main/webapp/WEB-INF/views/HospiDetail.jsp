<%@page import="com.min.edu.dto.Hospi_Dto"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style type="text/css"></style>
<title>병원상세페이지</title>
<%
		Object obj = request.getAttribute("dto");
		Hospi_Dto hdto = (Hospi_Dto)obj;
%>

</head>
<body>
	<jsp:include page="./header.jsp"/>

	<div class="HListDiv">
	<form action="./updateHospital.do" method="post">
	<table id="HList">
		<thead>
				<tr>
					<th>사업자등록증</th>
					<td></td>
				</tr>
				<tr>
					<td>회원아이디</td>
					<td>병원 이름</td>
					<td></td>
					<td>전화번호</td>
					<td>이메일</td>
				</tr>
			</thead>
				
			<tbody>
				<tr>
<%-- 					<td><input type="hidden" name="id" value="<%=hdto.getId()%>"><%=hdto.getId()%></td> --%>
<%-- 					<td><input type="text" name="address" id="address" value="<%=hdto.getAddress()%>"></td> --%>
<%-- 					<td><input type="text" name="name" id="name" value="<%=hdto.getName()%>"></td> --%>
<%-- 					<td><input type="text" name="phone" id="phone" value="<%=hdto.getPhone()%>"></td> --%>
<%-- 					<td><input type="text" name="email" id="email" value="<%=hdto.getEmail()%>"></td> --%>
				</tr>
			</tbody> 
			
			<tfoot>
				<tr>
					<td colspan="5">
						<input type="submit" value="수정완료">
					</td>
				</tr>
			</tfoot>
	</table>
	</form>
	
	</div>
	
	
</body>
</html>