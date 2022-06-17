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

<h1>슬라이드 들어갈자리</h1>


	<div class="ourCollectionInput">
		
<form action="Search_drinkController">
		<div style="background-color: #0d47a1">
			<input name="selected_cocktail" placeholder="SEARCH" type="text" onkeyup="this.value = this.value.toUpperCase();"><button>검색</button>
		</div>
</form>
	</div>


<table class="OurCocktail_Tbl">
	<tr>
	<td colspan="10"></td>
		<c:forEach var="m" items="${drinks}" varStatus="status">
			<c:if test="${status.index%4==0}">
				</tr><tr>
			</c:if>
    	<td class="OurCocktail_Td"><a href="Drink_Info_DetailController?num=${m.cocktail_num}"><img alt="" src="fileFolder/${m.cocktail_img}" style="width: 170px; height: 230px"></a></td>
    	<td class="OurCocktail_Td2">${m.cocktail_name}</td>
		</c:forEach>
	</tr>
</table>





</body>

</html>