<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script type="text/javascript">

function limitValue(quantity,stock)
{
	if( quantity.value>stock )
	{
		quantity.value = stock;
		alert("재고보다 많은 수량은 구매 불가능합니다");
		return false;
	}
	if(quantity.value<=0)
	{
		quantity.value = 1;
		alert("1개 이상 입력해 주십시오");
		return false;
	}	
	
}
function goToShopping()
{
	location.href = "ShoppingController";
}
function deleteCart(productNum)
{
	location.href = "CartDelController?orderNum="+productNum;
}
function test()
{
	var theForm = document.orderForm;
	
	theForm.method = "get";
	theForm.action = "CartSelectDelController";
}
</script>
</head>
<body>
<h1>장바구니</h1>


	<form name = "orderForm" action = "OrderController" method = get>
	<c:forEach var="cart" items = "${order}">	
			<input type= "checkbox" name = "orderNum" value = "${ cart.productNum},${cart.quantity }">
			<img style = "width: 80px; height: 80px;" src ="img/${ cart.thumbnail }">
			상품명 ${cart.productName }
			<c:if test="${empty sessionScope.accountInfo.user_id}">
			가격 	<fmt:formatNumber value = "${ cart.productPrice}" type="currency" />
			</c:if>
			<c:if test="${not empty sessionScope.accountInfo.user_id}">
			가격 	<fmt:formatNumber value = "${ cart.productPrice * 0.95}" type="currency" />

			</c:if>
			수량 <input type = "number" value = ${cart.quantity}  onchange="limitValue(this,${cart.stock })"> 개			
			
			
			<c:if test="${empty sessionScope.accountInfo.user_id}">
			총 합<fmt:formatNumber value = "${cart.productPrice* cart.quantity}" type="currency" />원<br> 
			</c:if>
			<c:if test="${not empty sessionScope.accountInfo.user_id}">
			
			총 합<fmt:formatNumber value = "${cart.productPrice*0.95 * cart.quantity}" type="currency" />원
			
			</c:if>
			
			<button type = "button" onclick = "deleteCart('${ cart.productNum}')">삭제</button>
			
		<hr>
	</c:forEach>
	
	<div style = "margin: 30px auto; ">
	<button class = "shopDetailButton" " type="button" onclick ="goToShopping()">계속 쇼핑하기</button>
	<button class = "shopDetailButton">상품구입</button>			
	<button class = "shopDetailButton" onclick ="test()" >삭제</button>			
	</div>
	</form>		
</body>
</html>