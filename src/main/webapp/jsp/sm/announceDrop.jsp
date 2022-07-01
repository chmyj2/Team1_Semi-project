<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/login.css">
<link rel="stylesheet" href="css/board.css">
</head>
<body style="background-color: rgb(240, 242, 241);">
<div>
	<form class="login">
		<h2>회원 탈퇴 안내</h2><br><br>
		<p style="font-size: 6pt; text-align: left;">
		회원 탈퇴를 신청하기 전에 안내 사항을 꼭 확인해주세요.<br>
		회원님께서 사용하고 계신 아이디(${sessionScope.accountInfo.user_id })는 탈퇴할 경우 재사용 및 복구가 불가능합니다.<br><br>
		■ 탈퇴한 아이디는 본인과 타인 모두 재사용 및 복구가 불가하오니 신중하게 선택하시기 바랍니다.<br><br>
		■ 탈퇴 후 회원정보 및 개인형 서비스 이용기록은 모두 삭제됩니다.<br><br>
		■ 탈퇴 후에도 게시판 서비스에 등록한 게시물은 그대로 남아 있습니다.<br>삭제를 원하는 게시글이 있다면 반드시 탈퇴 전 삭제하시기 바랍니다.<br><br>
		■ 탈퇴 후에는 아이디(${sessionScope.accountInfo.user_id }) 로 다시 가입할 수 없습니다.	<br><br><br>	
	<label for="agree">
		<input type="checkbox" id="agree" name="agree" onchange="aaa()">
		안내 사항을 모두 확인하였으며, 이에 동의합니다.
	</label><br><br>
  		<button type="button" id="checkButton" name="checkButton" disabled="disabled"
  		 style="font-size: 10pt; height: 30px; width: 100px; border-radius: 5px;
  		 border: 1px solid gray; margin-left: 120px;"
  		 onclick="location.href='AccountDropController2'">회원 탈퇴</button>	
	</form>
</div>

<script type="text/javascript">
function aaa() {
	let btn = document.getElementById('checkButton');
	let asd = btn.disabled;
	if(asd){
	btn.disabled = false;
	}else{
	btn.disabled = true;		
	}	
}
</script>
</body>
</html>