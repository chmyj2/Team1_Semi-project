<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body >


	<div>
		<h1 style="text-align: left;">주문/결제</h1>
	</div>
	<c:forEach var="order" items = "${arrOrder}">
		
	  <h1>주문번호 ${order.num }</h1><br>
	  주문자ID ${order.userId }<br>
	  주문물품 번호 ${order.productNum }<br>
	  주문물품 수량${order.productQuantity }<br>
	  받는사람 ${order.reciever }<br>
	  주문날자 ${order.inputDate }<br>
	  주문상태 ${order.state }<br>
	  받는주소 ${order.address } <br>
	  결제상태 ${order.paymentState }<br>
	  물품가격 ${order.productPrice }<br>
	  배송상태 ${order.deliveryState }<br>
	  배송비 ${order.deliveryPrice }<br>
	  총합 ${order.totalPrice }<br>
	  <hr>
	</c:forEach>
</body>
</html>