<%@page import="com.min.edu.dto.HongBoard_Dto"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>병원 정보 게시판</title>
<style type="text/css">

   table, th, td{
         background-color : white;
         border: 1px solid black;
         border-collapse: collapse;
         font-size:0.95em;
         text-align:center;
         padding:4px;
      }
      
   th{background-color:skyblue;}
</style>
</head>
<script type="text/javascript">
	function writeForm(){
		location.href="./write.do";

	}

	function main(){
		location.href="./init.do";
	}
	
</script>
<body>
<%
	List<HongBoard_Dto> lists = (List<HongBoard_Dto>)request.getAttribute("lists");
%>

<table>
   <thead>
      <tr>
         <th>seq</th>
         <th>u_id</th>
         <th>title</th>
         <th>regdate</th>
         <th>readcount</th>
         <th>regi</th>
      </tr>
   </thead>

   <%for(HongBoard_Dto dto : lists){%>
   <tbody>
      <tr>
         <td><%=dto.getSeq()%></td>
         <td><%=dto.getU_id()%></td>
         <td><a href="hdetail.do?seq=<%=dto.getSeq()%>&h_regi=<%=dto.getH_regi()%>"><%=dto.getTitle()%></a></td>
         <td><%=dto.getRegdate()%></td>
         <td><%=dto.getReadcount()%></td>
         <td><%=dto.getH_regi()%></td>
      <%
   }
      %>
      </tr>
   </tbody>

</table>
<input type="button" id="Nwrite" value="새글작성" onclick="writeForm()">
<input type="button" id="main" value="메인으로 가기" onclick="main()">
</body>
</html>









