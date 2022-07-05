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

		<div class = "shopContentsDiv">
		<div style = "width: 100%; height: 700px;">
		<div class = "exShopButtonDiv">
		
		<a href="CartViewController"><button class= "shopButton2" >장바구니</button></a>
		<a href="OrderViewController"><button class= "shopButton2" >주문 조회</button></a>
		
		<c:if test="${sessionScope.accountInfo.user_id eq 'ADMIN' }">
			<a href="ProductRegController"><button class= "shopButton3" >상품 추가</button></a>
			<a href="OrderAdminController"><button class= "shopButton3" >관리자 주문관리</button></a>
		</c:if>
		</div>
		
		<div style = "margin-top : 100px;">
		<ul>
			<c:forEach var="product" items = "${products}">	
				<li class = "conetentList">
					<div style = "width:100%; height:100%;"><a href="#" onclick = "detailProudcts('${product.num }')"><img class = "drinkImg"  src ="img/${ product.thumbnail }"></a>
					<a onclick = "detailProudcts('${product.num }')">${product.name } ${product.price }원</a>
					 <span id = "totalPrice"></span>
					 </div>
				</li>
			</c:forEach>
		</ul>
		</div>
		</div>
	
	</div>



</body>
</html>