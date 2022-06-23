<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

</head>

<body>

	<h1>술등록</h1>


	<form name="form" action="Drink_Info_regController" method="post"
		enctype="multipart/form-data">

		<table style="background-color: gray">
			<tr>
				<td>술이름</td>
				<td><input name="cocktail_name" style="width: 255px" ></td>
			</tr>
			<tr>
				<td>술 설명</td>
				<td><textarea name="cocktail_info"></textarea></td>
			</tr>
			<tr>
				<td>술 이미지</td>
				<td><input type="file" name="img"></td>
			</tr>
		</table>
		<table>
			<tr>
				<td>
					<table id="addTable3"
						style="background-color: yellow; width: 318px">
						<tr>
							<td>레시피</td>
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
							<td>재료</td>
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
							<td>태그</td>
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

	</table>






	<table border="1">
		<tr>
			<td><input type="button" name="button" value="확인"
				onClick="frmCheck();" style="text-align: center; width: 310px">
			</td>
		</tr>
	</table>

<c:forEach var="m" items="${drinks }">
	<table id="" border="1">
		<tr>
			<td id="" colspan="2"><img id="" src="fileFolder/${m.cocktail_img}"></td>
		</tr>
		<tr>
			<td>[술 이름]</td>
			<td class="">${m.cocktail_name }</td>
		</tr>
		<tr>
			<td>[술 설명]</td>
			<td class="">${m.cocktail_info }</td>
		</tr>
		<tr>
			<td>[술 재료]</td>
			<td class="">${m.cocktail_ingredient }</td>
		</tr>
		<tr>
			<td>[술 레시피]</td>
			<td class="">${m.cocktail_recipe }</td>
		</tr>
		<tr>
			<td>[술 태그]</td>
			<td class="">${m.cocktail_tag }</td>
		</tr>
		
			<td>
			<button onclick="location.href='Drink_Info_Update_Controller?num=${m.cocktail_num}'">수정</button>
			<button onclick="deleteDrinkInfo(${m.cocktail_num})">삭제</button>
			</td>
		</tr>
	</table>
	</c:forEach>	
	









</body>
</html>