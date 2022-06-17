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


	<form action = "OrderController">
	<input type = "hidden"  name = "productNumber" value = "${products.number}">
	<c:forEach var="img" items = "${products.img}">	
		<img id="productImg" src ="img/${img }">
	</c:forEach>
	
	<br>
	${ products.number}
	<br>
	${ products.name}

	<br>
	${ products.exp}
	<br>
	<c:forEach var="tag" items = "${products.tag}">	
		${tag}
	</c:forEach>
	<input type = "number" name = "Quantity" value = 1>
	
	<a><button>상품구입</button></a>
	<a><button>장바구니에 추가</button></a>
	</form>
</body>
</html>