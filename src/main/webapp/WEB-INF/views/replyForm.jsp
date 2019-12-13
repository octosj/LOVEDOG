<%@page import="com.min.edu.dto.FreeBoard_Dto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>답글</title>
</head>
<body>
<%
	FreeBoard_Dto dto = (FreeBoard_Dto)request.getAttribute("dto");
%>

<form action="./reply.do?u_id=<%=dto.getU_id()%>&selEtc=<%=dto.getB_type()%>" method="post">
	<input type="hidden" name="seq" value="<%=dto.getSeq()%>">
	<input type="hidden" name="b_type" value="<%=dto.getB_type()%>">
	<table>
		<tr>
			<td>아이디</td>
			<td>
				<%=dto.getU_id()%>
			</td>
		</tr>
		<tr>
			<td>제목</td>
			<td>
				<input type="text" name="title" required="required">
			</td>
		</tr>
		<tr>
			<td id="context">답글 내용</td>
			<td>
				<input type="hidden" id="hiddenContent" value="<%=dto.getContent()%>">
				<textarea id="txtArea" rows="5" cols="30" name="content" required="required" onclick="contentCheck()"></textarea>
			</td>
		</tr>
		<tr>
			<td>작성일</td>
			<td><%=dto.getRegdate()%></td>
		</tr>
		<tr>
			<td>
				<input type="submit" value="답글입력">
				<input type="reset" value="초기화">
			</td>
		</tr>
	</table>
</form>

</body>
</html>