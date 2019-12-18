<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style>
	#HMdiv {
		 width: 150px;
		 height: 200px;
		 text-align: right;
		 background-color: skyblue;
		 margin-top: 20px;
		 float: right;
	}
	
	.HMtotal{
		float: right;
	}


</style>
<title>관리자 첫화면</title>
</head>
<body>
<jsp:include page="./header.jsp"/>
<h1></h1>

<div class="HMtotal">
	<button onclick="myFunction()">profile</button>

	<div id="HMdiv">
	<a href="./HospiList.do?u_id=HOSPITAL1">회원관리</a><br>
	<a href="">병원관리</a><br>
	<a href="">예약관리</a><br>
	<a href="">LOGOUT</a><br>
	</div>
	
</div>

<script>
function myFunction() {
  var x = document.getElementById("HMdiv");
  if (x.style.display === "none") {
    x.style.display = "block";
  } else {
    x.style.display = "none";
  }
}
</script>


</body>
</html>

