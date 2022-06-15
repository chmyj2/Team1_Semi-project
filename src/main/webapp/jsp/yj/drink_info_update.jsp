<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<script type="text/javascript" src="home.js" ></script>

<body>


	<h1>술 정보 수정</h1>
	<h1>수정하고 싶은 술 : ${drink.cocktail_name }</h1>


	<form name="form" action="drink_Info_Update_Controller" method="post" enctype="multipart/form-data">

		<table style="background-color: gray">
			<tr>
				<td>술이름</td>
				<td><input name="cocktail_name" value="${drink.cocktail_name }"></td>
			</tr>
			<tr>
				<td>술 설명</td>
				<td><textarea name="cocktail_info"></textarea></td>
			</tr>
			<tr>
				<td>술 이미지</td>
				<td><input type="file" name="cocktail_img"></td>
			</tr>
			<tr>
				<td>
					<input type="hidden" name="cocktail_num" value="${param.num }">
				</td>
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
							<td><input name="cocktail_ingredient"  style="width: 300px"></td>
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




<%-- <button name="button" value="${param.num }onClick="frmCheck();" style="text-align: center; width: 310px">수정</button> --%>

	<table border="1">
		<tr>
			<td><input type="button" name="button"  value="수정"
				onClick="frmCheck();" style="text-align: center; width: 310px">
			</td>
		</tr>
	</table>

</body>
</html>