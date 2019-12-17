<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div>
		<img alt="돌아가기" src="">
		<h2 align="right">병원 정보 게시판</h2>
	</div>
	<h1>수정 화면</h1>
	<div>
		<form action="./modifyUser.do" method="post">
			<table>
				<tr>
					<th>아이디</th>
					<td><input type="text" id="id" value="ID"></td>
				</tr>
				<tr>
					<th>비밀번호</th>
					<td><input type="text" id="password" value="Password"></td>
				</tr>
				<tr>
					<th>이메일</th>
					<td><input type="email" id="email" value="E-mail"></td>
				</tr>
				<tr>
					<th>전화번호</th>
					<td><input type="text" id="phone" value="Phone"></td>
				</tr>
			</table>
			
			<tr>
				<td>
					<input type="submit" value="작성 완료">
				</td>
			</tr>
		</form>
	</div>
</body>
</html>