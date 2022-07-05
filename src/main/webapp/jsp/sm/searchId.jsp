<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/login.css">
</head>
<body class = "loginBody" >
<div>
	<form action="searchIdC" method="post" class="login" style="height:330px;">
		<h5>아이디 찾기</h5>
		<input type="text" placeholder="이름" name="name">
 		<input type="text" placeholder="전화번호" name="phoneNumber">
  		<button>SEARCH</button><br><br><br>
  		<a href="searchPwC" style="color:gray; font-size: 6pt;" class="signup">비밀번호 찾기</a>
	</form>
</div>

</body>
</html>