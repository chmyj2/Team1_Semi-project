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

<form action="OrderRegController">
		<input type = "hidden" name = "userID" value = ${account.user_id }>
	구매자 정보
	 <hr>
	구매자 이름 : ${account.user_name }
	 <hr>
	구매자 휴대폰 : ${account.user_phoneNumber }
	<hr>
	
	받는사람 정보
	이름 <input type = text name ="Reciever" value = "${account.user_name }">
	<hr>
	배송주소 <input type = text name ="Address" value = "${account.user_addr }">
	<hr>
	연락처 <input type = text name ="PhoneNumber" value = "${account.user_phoneNumber }">
	<hr>
	배송물건<hr>
		<c:forEach var="ors" items = "${order}">	
		<input type = "hidden" name = "product" value = "${ors.productNum },${ors.quantity }">
		넘버${ors.productNum }
		수량${ors.quantity }
		제품이름${ors.productName }
		가격 ${ors.productPrice*ors.quantity }
		<img style = "width :100px; height : 100px;" id="movieImg" src ="img/${ors.thumbnail }">
		<hr>
	</c:forEach>
		배송비 3500원		
		<input type = "hidden" name = "DeliveryPrice" value = 3500>
		
		
		<button>주문하기</button>
</form>
</body>
</html>