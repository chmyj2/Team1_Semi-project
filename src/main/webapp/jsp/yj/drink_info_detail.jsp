<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/star_point.css">
</head>
<body>


<form action="#">

<table border="1">
	<tr>
		<td rowspan="11"><img alt="" src="fileFolder/${drink.cocktail_img }" ></td>
	</tr>
	<tr>
		<td><h3>OUR COCKTAILS</h3></td>
	</tr>
	<tr>
		<td><h1>${drink.cocktail_name }</h1></td>
	</tr>
	<tr>
		<td><h4>${drink.cocktail_info }</h4></td>
	</tr>
	<tr>
		<td><h5>INGREDIENTS</h5></td>
	</tr>
	<tr>
		<td><h3>${drink.cocktail_ingredient }</h3></td>
	</tr>
	<tr>
		<td><h5>RECIPE</h5></td>
	</tr>
	<tr>
		<td><h4>${drink.cocktail_recipe }</h4></td>
	</tr>
	<tr>
		<td><h4>${drink.cocktail_tag }</h4></td>
	</tr>
</table>
</form>
<form action="Star_regController">
<div class="star-rating space-x-4 mx-auto">
	<input type="radio" id="5-stars" name="rating" value="5" v-model="ratings"/>
	<label for="5-stars" class="star pr-4">★</label>
	<input type="radio" id="4-stars" name="rating" value="4" v-model="ratings"/>
	<label for="4-stars" class="star">★</label>
	<input type="radio" id="3-stars" name="rating" value="3" v-model="ratings"/>
	<label for="3-stars" class="star">★</label>
	<input type="radio" id="2-stars" name="rating" value="2" v-model="ratings"/>
	<label for="2-stars" class="star">★</label>
	<input type="radio" id="1-star" name="rating" value="1" v-model="ratings" />
	<label for="1-star" class="star">★</label>
	<input type="hidden" name="drink.cocktail_num" value="${drink.cocktail_num }">
	<input type="hidden" name="user_id" value="세션id">
</div>
<input type="hidden" name="num" value="${drink.cocktail_num }">
<input type="hidden" name="user_id" value="'세션id'">
<button>별점주기</button>
 </form>   

<%-- <c:if test="${세션아이디가 있으면 } "> 
            <h2> 
                별점버튼이 나오게
            </h2> 
        </c:if> --%>


</body>

</html>