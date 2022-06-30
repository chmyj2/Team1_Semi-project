<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>장바구니</h1>


	<form action = "OrderController" method = get>
	<c:forEach var="cart" items = "${cartDetail}">	
		${cart.productNum }
		<input type = "hidden" name = "orderNum" value = "${ cart.productNum},${cart.productQuantity }">
		<hr>
	</c:forEach>	
	
	
	<button>상품구입</button>			
	</form>		
</body>
</html>