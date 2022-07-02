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


<div style = "float : left;width :50%;  height:500px" >
	<img style = "width: 400px; height: 400px;" src ="img/${ product.thumbnail }">
</div>


<div style = "float : left;width :50%; height:500px  ">
	<div style= "text-align: right;">
	${ product.categoryNum }
	</div>
	<div  style= "text-align: left;">
		Name	${ product.name}<br>
		Price	${ product.price}원<br>
		Info	${ product.content }<br>
		Stock	${ product.stock }개<hr>
		
		${ product.name}
		<input id = "quantityInput" type = "number" onchange="quantityChange(this,${product.price },${product.stock})"
		name = "Quantity" style ="width:50px" value = 1>개
		<span id = "totalPrice">${ product.price}</span> 원<br>
		<button onclick = "goOrderController('${product.num }')">상품구입</button>
	<button onclick = "cartAdderController('${product.num }')">장바구니에 추가</button>
	<button onclick = "goCartView()">장바구니 바로가기 </button>
	<button onclick = "goOrderViewController()">내 주문조회</button>
		
	</div>
</div>
	
	
</body>
<script type="text/javascript" src="jsp/jw/shopDetail.js" ></script>
</html>