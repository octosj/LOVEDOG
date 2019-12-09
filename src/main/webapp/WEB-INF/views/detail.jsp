<%@page import="com.min.edu.dto.FreeBoard_Dto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상세보기</title>
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
	FreeBoard_Dto dto = (FreeBoard_Dto)request.getAttribute("lists");
%>
<body>
<script type="text/javascript">
function modifyjs(){
	location.href="./modifyForm.do?seq="+<%=dto.getSeq()%>;
}

function replyjs(){
//	alert("a");
	location.href="./replyForm.do?seq="+<%=dto.getSeq()%>;
}

function deletejs(){
// 	location.href="./del.do?seq=${dto.seq}&selEtc=F";
//	var objidx = document.getElementById('selETC');

	location.href="./del.do?seq="+<%=dto.getSeq()%> + "&selEtc=" + '<%=dto.getB_type()%>';

}




</script>
<table>
	  <!-- <div>
   	  	<input type="hidden" name="selETC" id="selETC" onload="selViewD()">
      </div> -->
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
	</tbody>
</table>
	<form>
		<input type="button" id="modifyForm" value="수정" onclick="modifyjs()">
		<input type="button" id="delBoard" value="삭제" onclick="deletejs()">
		<input type="button" id="replyForm" value="답글" onclick="replyjs()">
	</form>



</body>
</html>












