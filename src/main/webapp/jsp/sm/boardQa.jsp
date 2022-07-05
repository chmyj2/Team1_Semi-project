<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/login.css">
<style>
  .answer {
    display: none;
    padding-bottom: 30px;
    font-size: 12px;
    text-align: left;
  }
  #faq-title {
    font-size: 20px;
  }
  .faq-content {
    border-bottom: 1px solid #e0e0e0;
  }
  .question {
    font-size: 15px;
    padding: 30px 0;
    cursor: pointer;
    border: none;
    outline: none;
    background: none;
    width: 100%;
    text-align: left;
  }
  .question:hover {
    color: #2962ff;
  }
  [id$="-toggle"] {
    margin-right: 15px;
  }
  
  .test{
  	color: red;
  }
  
</style>
</head>
<body  class = "loginBody">
	<div class="login" style="height:100%; width: 1000px;">
		<span id="faq-title">자주 묻는 질문(FAQ)</span><br><br><br>
		<div class="faq-content">
			<button class="question" id="que-1">
				<span id="que-1-toggle">+</span><span>[회원정보]&emsp;&emsp;회원 가입 | 로그인 정보 | 탈퇴 관련 문의</span>
			</button>
			<div class="answer" id="ans-1">
			■ 회원 가입 절차<br>
			홈 화면 우측 상단의 Login > sign up > 회원 정보 입력 후 가입이 가능합니다.<br><br>
			■ 회원 정보 수정<br>
			My Page > 패스워드 입력 후 수정이 가능합니다.<br><br>
			■ 아이디 / 비밀번호 찾기<br>
			홈 화면 우측 상단의 Login > 아이디 / 비밀번호 찾기를 통해 확인 가능합니다.<br><br>
			■ 회원 탈퇴<br>
			My Page > 패스워드 입력 후 하단의 탈퇴하기를 통해 탈퇴가 가능합니다.<br><br>
			
			</div>
		</div>
		<div class="faq-content">
			<button class="question" id="que-2">
				<span id="que-2-toggle">+</span><span>[주문/결제]&emsp;&emsp;주문 | 결제 수단 | 오류 관련 문의</span>
			</button>
			<div class="answer" id="ans-2">
			■ 배송 주소지 확인<br>
			My Page > 패스워드 입력 후 주소 정보를 확인할 수 있습니다.<br><br>
			■ 결제 수단 및 방법<br>
			주문서 작성 시 일반 결제로 결제가 가능합니다. 일반 결제 방법에는 신용카드, 가상계좌, 계좌이체, 휴대폰 결제가 있습니다. 주문 완료 후 결제 방법은 변경할 수 없습니다.<br><br>
			■ 결제 오류<br>
			오류로 인해 결제가 안되는 경우, 정상적으로 이용 가능한 카드가 맞는지 확인해 주세요. 통신 상황과 카드 한도, 잔액을 확인해 주세요. 위 내용을 확인 했음에도 결제가 되지 않는 경우 1:1 고객센터로 문의해 주세요.<br><br>
			
			</div>
		</div>
		<div class="faq-content">
			<button class="question" id="que-3">
				<span id="que-3-toggle">+</span><span>[교환/환불]&emsp;&emsp;주문 취소 | 상품 교환 | 환불 관련 문의</span>
			</button>
			<div class="answer" id="ans-3">
			■ 주문 취소<br>
			주문 후 입금 확인 단계라면 상품 주문 취소가 가능합니다. 배송 준비 단계에서는 취소가 불가능합니다.<br><br>
			■ 상품 교환<br>
			배송 완료 후 7일 이내일 경우 상품 교환이 가능합니다.<br><br>
			■ 상품 환불<br>
			배송 완료 후 7일 이내일 경우 상품 환불이 가능합니다. 결제했던 수단으로 환불되며, 결제 수단에 따라 입금 소요 기간이 달라질 수 있습니다.<br><br>
			</div>
		</div>
		<div class="faq-content">
			<button class="question" id="que-4">
				<span id="que-4-toggle">+</span><span>[기타]&emsp;&emsp;서비스 | 기타 문의</span>
			</button>
			<div class="answer" id="ans-4">
			■ 회원 전용 게시판<br>
			DOSU 회원 전용 게시판 내 욕설 및 비방 글은 1:1 문의를 통해 신고할 수 있습니다. 관리자 확인 후 작성 회원에 대해 게시글 및 댓글 작성을 제한합니다<br><br>
			■ 웹사이트 내 오류<br>
			웹사이트 내 오류 발생시 번거로우시겠지만 1:1 문의를 통해 문의주시기 바랍니다. 빠른 해결을 도와드리겠습니다.<br><br>
			■ 1:1 문의<br>
			자주 묻는 질문(FAQ)에 해당되지 않거나, 추가적인 답변이 필요하시다면 1:1 문의로 문의해주시기 바랍니다.</a><br><br><br><br>
			<h3>고객센터 010-1234-5678 (오전9시~오후6시 운영 / 토,일,휴일 휴무) </h3>
			</div>
		</div>
	</div>
	
<script>
  const items = document.querySelectorAll('.question');

  function openCloseAnswer() {
    const answerId = this.id.replace('que', 'ans');

    if(document.getElementById(answerId).style.display === 'block') {
      document.getElementById(answerId).style.display = 'none';
      document.getElementById(this.id + '-toggle').textContent = '+';
    } else {
      document.getElementById(answerId).style.display = 'block';
      document.getElementById(this.id + '-toggle').textContent = '-';
    }
  }

  items.forEach(item => item.addEventListener('click', openCloseAnswer));
</script>


</body>
</html>