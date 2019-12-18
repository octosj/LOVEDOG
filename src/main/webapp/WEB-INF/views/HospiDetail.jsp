<%@page import="com.min.edu.dto.Reserv_Dto"%>
<%@page import="com.min.edu.dto.Hospi_Dto"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<script type="text/javascript" src="./js/jquery-3.4.1.js"></script>
<meta charset="UTF-8">
<style type="text/css"></style>
<title>병원 상세보기 페이지</title>
<%
		Hospi_Dto hdto = (Hospi_Dto)request.getAttribute("dto");
// 		Reserv_Dto rdto = (Reserv_Dto)request.getAttribute("HObj");
%>

</head>
<body>
	<jsp:include page="./header.jsp"/>

	<form action="./addHospital.do?u_id=<%=hdto.getU_id()%>&h_name=<%=hdto.getH_name() %>" method="post" onsubmit="return changeAuth()">
	<table>
		<thead>
				<tr>
					<th>사업자등록증</th>
					<td><%=hdto.getH_regi()%></td>
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
<!-- 					<select name='fruits' size='7'> -->
<!-- 						  <option value='' selected>-- 선택 --</option> -->
<!-- 						  <option value='apple'>사과</option> -->
<!-- 						  <option value='banana'>바나나</option> -->
<!-- 						  <option value='lemon'>레몬</option> -->
<!-- 					</select> -->
				</tr>
				
				<tr>
					<th>진료동물</th>
					<td><%=hdto.getMain_ani()%></td>
				</tr>
				
				<tr>
					<th>권한수정</th>
					<td id="chkAuth"><%=hdto.getH_enable()%></td>
					<td>
					<select id='chageAuth'>
						  <option value=''>-- 권한수정 --</option>
						  <option value='N' >신청완료자 : N</option>
						  <option value='Y' >신청자 : Y</option>
					</select>
					<input type="button" value="권한변경" onclick="changeAuth()">
					</td>
				</tr>


			</tbody>
			
			
	</table>
			<input type="submit"  value="병원추가" >

	</form>
	
	<script type="text/javascript">
	
	function changeAuth() {
		var chageAuth = $("#chageAuth");
		var auth;
		
		var idx = document.getElementById("chageAuth").selectedIndex;
		var val = document.getElementById("chageAuth").options[idx].value;
		
		document.getElementById("chkAuth").innerHTML = val;
		alert("사업자등록증 번호를 반드시 확인해주세요.");
		
	}
	
	</script>
	
	
</body>
</html>