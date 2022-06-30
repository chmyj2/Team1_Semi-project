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

<div class = "page-shop" >
	<a href="ProductRegController"><button>상품 추가</button></a><hr>
	
	<c:forEach var="product" items = "${products}">	
		<button onclick = "detailProudcts('${product.num }')">${product.name }</button><hr>
	</c:forEach>
</div>



</body>
</html>