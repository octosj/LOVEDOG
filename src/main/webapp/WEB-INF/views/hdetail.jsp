<%@page import="java.util.List"%>
<%@page import="com.min.edu.dto.HongBoard_Dto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>병원 정보 게시판 상세보기</title>
<style type="text/css">

	table, th, td{
			background-color : white;
			border: 1px solid black;
			border-collapse: collapse;
			font-size:0.95em;
			text-align:center;
			padding:4px;
		}
</style>
</head>
<%
	List<HongBoard_Dto> lists = (List<HongBoard_Dto>)request.getAttribute("lists") ;
	HongBoard_Dto dto = lists.get(0);
%>
<body>
<table>
	<tbody>
		<tr>
			<th>글 번호</th>
			<td><%=dto.getSeq()%></td>
		</tr>
		<tr>
			<th>작성자</th>
			<td><%=dto.getU_id()%></td>
		</tr>
		<tr>
			<th>제목</th>
			<td><%=dto.getTitle()%></td>
		</tr>
		<tr>
			<th>내용</th>
			<td>
			<%=dto.getContent()%>
			</td>
		</tr>
		<tr>
			<th>등록일</th>
			<td>
				<%=dto.getRegdate()%>
			</td>
		</tr>
		<tr>
			<th>사업자등록증</th>
			<td>
				<%=dto.getH_regi()%>
			</td>
		</tr>
	</tbody>
</table>
	<form>
		<input type="button" id="modifyForm" value="수정" onclick="modifyjs()">
		<input type="button" id="delBoard" value="삭제" onclick="deletejs()">
		<input type="button" id="replyForm" value="답글" onclick="replyjs()">
	</form>






</body>
</html>








