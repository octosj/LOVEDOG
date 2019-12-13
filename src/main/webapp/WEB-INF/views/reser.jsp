<%@page import="com.min.edu.dto.AllObj_Dto"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="./js/jquery-3.4.1.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<!-- <script src="./jquery-ui-1.12.1/datepicker-ko.js"></script> -->



<html>
<%
	List<AllObj_Dto> lists = (List<AllObj_Dto>)request.getAttribute("lists");
%>
<head>
<script type="text/javascript">

$(function(){
	$(".calenderBtn").datepicker({
		altField: ".calender",
		showOn: "button",
		buttonImage: "./image/calender1.png", // 버튼 이미지
		buttonImageOnly: true, // 버튼에 있는 이미지만 표시한다.
		minDate: 0,
		maxDate: "+1M +20D",
		selectOtherMonths: true,
		dateFormat: "yy년 mm월 dd일",
		firstDay: 0,
		showMonthAfterYear: true , // 월, 년순의 셀렉트 박스를 년,월 순으로 바꿔준다. 
		dayNamesMin: ['월', '화', '수', '목', '금', '토', '일'], // 요일의 한글 형식.
		monthNames: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'] // 월의 한글 형식.
	});
	
});

function objChk() {
	var objcc = document.getElementById("obj");var val;
	
	for(i=0; i<objcc.options.length; i++) {
	    if(objcc.options[i].selected == true) {
	        val = objcc.options[i].value;
	        break;
	    }
	}
	alert(val);
}

</script>
<script type="text/javascript"></script>
<title>사랑하개</title>
<style type="text/css">

</style>
</head>
<body>
	<div>
		<div>
			<a>예약 신청</a>
			<a>예약 조회 : 병원</a>
			<a>예약 신청 : 사용자</a>
			<a>예약 수정</a>
		</div>
	</div>
	
	<div>
		<div>
			예약 검색
			<form action="">
				<input type="text" class="calender" value="날짜를 입력하세요">
				<input type="hidden" class="calenderBtn"><br>
				
			<select id="obj" onchange="objChk()">
			<c:forEach items="${lists}" var="code">
				<option value="${code.main_obj}">${code.obj_code}</option>
			</c:forEach>
			</select>
			</form>
			


		</div>
	</div>

</body>

</html>
