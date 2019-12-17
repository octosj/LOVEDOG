<%@page import="com.min.edu.dto.FreeBoard_Dto"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>글작성</title>
</head>
<%
	FreeBoard_Dto mdto = (FreeBoard_Dto)request.getAttribute("mdto");
%>
<body>
<form action="./Nwrite.do?selEtc=<%=mdto.getB_type()%>" method="post">
<table>
		<tr>
			<!-- 작성자는 로그인한 그 아이디! 이 부분은 나중에 세션을 담으면 된다 -->
			<td>작성자&nbsp;<input type="text" name="u_id"></td>
		</tr>	
		<tr>
			<td>제목&nbsp;<input type="text" name="title"></td>
		</tr>
		<tr>
			<td>내용<br><textarea rows="5" cols="50" name="content"></textarea></td>
		</tr>
		<tr>
			<td>파일 업로드<input type="file" name="f_name"></td>
		</tr>
</table>
		<input type="submit" id="insert" value="글등록">
		<input type="hidden" name="b_type" value="<%=mdto.getB_type()%>">
</form>
</body>
</html>

