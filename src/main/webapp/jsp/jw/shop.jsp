<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script type="text/javascript">

function detailProudcts(num)
{
	location.href = "ShoppingDetailController?num="+num;		
}

</script>
</head>
<body>

	<div style = "width: 100%; height: 700px;">
		<div  style = "text-align:right; width: 100%; height :70px">
		<a href="ProductRegController">상품 추가</a>
		<a href="OrderDetailController">주문 확인</a>
		<a href="CartViewController">장바구니</a>
		<a href="OrderViewController">내 주문 조회</a>
		
		</div>
		
		<ul>
			<c:forEach var="product" items = "${products}">	
				<li style = "width:200px; height:200px; float:left">
				
					<div><a href="#" onclick = "detailProudcts('${product.num }')"><img style = "width:150px; height:180px;" src ="img/${ product.thumbnail }"></a></div>
					<button onclick = "detailProudcts('${product.num }')">${product.name }</button>
					${product.price } 원 <span id = "totalPrice"></span>
				</li>
			</c:forEach>
		
		</ul>
	
	</div>



</body>
</html>