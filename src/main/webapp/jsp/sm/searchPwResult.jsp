<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<div>
	<form action="LoginMainController" class="login" style="height:330px;">
		회원님의 비밀번호는<br><br><p style="font-weight: 1000">${searchPw }</p><br>입니다.<br><br><br>
		<button>LOGIN PAGE</button><br><br><br>
  		<a href="searchIdC" style="color:gray; font-size: 6pt;" class="signup">아이디 찾기</a>
	</form>
</div>

</body>
</html>