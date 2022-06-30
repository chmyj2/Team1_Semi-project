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
	<input type = "hidden"  name = "productNumber" value = "${product.num}">
	<br>
	${ product.name}
	<br>
	${ product.categoryNum }
	<br>
	${ product.thumbnail }
	<img id="movieImg" src ="img/${ product.thumbnail }">
	<input id = "quantityInput" type = "number" name = "Quantity" value = 1>
	
	<button onclick = "goOrderController('${product.num }')">상품구입</button>
	<button onclick = "cartAdderController('${product.num }')">장바구니에 추가</button>
	<button onclick = "goCartView()">장바구니 바로가기 </button>
</body>
<script type="text/javascript" src="jsp/jw/shopDetail.js" ></script>
</html>