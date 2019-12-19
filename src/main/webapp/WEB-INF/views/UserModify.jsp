
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
		User_Dto dto =(User_Dto)request.getAttribute("dto");
	%>
<body>

	
	<h1>수정 화면</h1>
	<div>
		<form action="./modifyUser.do" method="post" onsubmit="return submitCheck()">
			<table>
				<tr>
					<th>아이디</th>
					<td><input type="text" id="u_id" value="${sessionScope.dto.u_id}"></td>
				</tr>
				<tr>
					<th>비밀번호</th>
					<td><input type="password" id="u_password" value="${sessionScope.dto.u_password}"></td>
				</tr>
				<tr>
					<th>이메일</th>
					<td><input type="email" id="u_email" value="${sessionScope.dto.u_email}"></td>
				</tr>
				<tr>
					<th>전화번호</th>
					<td><input type="text" id="u_phone" value="${sessionScope.dto.u_phone}"></td>
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
		var password = document.getElementById("password");
		var phone = document.getElementById("phone");
		var email = document.getElementById("email");
// 		alert(add+":"+phone+":"+email);
		var regExp = /^[A-Za-z0-9_\.\-]+@[A-Za-z0-9\-]+\.[A-Za-z0-9\-]+/;
		
		if (add.value == "") {
			alert("비밀번호를 입력해주세요");	
			add.focus();
			return false;
		}else if(phone.value == ""){
			alert("전화번호를 입력해주세요");	
			phone.focus();
			return false;
		}else if(email.value == "" || email.value.match(regExp) == null){
			alert("이메일 값 및 형식을 확인 해주세요");	
			email.value ="";
			email.focus();
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