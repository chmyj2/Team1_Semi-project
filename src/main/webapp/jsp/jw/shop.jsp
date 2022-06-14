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

<div class = "page-shop" >


	<section class = "products">
		<div class = "container">
			<ul>
				<c:forEach var="p" items = "${products}">	
				<li>
					<div>
						<img id="movieImg" src ="img/${p.img[0]}">
					</div>
					<div>
						${p.price }
					</div>
					<div>	
						${p.name }
					</div>
					<div>
					</div>
				</li>
				</c:forEach>		
			</ul>
		</div>
	</section>
	<a href="ProductRegController"><button>상품 추가</button></a>
	
</div>



</body>
</html>