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
<body style="background-color: rgb(240, 242, 241);">
<!-- 로그인 페이지/로그인 회원가입/LoginController로 이동해서 일 처리 -->

<div>
	<form action="LoginController" method="post" class="login" style="height:330px;" name="loginForm" onsubmit="return loginform()">
		<input type="text" placeholder="User Id" name="id">
 		<input type="password" placeholder="User Password" name="pw">
  		<button class="b1">Login</button><br><br><br>
  		<a href="RegAccountC" style="color:gray;" class="signup">sign up</a><br>
  		<a href="searchIdC" style="color:gray; font-size: 6pt;" class="signup">아이디 찾기</a>&nbsp;
  		<a href="searchPwC" style="color:gray; font-size: 6pt;" class="signup">비밀번호 찾기</a>
	</form>
</div>

</body>
</html>