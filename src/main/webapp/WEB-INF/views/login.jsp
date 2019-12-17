<%@page import="com.min.edu.dto.User_Dto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
	<title>인덱스 화면입니다. =]</title>
<style type="text/css">
.tab {
  overflow: hidden;
  border: 1px solid #ccc;
  background-color: #f1f1f1;
  width: 300px;
  height :30px;
  padding :0px;
}

.tab button {
  background-color: inherit;
  float: left;
  border: none;
  outline: none;
  cursor: pointer;
  padding: 14px 16px;
  transition: 0.3s;
  font-size: 17px;
  width: 150px;
  height: 30px;
  margin: 0px;
  padding: 0px;
}

.tab button:hover {
  background-color: #ddd;
}

.tab button.active {
  background-color: #ccc;
}
.tabcontent {

  display: none;
  padding: 0px;
  border: 1px solid #ccc;
  border-top: none;
  width: 300px;
}

#loginform{ 
	width: 300px;
	height: 500px;
}

#id{
	width: 200px;
}
#password{
	width: 200px;
}

h3{
margin: 0px;
padding: 0px;
}
#frmU{
margin-bottom: 0px;
}

</style>
</head>
<script type="text/javascript" src="./js/jquery-3.4.1.js"></script>
<body>

<h2>Tabs</h2>
<p>Click on the buttons inside the tabbed menu:</p>

	<input type="hidden" id="user_tab" name="user_tab" >
	<div class="tab">
	  <button class="tablinks active" onclick="loginuser(event, 'user')">개인회원</button>
	  <button class="tablinks" onclick="loginuser(event, 'hospi')">병원기업</button>
	</div>

	<form action="./loginU.do" method="post" id="frmU">
		<div id="user" class="tabcontent" style="display: block;" >
      		<h3>유저 로그인</h3>
            <input type="hidden"  name="u_auth" value="U">
            <table>
               <tr>
                  <th>아이디</th>
                  <td>
                     <input id="Uid" type="text" name="u_id" placeholder="아이디">
                  </td>
               </tr>
               <tr>
                  <th>비밀번호</th>
                  <td>
                     <input id="Upassword" type="password" name="u_password" placeholder="비밀번호">
                  </td>
               </tr>
               <tr>
                  <th colspan="2">
                     <input id="box" type="button" value="로그인" onclick="loginCheck()">
                     <input id="box" type="button" value="회원가입" onclick="regiForm()">
                  </th>
               </tr>
         </table>
	</div>
     </form>

      <form action="./loginH.do" method="post" id="frmH">
		<div id="hospi" class="tabcontent">
      		<h3>병원 로그인</h3>
            <input type="hidden"  name="u_auth" value="H">
            <table>
               <tr>
                  <th>아이디</th>
                  <td>
                     <input id="Hid" type="text" name="u_id" placeholder="아이디">
                  </td>
               </tr>
               <tr>
                  <th>비밀번호</th>
                  <td>
                     <input id="Hpassword" type="password" name="u_password" placeholder="비밀번호">
                  </td>
               </tr>
               <tr>
                  <th colspan="2">
                     <input id="box" type="button" value="로그인" onclick="loginCheck()">
                     <input id="box" type="button" value="회원가입" onclick="regiForm()">
                  </th>
               </tr>
         </table>
		</div> 
      </form>
      
<script type="text/javascript">
 function loginuser(evt, username) {
   var i, tabcontent, tablinks;
   tabcontent = document.getElementsByClassName("tabcontent");
   
   for (i = 0; i < tabcontent.length; i++) {
     tabcontent[i].style.display = "none";
   }
   tablinks = document.getElementsByClassName("tablinks");
   for (i = 0; i < tablinks.length; i++) {
     tablinks[i].className = tablinks[i].className.replace(" active", "");
   }
  document.getElementById(username).style.display = "block";
   evt.currentTarget.className += " active";
 }
 
 function regiForm(){
   location.href="./usechk.do";
 }


 
 
function loginCheck(){
	
	
	var div =  document.getElementsByTagName("div");
	
	 for (var i = 0; i < div.length; i++) {
		if(div[i].style.display == "block"){
			var	auth = 	div[i].childNodes[3].value;
			alert(div[i].children.value);
		}
		}

		var id = document.getElementById(auth+"id").value;
		var pw = document.getElementById(auth+"password").value;

	
		if(id==null||id.trim()==""){
		document.getElementById(auth+"id").focus();
		$(auth+"id").val("");
		alert("아이디를 확인해주세요.");
	}else if(pw==null||pw=="".trim()){
		document.getElementById(auth+"password").focus();
		$(auth+"password").val("");
		alert("비밀번호를 확인해주세요.");
	}else{
		 jQuery.ajax({
	            type : "post",
	            url : "./loginAjax.do",
	            data : "u_id=" +id+ "&u_password=" +pw+"&u_auth=" +auth,
	            success : function(data) {
						if (data.msg == "성공") {
								alert(data.u_id);
								alert(data.u_password);
								alert(data.u_auth);
								if (data.u_auth == "U") {
									alert("회원으로 입력하셨습니다! 회원님의 auth는 ?"+"["+data.u_auth+"]");
									document.getElementById("frm" + data.u_auth).submit();
								}else if(data.u_auth == "H"){
									alert("병원으로 입력하셨습니다! 회원님의 auth는 ?"+"["+data.u_auth+"]")
									document.getElementById("frm" + data.u_auth).submit();
								}else if(data.u_id == "admin" && data.u_auth =="A"){
									alert("관리자님 반갑습니다!")
									frmU.submit();s
								}
							} else {
								alert("아이디와 비밀번호를 확인해 주세요");
							}
						},
						error : function() {
							alert("로그인에 문제가 생겼습니다");
						}
					});
		}
	}
</script>
 
</body>
</html> 
