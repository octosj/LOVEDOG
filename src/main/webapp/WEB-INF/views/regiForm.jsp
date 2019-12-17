<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Join us</title>
</head>
<script type="text/javascript" src="./js/jquery-3.4.1.js"></script>

<script type="text/javascript">

/* function check() {
	var name = document.getElementById("name").value;
	var id = document.getElementById("id").value;
	var pw = document.getElementById("password").value;
	var passOk = document.getElementById("passOk").value;
	var chkId = document.getElementById("chkval").value;
	
	alert(name+":"+id+":"+password+":"+passOk+":");
	
	if(pw != passOk){
		alert("Sign in Error occured. ","Check Your Password again");
		return false;
	}else if(chkId=="0"){
		alert("Sign in Error occured. ","Check Your ID again");
		return false;
	}else if(i_agree2 == false){
		alert("Sign in Error occured. ","Please Accept policy about take Your information (needed)");
		return false;
	}else{
		return true;
	}
} */


function regiCheck(){
	var name = document.getElementById("name").value;
	var id = document.getElementById("id").value;
	var pw = document.getElementById("password").value;
	var email = document.getElementById("email").value;
	var phone = document.getElementById("phone").value;
	
	jQuery.ajax({
        type : "post",
        url : "./regist.do",
        data : "u_id="+id+"&u_password="+pw+"&u_name="+name+"&u_phone="+phone+"&u_email="+email,
		success : function (data) {
			alert(data.u_id);
			alert(data.u_password);
			alert(data.u_name);
			alert(data.u_phone);
			alert(data.u_email);
		}
});
};
</script>

<body>
	<form action="./regist.do" method="post" enctype="multipart/form-data" >
		<table>
			<tr>
				<th>ID</th>
				<td>
					<input type="text" title ="n" name="id" id="id" placeholder="아이디">
					
				</td>
			</tr>
			<tr>
				<th>PASSWORD</th>
				<td>
					<input type="password" name="pw" id="password" placeholder="비밀번호">
				</td>
			</tr>
			<tr>
				<th>NAME</th>
				<td>
					<input type="text" name="name" id="name" required="required" placeholder="성함">
				</td>
			</tr>
			<tr>
				<th>PHONE</th>
				<td>
					<input type="text" name="phone" id="phone" required="required" placeholder="연락처">
				</td>
			</tr>
			<tr>
				<th>EMAIL</th>
				<td>
					<input type="text" name="email" id="email" placeholder="이메일">
					<!-- <input type="button" value="Checking Email" onclick="emailCheck()">  -->
				</td>
			</tr>
			
			<tr>
				<th>File</th>
				<td>
					<input type="file" name="file" placeholder="회원사진" onchange="readURL(this)">
					
				</td>
			</tr>
			
			<tr>
				<th colspan="2">
					<input type="button" value="회원가입완료" onclick="regiCheck()">
					<input type="button" value="돌아가기" onclick="backtomain()">	
				</th>
			</tr>
		</table>	
	</form>
</body>
</html>
