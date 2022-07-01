<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script type="text/javascript">
function goToShopping()
{
	location.href = "ShoppingController";
}
function deleteCart(productNum)
{
	location.href = "CartDelController?productNum="+productNum;
}
</script>
</head>
<body>
<h1>장바구니</h1>


	<form action = "OrderController" method = get>
	<c:forEach var="cart" items = "${order}">	
			<input type= "checkbox" >
			<img style = "width: 80px; height: 80px;" src ="img/${ cart.thumbnail }">
			상품명 ${cart.productName }
			가격 ${cart.productPrice }
			
			수량 <input type = "number" value = ${cart.quantity} > 개
			
			
			
			총 합 ${cart.productPrice * cart.quantity}원
			
			<button type = "button" onclick = "deleteCart('${ cart.productNum}')">삭제</button>
			
		<input type = "hidden" name = "orderNum" value = "${ cart.productNum},${cart.quantity }">
		<hr>
	</c:forEach>
	
	<button type="button" onclick ="goToShopping()">계속 쇼핑하기</button>
	<button>상품구입</button>			
	</form>		
</body>
</html>