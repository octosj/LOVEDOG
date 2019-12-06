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
      </tr>
   </thead>

   <%for(HongBoard_Dto dto : lists){%>
   <tbody>
      <tr>
         <td><%=dto.getSeq()%></td>
         <td><%=dto.getU_id()%></td>
         <td><%=dto.getTitle()%></td>
         <td><%=dto.getRegdate()%></td>
         <td><%=dto.getReadcount()%></td>
      <%
   }
      %>
      </tr>
   </tbody>

</table>


</body>
</html>









