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

<div class="main1">
	<ul>
		<li>
			<div class="slidetitle"> 
				<span>Strawberry Daiquiri with<br>Basil & Elderflower</span>
			</div>
			<a href='http://localhost:8080/TeamProject/Drink_Info_DetailController?num=57'>
				<img src="img/yjslider4.png">
			</a>
		</li>
		<li>
			<div class="slidetitle"> 
				<span>Bloody Mary with<br>Pears & Pomegranate</span>
			</div>
			<a href='http://localhost:8080/TeamProject/Drink_Info_DetailController?num=37'>
				<img src="img/yjslider1.png"/>
			</a>
		</li>
		<li>
			<div class="slidetitle"> 
				<span>Faux Kir Royale<br>Vodka Sour</span>
			</div>
			<a href='http://localhost:8080/TeamProject/Drink_Info_DetailController?num=68'>
				<img src="img/yjslider2.png"/>
			</a>
		</li>
		<li>
			<div class="slidetitle"> 
				<span>Negroni<br>(Norwegian Mulled Wine)</span>
			</div>
			<a href='http://localhost:8080/TeamProject/Drink_Info_DetailController?num=49'>
				<img src="img/yjslider3.png"/>
			</a>
		</li>
		<li>
			<div class="slidetitle"> 
				<span>Ginger Old Fashioned</span>
			</div>
			<a href='http://localhost:8080/TeamProject/Drink_Info_DetailController?num=50'>
				<img src="img/yjslider5.png"/>
			</a>
		</li>
	</ul>
	</div>
	


<div class="ourCollectionInput_div">
		<form action="Search_drinkController" id="ourCollectionInput_for" onsubmit="return jbSubmit()">  
			<div>
				<h1 class="ourCollectionInput_h1">FIND YOUR FLAVOR</h1>
			</div>
			<div style="background-color: #0d47a1" >
				<input  class="ourCollectionInput" id="ourCollectionInput" name="selected_cocktail" placeholder="SEARCH" type="">
				<input id="ourCollectionBtn" type="submit" value="GO">
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
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/7.2.0/sweetalert2.min.css">
  <script src="https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/7.2.0/sweetalert2.all.min.js"></script>
<script>
  function jbSubmit() {
    var inputVal = document.getElementById( 'ourCollectionInput' ).value;
    if (inputVal == "") {
    	swal("검색어를 입력해주세요.", "Please Enter The CockTails").then(function() {
		})
	 	return false;
	}
  }
</script>

</html>