<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>


<h1>${drink.cocktail_name }</h1><br>
<img alt="" src="fileFolder/${drink.cocktail_img }" ><br>
<h3>${drink.cocktail_info }</h3><br>
<h3>${drink.cocktail_ingredient }</h3><br>
<h3>${drink.cocktail_recipe }</h3><br>
<h3>${drink.cocktail_tag }</h3><br>
<button>구매하러가기</button>


</body>
</html>