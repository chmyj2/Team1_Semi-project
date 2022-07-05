<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="reg.css">
<link rel="stylesheet" href="css/login.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/7.2.0/sweetalert2.min.css">
<script src="https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/7.2.0/sweetalert2.all.min.js"></script>
<script type="text/javascript" src="jsp/sm/reg.js"></script>
<script type="text/javascript" src="jsp/sm/validCheck.js"></script>
<script type="text/javascript" src="jsp/sm/jquery.js"></script>
<script type="text/javascript">
$(function(){
	$("#iddd").keyup(function(){
		
		
	let inputId = $("#iddd").val();

	$.ajax({
		    type : 'post', // 타입 (get, post, put 등등)
		    url : 'jsp/sm/idCheck.jsp', // 요청할 서버url
		    dataType : 'json', // 데이터 타입 (html, xml, json, text 등등)
		    data : { // 보낼 데이터 (Object , String, Array)의 내용을 담는다
		      "id" : inputId},
		    success : function(result) { // 결과 성공 콜백함수
		        console.log(result.r); // 1,0
		        if(result.r == 1){
		        	$("#showResult").text("사용중인 ID 입니다.");
		        	$("#showResult").css("color","red");
		        	iddd.focus();
		        }else{
		        	$("#showResult").text("");
		        }
		    },
		    error : function(request, status, error) { // 결과 에러 콜백함수
		        console.log(error)
		    }
		})
		
	});
	
});




</script>
<style type="text/css">

p{
	font-size: 9pt;
	text-align: left;
	font-weight: 600;
}
button {
  font-family: "Asap", sans-serif;
  cursor: pointer;
  color: #fff;
  font-size: 13px;
  text-transform: uppercase;
  width: 100px;
  border: 0;
  padding: 10px 0;
  /* margin-top: 10px;
  margin-left: -5px; */
  border-radius: 5px;
  background-color: #1565c0;
  margin: 0 auto;
  display: inline-block;
}

button:hover {
 	background: white;
	color: black;
	transition: all 0.5s ease;
}
</style>
</head>
<body class = "loginBody">
<div class="login">
	<form action="RegAccountC" method="post" name="regForm" onsubmit="return call()">	
		<table style="text-align: left; width:350px;">
			<tr>
				<td style="text-align: center;"><h2>회원가입</h2></td>
			</tr>
			<tr><td style="height: 40px;"></td></tr>
			<tr>
				<td><p>아이디 [ 영어만 | 5글자 이상 ]</p></td>
			</tr>
			<tr>
				<td>
					<input type="text" id="iddd" autocomplete="off" placeholder="아이디" name="id" style="width:150px; border: none; border-bottom: 2px solid gray;"><br>
					<span id="showResult"></span>
					<!-- <input type="button" value="중복확인" class="dup" onclick="winopen()"> -->
				</td>
			</tr>
			<tr><td style="height: 20px;"></td></tr>
			<tr>
				<td><p>비밀번호 [ 영어 대소문자 숫자 | 3글자 이상 ]</p></td>
			</tr>
			<tr>
				<td>
					<input type="text" placeholder="비밀번호" name="pw1" style="width:150px; border: none; border-bottom: 2px solid gray;"><br>
 					<input type="text" placeholder="비밀번호 재확인" name="pw2" style="width:150px; border: none; border-bottom: 2px solid gray;">
				</td>
			</tr>
			<tr>
				<td style="height: 20px;"></td>
			</tr>
			<tr>
				<td><p>이름</p></td>
			</tr>
			<tr>
				<td>
					<input type="text" placeholder="이름" name="name" style="width:150px; border: none; border-bottom: 2px solid gray;">
				</td>
			</tr>
			<tr>
				<td style="height: 20px;"></td>
			</tr>
			<tr>
				<td><p>성별</p></td>
			</tr>
			<tr>
				<td>
					<p>남<input checked="checked" type="radio" name="gender" value="남">&nbsp;&nbsp;&nbsp;여<input type="radio" name="gender" value="여"></p>
				</td>
			</tr>
			<tr>
				<td style="height: 20px;"></td>
			</tr>
			<tr>
				<td><p>주소</p></td>
			</tr>
			<tr>
				<td>
					<input placeholder="주소" name="addr" maxlength="50" style="width:250px; border: none; border-bottom: 2px solid gray;">
				</td>
			</tr>
			<tr>
				<td style="height: 20px;"></td>
			</tr>
			<tr>
				<td><p>연락처 [하이픈(-) 제외]</p></td>
			</tr>
			<tr>
				<td>
					<input type="text" placeholder="연락처" name="phoneNum" maxlength="11" style="width:150px; border: none; border-bottom: 2px solid gray;">
				</td>
			</tr>
			<tr>
				<td style="height: 20px;"></td>
			</tr>
			<tr>
				<td><p>출생연도 [ex) 1999]</p></td>
			</tr>
			<tr>
				<td>
					<input type="text" placeholder="출생연도" name="birth" maxlength="4" style="width:150px; border: none; border-bottom: 2px solid gray;">
				</td>
			</tr>
			<tr>
				<td style="height: 40px;"></td>
			</tr>
			<tr>
				<td>
					&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
					<button id="reg_submit">Sign Up</button>
				</td>
			</tr>
		
  		</table>
	</form>
</div>
	

</body>
</html>