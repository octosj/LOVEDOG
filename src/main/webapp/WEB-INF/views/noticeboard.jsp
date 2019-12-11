<%@page import="com.min.edu.dto.FreeBoard_Dto"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지게시판</title>
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
	function selView(){
		var objidx = document.getElementById('selETC');
// 		alert(objidx.selectedIndex);
// 		alert(objidx.options[objidx.selectedIndex].value);
		location.href="./noticeboard.do?selEtc=A";
		
	}

	function writeForm(){
		location.href="./write.do";
	}

</script>
<body>

<%
   List<FreeBoard_Dto> lists = (List<FreeBoard_Dto>)request.getAttribute("lists");
%>

<table>
   	  <div>
   	  	<input type="hidden" name="selETC" id="selETC" onload="selViewA()">
      </div>
   <thead>
      <tr>
         <th>seq</th>
         <th>u_id</th>
         <th>title</th>
         <th>regdate</th>
         <th>readcount</th>
         <th>b_type</th>
      </tr>
   </thead>


   <%for(FreeBoard_Dto dto : lists){%>
   <tbody>
      <tr>
         <td><%=dto.getSeq()%></td>
         <td><%=dto.getU_id()%></td>
         <td><a href="detail.do?seq=<%=dto.getSeq()%>"><%=dto.getTitle()%></a></td>
         <td><%=dto.getRegdate()%></td>
         <td><%=dto.getReadcount()%></td>
         <td><%=dto.getB_type()%></td>
      <%
   }
      %>
      </tr>
   </tbody>

</table>
<input type="button" id="Nwrite" value="새글작성" onclick="writeForm()">
</body>
</html>