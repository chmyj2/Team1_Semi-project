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


<div class="ourCollectionInput">
		
<form action="Search_drinkController">
		<div style="background-color: #0d47a1">
			<input name="selected_cocktail" type="text" placeholder="SEARCH" onkeyup="this.value = this.value.toUpperCase();"><button>검색</button>
		</div>
</form>
	</div>

<c:forEach var="m" items="${drinks}" varStatus="status">
		<table class="OurCocktail_Tbl" width='150px;' height='250px' style="float: left; vertical-align: middle;">
			<tr>
				<td class="OurCocktail_Td"><a href="Drink_Info_DetailController?num=${m.cocktail_num}">
				<img alt="" src="fileFolder/${m.cocktail_img}"style="max-width:150px;"></a></td>
				</tr>
			<tr style="height:auto;">
				<td class="OurCocktail_Td2">${m.cocktail_name}</td>
			</tr>
		</table>
	</c:forEach>





</body>


</html>