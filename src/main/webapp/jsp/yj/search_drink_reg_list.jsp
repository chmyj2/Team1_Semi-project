<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>


<c:forEach var="m" items="${drinks }">
<table border="1" style="height: 100px;width: 600px">
	<tr>
		<td rowspan="11"><img alt=""src="fileFolder/${m.cocktail_img}" style="width: 300px;height: 100"></td>
	</tr>
	<tr>
		<td>DRINK NAME</td>
	</tr>
	<tr>
		<td>${m.cocktail_name }</td>
	</tr>
	<tr>
		<td><c:forTokens var="item" items="${m.cocktail_info }" delims="\n">
		${item }
</c:forTokens></td>
	</tr>
	<tr>
		<td>INGREDIENTS</td>
	</tr>
	<tr>
		<td><c:forTokens var="item" items="${m.cocktail_ingredient }" delims="!">
		${item }<br>
</c:forTokens></td>
	</tr>
	<tr>
		<td>RECIPE</td>
	</tr>
	<tr>
		<td><c:forTokens var="item" items="${m.cocktail_recipe }" delims="@">
		${item }
</c:forTokens></td>
	</tr>
	<tr>
		<td>TAG</td>
	</tr>
	<tr>
		<td><c:forTokens var="item" items="${m.cocktail_tag }" delims="!">
		${item }<br>
</c:forTokens></td>
	</tr>
	<tr>
			<td>
			<button onclick="location.href='Drink_Info_Update_Controller?num=${m.cocktail_num}'">수정</button>
			<button onclick="deleteDrinkInfo(${m.cocktail_num},'${m.cocktail_img}')">삭제</button>
			</td>
		</tr>
</table>
	</c:forEach>	




</body>
</html>