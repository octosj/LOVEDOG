<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<head>

<meta charset="UTF-8">
<title>예약 추가</title>
<script type="text/javascript">
	function r_dateChk() {
		var r_date = $("#r_date");
		alert(r_date)
	}
</script>
</head>
<body>
<jsp:include page="./header.jsp"></jsp:include>
<form action="">
			병원 이름
			${hDetail.h_name}<br>
			예약시간 선택
				<select onchange="r_dateChk()" name="r_date" id="r_date">
					<option>--예약 시간--</option>                                               
					<option value="090000">9시</option>                                             
					<option value="100000">10시</option>                                            
					<option value="110000">11시</option>                                            
					<option value="120000">12시</option>                                            
					<option value="130000">13시</option>                                            
					<option value="140000">14시</option>                                            
					<option value="150000">15시</option>                                            
					<option value="160000">16시</option>                                            
					<option value="170000">17시</option>                                            
					<option value="180000">18시</option>                                            
					<option value="190000">19시</option>                                            
					<option value="200000">20시</option>
				</select>
		<div>
			진료 과 선택
				<select id="obj" onchange="objChk()">
			<c:forEach items="${HObj}" var="ODto">
				<option value="${ODto.main_obj}">${ODto.obj_code}</option>
			</c:forEach>
				</select>
		</div>
		<div>
			진료 동물 선택
				<select id="ani" onchange="aniChk()">
			<c:forEach items="${HAni}" var="ADto">
				<option value="${ADto.main_ani}">${ADto.ani_code}</option>
			</c:forEach>
				</select>
		</div>
		<div>
			진료 내용
			<textarea cols="100" rows="10" name="r_content">qwqwqw</textarea>
			
		</div>
			<input type="hidden" value="${hDetail.h_regi}" name="h_regi">
			<input type="hidden" value="${h_regi}" class="chkR_date">
			<input type="submit" value="예약 추가">
</form>
</body>
</html>