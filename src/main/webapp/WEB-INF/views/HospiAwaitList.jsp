<%@page import="com.min.edu.dto.Hospi_Dto"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style type="text/css"></style>
<title>병원신청대기 페이지</title>
<%
		Object obj = request.getAttribute("Alists");
		List<Hospi_Dto> lists = (List<Hospi_Dto>) obj;
%>

</head>
<body>
	<jsp:include page="./header.jsp"/>

	<div class="HListDiv">
	<h2>병원신청대기목록입니다.</h2>
	
		<table id="HList">
			<thead>
				<tr>
					<th>회원아이디</th>
					<th>병원이름</th>
					<th>전화번호</th>
					<th>이메일</th>
					<th>진료과</th>
					<th>진료동물</th>
					<th>사업자등록증</th>
					<th>권한</th>
					
				</tr>
			</thead>
			
			<tbody>
				<% 
					for(Hospi_Dto dto : lists){
						if(dto.getH_enable().equals("Y")){
				%>
			
		<tr>
			<td><%=dto.getU_id() %></td>
			<td><%=dto.getH_name() %></td>
			<td><%=dto.getH_phone() %></td>
			<td><%=dto.getH_mail() %></td>
			<td></td>
			<td></td>
			<td><%=dto.getH_regi() %></td>
			<td><%=dto.getH_enable() %></td>
			<td><button onclick="changeAuth('<%=dto.getU_id()%>')">권한변경</button></td>
		</tr>
			</tbody>
			
				<%
						}
						}
				%>
			
		</table>
		
	<input type="button" name="btn" value="뒤로가기" onclick="back()">
	<input type="button" name="btn" value="권한변경" onclick="changeHospital()">
	<input type="button" name="btn" value="병원추가" onclick="addHospital()">
	
	<script type="text/javascript">
		function back() {
			location.href="./HospiList.do";
		}
		
		function changeHospital(id) {
			alert("사업자등록증을 확인하세요.");
			location.href="./changeHospital?id="+id;
		}
		
		function addHospital(id) {
			location.href="./addHospital?id="+id;
		}
	
	
	</script>

	</div>
	
	
</body>
</html>