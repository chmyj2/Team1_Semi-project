<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>

<!DOCTYPE html>
<html>
<head>

 <script type="text/javascript">
    	function goOrderCancel(num,productNum,Quantity)
    	{
    		location.href = "OrderCancelAcceoptController?orderNum="+num+","+productNum+","+Quantity;
    	}
    </script>
    
    
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div>

	<div>
		<h1 style="text-align: left;">주문/결제</h1>
	</div>
	
	
	<c:forEach var="order" items = "${arrOrder}">
	<c:if test="${order.state eq '취소요청' }">
	<div class = "orderDetailDiv">
	주문날자 ${order.inputDate }<br>
	배송상태 ${order.deliveryState }<br>
	<table class = "orderDetailTable">
		<tr>
			<td>주문자</td>
			<td>주문 번호</td>
			<td>상품 명</td>
			<td>가격</td>
			<td>배송비</td>
			<td>주문 수량</td>
			<td>주문 날자</td>
			<td>배송 상태</td>
			<td>주문상태</td>
		</tr>
		<tr>
			<td>${order.userId }</td>
			<td>${order.num }</td>
			<td>${order.productName }</td>
			<td>${order.productPrice }</td>
			<td>${order.deliveryPrice }</td>
			<td>${order.productQuantity }</td>
			<td>${order.inputDate }</td>
			<td>${order.deliveryState }</td>
			<td>${order.state }</td>		
		</tr>
	</table>	
		<button onclick="goOrderCancel('${order.num }','${order.productNum}','${order.productQuantity}')">주문취소 수락</button>
	</div>	
	</c:if>
	</c:forEach>
	
</body>
</html>