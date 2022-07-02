<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="http://code.jquery.com/jquery-latest.js"></script>  
<script type="text/javascript" src="jsp/jw/PopTagAdder.js" ></script>
</head>
<body>

<div style = "border: 1px solid gold; float: left; width: 30%">
<button type="button" onclick = "tagAdder()">태그 추가</button>
<br>

<c:forEach var="category" items = "${categories}">	
	<a style="cursor:pointer" onclick = "selectH2Category('${category.num}')">${category.name }</a>
	<hr>
	</c:forEach>
</div>

<div class = "h2Div" style = "border: 1px solid red; float: left; width: 30%">

	<div>
		<button type="button" onclick = "tagSecondAdder()">태그 추가</button>
	</div>

	<c:forEach var="category" items = "${categories}">	
	<div class =${category.num }  style = "display : none">
		<c:forEach var="childCategory" items = "${category.getChild()}">	
			<a style="cursor:pointer" onclick = "selectH3Category('${childCategory.num}')"> ${childCategory.name }</a>
			<button type="button" onclick = "deleteTag('${childCategory.num}')">태그삭제</button>
			<hr>	
		</c:forEach>
	</div>
	</c:forEach>
</div>


<div class = "h3Div" style = "border: 1px solid blue; float: left; width: 30%">	
	<div>
		<button type="button" onclick = "tagThirdAdder()">태그 추가</button>
	</div>
	<c:forEach var="category" items = "${categories}">	
		<c:forEach var="secondCategory" items = "${category.getChild()}">	
			<div class =${secondCategory.num }  style = "display : none">
				<c:forEach var="thirdCategory" items = "${secondCategory.getChild()}">	
					${thirdCategory.name }
					<button type="button" onclick = "deleteTag('${thirdCategory.num}')">태그삭제</button>
					<br>				
				</c:forEach>
			</div>
		</c:forEach>
	</c:forEach>
</div>


</body>
</html>