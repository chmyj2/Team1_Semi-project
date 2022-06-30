<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<%@ taglib  uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/star_point.css">
<link rel="stylesheet" href="css/drink_detail.css">

</head>



<body>




<table  class="drink_detail_page_table">
	<tr>
		<td rowspan="11"><img alt="" class="drink_detail_page_img" src="fileFolder/${drink.cocktail_img }"></td>
	</tr>
	<tr>
		<td class="drink_detail_page_title">OUR COCKTAILS</td>
	</tr>
	<tr>
		<td class="drink_detail_page_name"><h1>${drink.cocktail_name }</h1></td>
	</tr>
	<tr>
		<td class="drink_detail_star">${star } <fmt:formatNumber value="${starpoint.score }" pattern="0.00" /> </td>
	</tr>
	<tr>
		<td class="drink_detail_page_txt"><c:forTokens var="item" items="${drink.cocktail_info }" delims="\n">
		${item }
</c:forTokens></td>
	</tr>
	<tr>
		<td class="drink_detail_page_title">INGREDIENTS</td>
	</tr>
	<tr>
		<td class="drink_detail_page_txt"><c:forTokens var="item" items="${drink.cocktail_ingredient }" delims="!">
		${item }<br>
</c:forTokens></td>
	</tr>
	<tr>
		<td class="drink_detail_page_title">RECIPE</td>
	</tr>
	<tr>
		<td class="drink_detail_page_txt"><c:forTokens var="item" items="${drink.cocktail_recipe }" delims="@">
		${item }<br>
</c:forTokens></td>
	</tr>
	<tr>
		<td class="drink_detail_page_title">TAG</td>
	</tr>
	<tr>
		<td><c:forTokens var="item" items="${drink.cocktail_tag }" delims="!">
		<a href="Search_drinkController?selected_cocktail=${item }" title="Button push lightblue" class="button btnPush btnLightBlue">${item }</a>
</c:forTokens></td>
	</tr>
</table>


<form action="Star_regController">
<table class="drink_detail_page_table2">
	<tr>
		<td>
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
			</div>
			<input type="hidden" name="num" value="${drink.cocktail_num }">
			<input type="hidden" name="user_id" value="'세션id'"></td>
		<td><button class="drink_detail_page_btn_green">별점주기</button></td>
	</tr>
</table>
</form>		




 



<%-- <c:if test="${세션아이디가 있으면 } "> 
            <h2> 
                별점버튼이 나오게
            </h2> 
        </c:if> --%>


</body>

</html>