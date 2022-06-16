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
		<div style="background-color: green">
			sdas<input name="selected_cocktail" type="text" onkeyup="this.value = this.value.toUpperCase();"><button>검색</button>
		</div>
</form>
	</div>

<table>
<tr>

<c:forEach var="m" items="${drinks}" varStatus="status">
<c:if test="${status.index%4==0}">
</tr>
<tr>
</c:if>
    <td><button onclick="goDetail(${m.cocktail_num})" style="border:0;outline: none;"><img alt="" src="fileFolder/${m.cocktail_img}" style="width: 170px; height: 230px"><br>
    ${m.cocktail_name}</button></td>


</c:forEach>

</tr>
</table>






</body>


</html>