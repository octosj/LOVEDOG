
<%@page import="com.min.edu.dto.Hospi_Dto"%>
<%@page import="com.min.edu.dto.User_Dto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
	<%
		Hospi_Dto dto =(Hospi_Dto)request.getAttribute("dto");
	%>
<body>

	
	<h1>수정 화면</h1>
	<div>
		<form action="./modifyHospi.do" method="post" onsubmit="return submitCheck()">
			<table>
				<tr>
					<th>병원 이름</th>
					<td><input type="text" id="h_name" value="${sessionScope.dto.h_name}"></td>
				</tr>
				<tr>
					<th>병원 비밀번호</th>
					<td><input type="password" id="h_password" value="${sessionScope.dto.h_password}"></td>
				</tr>
				<tr>
					<th>병원 이메일</th>
					<td><input type="email" id="h_mail" value="${sessionScope.dto.h_mail}"></td>
				</tr>
			</table>
			
			<tr>
				<td>
					<input type="submit" value="작성완료">
					<input type="button" value="뒤로가기" onclick="back()">
				</td>
			</tr>
		</form>
	</div>
	<script type="text/javascript">
	function submitCheck(){
// 		alert("작동");
		var h_password = document.getElementById("h_password");
		var h_phone = document.getElementById("h_phone");
		var h_email = document.getElementById("h_email");
// 		alert(add+":"+phone+":"+email);
		var regExp = /^[A-Za-z0-9_\.\-]+@[A-Za-z0-9\-]+\.[A-Za-z0-9\-]+/;
		
		if (add.value == "") {
			alert("비밀번호를 입력해주세요");	
			add.focus();
			return false;
		}else if(h_phone.value == ""){
			alert("전화번호를 입력해주세요");	
			h_phone.focus();
			return false;
		}else if(h_mail.value == "" || h_mail.value.match(regExp) == null){
			alert("이메일 값 및 형식을 확인 해주세요");	
			h_mail.value ="";
			h_mail.focus();
			return false;
		}
		return true;
	}
	function back() {
		location.href = "./index.do";
	}
	</script>
</body>
</html>