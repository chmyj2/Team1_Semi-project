<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

</head>

<body>

	
	<div class="ourCollectionInput_div">
		<form action="Search_drinkController" id="ourCollectionInput_form" method="post"> 
			<div>
				<h1 class="ourCollectionInput_h1">SEARCH</h1>
			</div>
			<div style="background-color: #0d47a1" >
				<input class="ourCollectionInput" name="selected_cocktail" placeholder="SEARCH" type="search">
				<button id="ourCollectionBtn">GO</button>
			</div>
		</form>
	</div>

	<table>
		<tr>
			<td><h1>술 정보 등록</h1></td>
		</tr>
	</table>
	


	<form name="form" action="Drink_Info_regController" method="post"
		enctype="multipart/form-data">

		<table style="background-color: gray">
			<tr>
				<td>DRINK NAME</td>
				<td><input name="cocktail_name" style="width: 255px" ></td>
			</tr>
			<tr>
				<td>DRINK INFO</td>
				<td><textarea name="cocktail_info"></textarea></td>
			</tr>
			<tr>
				<td>DRINK IMG</td>
				<td><input type="file" name="img"></td>
			</tr>
		</table>
		<table>
			<tr>
				<td>
					<table id="addTable3"
						style="background-color: yellow; width: 318px">
						<tr>
							<td>RECIPE</td>
						</tr>
						<tr>
							<td><input name="cocktail_recipe" style="width: 300px"></td>
						</tr>
					</table>
				</td>
			</tr>
			<tr>
				<td>
					<table id="addTable" style="background-color: red; width: 318px">
						<tr>
							<td>INGREDIENTS</td>
						</tr>
						<tr>
							<td><input name="cocktail_ingredient" style="width: 300px"></td>
						</tr>
					</table>
				</td>
			</tr>
			<tr>
				<td>
					<table id="addTable2" style="background-color: green; width: 318px">
						<tr>
							<td>TAGS</td>
						</tr>
						<tr>
							<td><input name="cocktail_tag" style="width: 300px"></td>
						</tr>
					</table>
				</td>
			</tr>
		</table>



	</form>


	<table border="1" style="text-align: center; width: 318px">
		<tr>
			<td><input name="addButton3" type="button" style="cursor: hand"
				onClick="insRow3()" value="레시피 추가"> <input name="addButton"
				type="button" style="cursor: hand" onClick="insRow()" value="재료 추가">
				<input name="addButton2" type="button" style="cursor: hand"
				onClick="insRow2()" value="태그 추가"></td>
		</tr>
	</table>







	<table border="1">
		<tr>
			<td><input type="button" name="button" value="확인"
				onClick="frmCheck();" style="text-align: center; width: 310px">
			</td>
		</tr>
	</table>





	

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