<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>

<body>
	<input type = "hidden"  name = "productNumber" value = "${product.num}">

<div class = "shopContentsDiv">


<div style = "float : left;width :50%;  height:500px" >
	<img style = "width: 400px; height: 450px;" src ="img/${ product.thumbnail }">
</div>


<div style = "float : left;width :50%; height:500px  ">
	<div style= "text-align: left;">
	${ product.categoryNum }
	</div>
	<div  style= "text-align: left;">
	<div class = "productTitle">
		${ product.name}<br>
	</div>
	
	<div class = "priceDiv">
		<fmt:formatNumber value = "${ product.price}" type="currency" />원 판매가<br>
		<c:if test="${not empty sessionScope.accountInfo.user_id}">
			<fmt:formatNumber value = "${ product.price * 0.95}" type="currency" />원 회원판매가<br> 
		</c:if>
	</div>
	
		설명
	<div class = "productContent">
		${ product.content }
	</div>
		<hr>
		
		<div class = "productStockDiv">
		${ product.name}
		<input id = "quantityInput" type = "number" onchange="quantityChange(this,${product.price },${product.stock})"
		name = "Quantity" style ="width:50px" value = 1>개
		<span id = "totalPrice">${ product.price}</span> 원 재고 ${ product.stock }개<br>
		</div>
		
		<c:if test="${product.stock>0}">
		<button class = "shopDetailButton" onclick = "goOrderController('${product.num }')">상품구입</button>
		<button class = "shopDetailButton" onclick = "cartAdderController('${product.num }','${sessionScope.accountInfo.user_id}')">장바구니에 추가</button>
		</c:if>
		
		<c:if test="${product.stock<=0}">
		<button class = "shopDetailButton">품절</button>
		
		
		</c:if>
		<button class = "shopDetailButton" onclick = "goCartView()">장바구니 바로가기 </button>
	</div>
</div>


	<div style = "width : 100%">
		<c:if test="${not empty product.img1}">
			<img style = "width : 600px" src ="img/${ product.img1}">	<br>	
		</c:if>
		<c:if test="${not empty product.img2}">
			<img style = "width : 600px"  src ="img/${ product.img2}">	<br>	
		</c:if>
		<c:if test="${not empty product.img3}">
	 		<img style = "width : 600px" src ="img/${ product.img3}"><br>				
		</c:if>	
	</div>

</div>

	
</body>
<script type="text/javascript" src="jsp/jw/shopDetail.js" ></script>
</html>