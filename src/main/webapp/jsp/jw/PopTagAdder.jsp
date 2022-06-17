<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="jsp/jw/regProduct.js" ></script>

</head>
<body>

<div style = "border: 1px solid gold; float: left; width: 30%">
<button type="button" onclick = "tagAdder()">태그 추가</button>
<br>

<c:forEach var="category" items = "${categories}">	
	<a style="cursor:pointer" onclick = "selectCategory('${category.num}')">${category.name }</a><hr>
	</c:forEach>

</div>

<div class = "h2Div" style = "border: 1px solid red; float: left; width: 30%">

<div class = "secondH" style = "display : none"><button type="button" onclick = "tagSecondHAdder()">태그 추가</button></div>
	
	
	<c:forEach var="category" items = "${categories}">	
		<c:forEach var="childCategory" items = "${categories[0].getChild()}">	
			<div class =${childCategory.parentNum } style="display : none" > ${childCategory.name }</div>	
		</c:forEach>
	</c:forEach>
		

</div>
<div class = "h3Div" style = "border: 1px solid blue; float: left; width: 30%">
3계층 추가
</div>
</body>
</html>