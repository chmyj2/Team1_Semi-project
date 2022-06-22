<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="reg.css">
<script type="text/javascript" src="jsp/sm/reg.js"></script>
<script type="text/javascript" src="jsp/sm/validCheck.js"></script>
</head>
<body>

<div class="login" style="text-align: left; width:450px;">
	<form action="RegAccountC" method="post" name="regForm" onsubmit="return call()">
		
		<p style="font-size: 6px; text-align: left;">아이디 [ 한글 불가 | 5글자 이상 ]</p>
		<input type="text" placeholder="아이디" name="id" style="width:150px;">
		<input type="button" value="중복확인" class="dup" onclick="winopen()">
		<br>
		
		<p style="font-size: 6px; text-align: left;">비밀번호 [ 영어 대소문자 숫자 | 3글자 이상 ]</p>
 		<input type="text" placeholder="패스워드" name="pw1" style="width:150px;">
 		<input type="text" placeholder="패스워드 재확인" name="pw2" style="width:150px;">
 		
		<p style="font-size: 6px; text-align: left;">이름</p>
 		<input type="text" placeholder="이름" name="name" style="width:150px;">
 		 		
		<p style="font-size: 6px; text-align: left;">성별</p>
 		<p style="width:150px;">남<input checked="checked" type="radio" name="gender" value="남">&nbsp;&nbsp;&nbsp;여<input type="radio" name="gender" value="여"></p><br>
  		
		<p style="font-size: 6px; text-align: left;">주소</p>
  		<input placeholder="주소" name="addr" maxlength="50" style="width:150px;">

		<p style="font-size: 6px; text-align: left;">연락처 [하이픈(-) 제외]</p>
		<input type="text" placeholder="연락처" name="phoneNum" maxlength="11" style="width:150px;">

		<p style="font-size: 6px; text-align: left;">출생연도 [ex) 1999]</p>
  		<input type="text" placeholder="출생연도" name="birth" maxlength="4" style="width:150px;">
							
  		<br><button>Sign Up</button>
	</form>
</div>
	

</body>
</html>