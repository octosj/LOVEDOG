<%@page import="com.min.edu.dto.Hospi_Dto"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style type="text/css"></style>
<title>병원관리페이지</title>
<%
		Object obj = request.getAttribute("lists");
		List<Hospi_Dto> lists = (List<Hospi_Dto>) obj;
// 		Hospi_Dto Hdto = (Hospi_Dto)request.getAttribute("lists");
%>

</head>
<body>
	<jsp:include page="./header.jsp"/>
	
	<div class="HListDiv">
	<h2>병원목록입니다.</h2>
	
		<table id="HList">
			<thead>
				<tr>
					<th>회원아이디</th>
					<th>병원이름</th>
					<th>전화번호</th>
					<th>이메일</th>
					<th>사업자등록증</th>
					<th>권한</th>
<!-- 					<th>권한변경</th> -->
				</tr>
			</thead>
			
			<tbody>
				<% 
					for(Hospi_Dto dto : lists){
				%>
			
		<tr>
			<td><a href=""><%=dto.getU_id() %></a></td>
			<td><a><%=dto.getH_name() %></a></td>
			<td><a><%=dto.getH_phone() %></a></td>
			<td><a><%=dto.getH_mail() %></a></td>
			<td><a><%=dto.getH_regi() %></a></td>
			<td><a><%=dto.getH_enable() %></a></td>
		</tr>
			</tbody>
			
				<%
					}
				%>
			
		</table>
		
	<input type="button" name="btn" value="신청대기자" onclick="awaitHospital()">
	
	</div>
	
	<script type="text/javascript">
		function awaitHospital() {
			location.href="./regist.do";
		}
		
		
	
		
	</script>

	
	
</body>
</html>