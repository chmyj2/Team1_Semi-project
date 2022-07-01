<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/login.css">
</head>
<body style="background-color: rgb(240, 242, 241);">
<div>
	<form action="searchPwC" method="post" class="login" style="height:330px;">
		<h5>비밀번호 찾기</h5>
		<input type="text" placeholder="아이디" name="id">
 		<input type="text" placeholder="전화번호" name="phoneNumber">
  		<button>SEARCH</button><br><br><br>
  		<a href="searchIdC" style="color:gray; font-size: 6pt;" class="signup">아이디 찾기</a>
	</form>
</div>

</body>
</html>