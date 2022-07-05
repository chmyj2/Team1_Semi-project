<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/login.css">
</head>
<body class = "loginBody">

<div>
	<form class="login">
		<h2>수정된 My Page</h2><br><br>
		<p style="font-size: 6px; text-align: left;">아이디</p>
		<p style="font-size: 6px; text-align: left;">${sessionScope.accountInfo.user_id }</p><br>

		<p style="font-size: 6px; text-align: left;">비밀번호</p>
		<p style="font-size: 6px; text-align: left;">${sessionScope.accountInfo.user_pw }</p><br>
		
		<p style="font-size: 6px; text-align: left;">이름</p>
		<p style="font-size: 6px; text-align: left;">${sessionScope.accountInfo.user_name }</p><br>
 		 		
		<p style="font-size: 6px; text-align: left;">성별</p>
		<p style="font-size: 6px; text-align: left;">${sessionScope.accountInfo.user_gender }</p><br>
  		
		<p style="font-size: 6px; text-align: left;">주소</p>
		<p style="font-size: 6px; text-align: left;">${sessionScope.accountInfo.user_addr }</p><br>

		<p style="font-size: 6px; text-align: left;">연락처</p>
		<p style="font-size: 6px; text-align: left;">${sessionScope.accountInfo.user_phoneNumber }</p><br>

		<p style="font-size: 6px; text-align: left;">나이</p>
		<p style="font-size: 6px; text-align: left;">${sessionScope.accountInfo.user_age }</p><br>
							
  		<br><button>수정하기</button>
	</form>
</div>

</body>
</html>