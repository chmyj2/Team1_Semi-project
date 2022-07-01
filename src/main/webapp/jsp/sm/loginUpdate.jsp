<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/login.css">
<script type="text/javascript" src="jsp/sm/reg.js"></script>
<script type="text/javascript" src="jsp/sm/validCheck.js"></script>
</head>
<body class = "loginBody">
<div>
	<form action="InfoEditCotroller" method="post" class="login" name="updateForm" onsubmit="return update()">
	
		<h2>My Page</h2><br><br>
		
		<p style="font-size: 6px; text-align: left;">아이디</p>
		<p style="font-size: 6px; text-align: left;">${sessionScope.accountInfo.user_id }</p><br>
		
		<p style="font-size: 6px; text-align: left;">현재 비밀번호</p>
		<p style="font-size: 6px; text-align: left;">${sessionScope.accountInfo.user_pw }</p><br>
		
		<p style="font-size: 6px; text-align: left;">변경 비밀번호</p>
		<p style="font-size: 6px; text-align: left; ">
		<input type="text" name="pw2" style="width:150px; border: none; border-bottom: 2px solid gray;"></p><br>
		
		<p style="font-size: 6px; text-align: left;">변경 비밀번호 재확인</p>
		<p style="font-size: 6px; text-align: left;">
		<input type="text" name="pw3" style="width:150px; border: none; border-bottom: 2px solid gray;"></p><br>
		
		<p style="font-size: 6px; text-align: left;">이름</p>
		<p style="font-size: 6px; text-align: left;">${sessionScope.accountInfo.user_name }</p><br>
 		 		
		<p style="font-size: 6px; text-align: left;">성별</p>
		<p style="font-size: 6px; text-align: left;">${sessionScope.accountInfo.user_gender }</p><br>
  		
		<p style="font-size: 6px; text-align: left;">주소</p>
		<p style="font-size: 6px; text-align: left;">
		<input type="text" name="addr" placeholder="${sessionScope.accountInfo.user_addr }"  style="width:300px; border: none; border-bottom: 2px solid gray;"></p><br>

		<p style="font-size: 6px; text-align: left;">연락처</p>
		<p style="font-size: 6px; text-align: left;">
		<input type="text" name="phoneNum" placeholder="${sessionScope.accountInfo.user_phoneNumber }" maxlength="11"  style="width:150px; border: none; border-bottom: 2px solid gray;"></p><br>

		<p style="font-size: 6px; text-align: left;">나이</p>
		<p style="font-size: 6px; text-align: left;">${sessionScope.accountInfo.user_age }</p><br>
							
  		<br><button>수정하기</button><br>
  		<a href="AccountDropController">
  		<p style="font-size: 6px; text-align: right; color: gray;">탈퇴하기</p></a>
	</form>
		
</div>





</body>
</html>