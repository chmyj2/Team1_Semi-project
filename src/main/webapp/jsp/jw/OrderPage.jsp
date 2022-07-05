<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>


    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script type = "text/javascript">

	var totalPrice = 0;
	function totalPriceAdder(num)
	{
		totalPrice +=num;
	}
			
	function printTotalPrice()
	{
		document.getElementById("totalProductPrice").innerHTML= totalPrice+"원";
		document.getElementById("totalPrice").innerHTML= totalPrice + 3500+"원";
	}
	
</script>
			
</head>
<body>

<form action="OrderRegController">
		<input type = "hidden" name = "userID" value = "${account.user_id }">

	<div class = "orderMain">
		
	<div>
		<h1 style="text-align: left;">주문/결제</h1>
		<hr  style = "background-color : #333; height:20px;">
	</div>
	<div class = "orderTableDiv">
		<div class = "orderTitle">구매자 정보</div>
		<table class = "orderTbl">
			<tr>
				<td class = "orderTd1">이름</td>
				<td class = "orderTd2">${account.user_name }</td>
			</tr>
			<tr>
				<td class = "orderTd1">휴대폰 번호</td>
				<td class = "orderTd2">${account.user_phoneNumber }</td>
			</tr>
		</table>
	</div>
	
	
	<div class = "orderTableDiv">
		<div class = "orderTitle">받는사람 정보</div>
		<table class = "orderTbl">
			<tr>
				<td class = "orderTd1">이름</td>
				<td class = "orderTd2">
				<input type = text name ="Reciever" value = "${account.user_name }">
				</td>
			</tr>
			<tr>
				<td class = "orderTd1">배송주소</td>
				<td class = "orderTd2">
					<input type = text name ="Address" style = "width: 80%;" value = "${account.user_addr }">
				</td>
			</tr>
			<tr>
				<td class = "orderTd1">연락처</td>
				<td class = "orderTd2">
					<input type = text name ="PhoneNumber" value = "${account.user_phoneNumber }">
				</td>
			</tr>
		</table>
	</div>
	
	
	<div class = "orderTableDiv">
		<div class = "orderTitle">배송물건</div>
	
		<c:forEach var="ors" items = "${order}">	
			<div style = "font-size:14pt; float: left; width:50%; height:40px;">${ors.productName }</div>
			<div style = "float: left; width:40%; height:40px;">수량 ${ors.quantity }개 / 배송비 3500원</div>
			<div style = "float: lef	t; width:10%; height:40px;"></div>
			<input type = "hidden" name = "product" value = "${ors.productNum },${ors.quantity },${ors.productPrice },${ors.stock}">
			<input type = "hidden" class ="${ors.productNum }" value = "${ors.productPrice}">
			
			
			<c:if test="${empty sessionScope.accountInfo.user_id}">
			<script type = "text/javascript">
				totalPriceAdder(${ors.productPrice } * ${ors.quantity });
			</script>
			</c:if>
			<c:if test="${not empty sessionScope.accountInfo.user_id}">
			<script type = "text/javascript">
				totalPriceAdder(${ors.productPrice *0.95} * ${ors.quantity });
			</script>
			</c:if>
			
			
			
		</c:forEach>
	</div>
	<div>
		<hr>	
		<input type = "hidden" name = "DeliveryPrice" value = 3500>
	
		
		<div class = "orderTableDiv">
		<div class = "orderTitle">구매자 정보</div>
		<table class = "orderTbl">
			<tr>
				<td class = "orderTd1">총 상품가격</td>
				<td class = "orderTd2"><span id = "totalProductPrice"></span></td>
			</tr>
			<tr>
				<td class = "orderTd1">배송비</td>
				<td class = "orderTd2">3500원</td>
			</tr>
			<tr>
				<td class = "orderTd1">총 결제금액</td>
				<td class = "orderTd2"><span id = "totalPrice"></span></td>
			</tr>
			
		</table>
	</div>
		
		
		<script type = "text/javascript">
				printTotalPrice();
		</script>
		
		<label class = "orderBtnLabel" for= "orderBtn">주문하기</label>
		<button id ="orderBtn" style ="display:none;">주문하기</button>
	</div>
		</div>
</form>
</body>
</html>