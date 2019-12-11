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
		<table>
			<tr>
				<th>
					<td>
						<input type="checkbox" onclick="checkAll(this.checked)">
					</td>
				</th>
				<th>아이디</th>
				<th>이름</th>
				<th>전화번호</th>
				<th>이메일</th>
				<th>권한</th>
			</tr>
			
			<tr>
				<td> </td>
				<td> </td>
				<td> </td>
				<td> </td>
				<td> </td>
				<td> </td>
			</tr>
		</table>
		<tr>
			<td>
				<input type="button" value="추가">
				<input type="button" value="수정">
				<input type="button" value="삭제">
			</td>
		</tr>
	</div>
	<script type="text/javascript">
	function checkAll(bool){
		var chk = document.getElementsByName("chk");
		for (var i = 0; i < chk.length; i++) {
			chk[i].checked = bool;
		}
	}
	</script>
</body>
</html>