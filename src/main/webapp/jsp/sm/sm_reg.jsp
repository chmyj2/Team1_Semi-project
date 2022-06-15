<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="reg.css">
<!-- <script type="text/javascript" src="jsp/sm/reg.js"></script> -->
<!-- <script type="text/javascript" src="jsp/sm/validCheck.js"></script> -->
</head>
<body>

<div>
	<form action="RegAccountC" method="post" name="regForm" onsubmit="return call()" class="reg">
		<input type="text" placeholder="아이디" name="id">*한글x 5글자 이상
 		<input type="text" placeholder="비밀번호" name="pw1">
 		<input type="text" placeholder="비밀번호 재확인" name="pw2">*3글자 이상 대˙소˙숫자 포함
 		<input type="text" placeholder="이름" name="name">
 		남<input checked="checked" type="radio" name="gender" value="남">여<input type="radio" name="gender" value="여">
  		<input placeholder="주소" name="userAddr" maxlength="50">
		<input type="number" class="form-control" placeholder="전화번호" name="phoneNum" maxlength="11">*하이픈(-) 제외
  		<input type="number" class="form-control" placeholder="출생연도" name="birth" maxlength="4">*ex)1999
							
  		<button>Sign Up</button>
	</form>
</div>
	

</body>
</html>