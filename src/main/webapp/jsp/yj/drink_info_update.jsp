<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<script type="text/javascript" src="home.js" ></script>
<script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
<link rel="stylesheet" href="css/drink_reg__page.css">

<body>


	<h1>술 정보 수정</h1>
	<h1>수정 : ${drink.cocktail_name }</h1>


	<form name="form" action="Drink_Info_Update_Controller" method="post" enctype="multipart/form-data">

		<table class="reg_tbl1" style="background-color: #0d47a1;">
		<tr>
			<td colspan="2"><img alt="" src="fileFolder/${drink.cocktail_img }" height="300px" width="260px"></td>
		</tr>
			<tr>
				<td>DRINK NAME</td>
				<td><input  id="cocktail_name" class="drink_reg_input" name="cocktail_name" value="${drink.cocktail_name }"></td>
			</tr>
			<tr>
				<td>DRINK INFO</td>
				<td><textarea id="cocktail_info" style="width: 395px;height: 100px;border: none;resize: none; border-radius: 5px" name="cocktail_info">${drink.cocktail_info }</textarea></td>
			</tr>
			<tr>
				<td>DRINK IMG</td>
				<td><input type="hidden" name="cocktail_img" id="cocktail_img" value="${drink.cocktail_img }">
				<input type="file" name="cocktail_img2" id="cocktail_img"></td>
			</tr>
			<tr height="40px">
				<td></td>			
				<td></td>			
			</tr>
		</table>
		<table class="reg_tbl12" style=" border-spacing: 0px; border-style: none; padding: 0px;">
			<tr>
				<td>
					<table id="addTable2" style="background-color: #0d47a1;">
						<tr height="10px">
							<td></td>
						</tr>
						<tr style="color: ">
							<td>TAGS</td>
						</tr>
						<tr>
							<td><input id="cocktail_tag" class="drink_reg_input3" name="cocktail_tag">
								<input class="erase" type=button value='삭제' onClick='removeinput_value3()' style='cursor:hand'>
							</td>
						</tr>
					</table>
				</td>
			</tr>
			<tr>
				<td>
					<table id="addTable3" style="background-color: #0d47a1;">
						<tr height="10px">
							<td></td>
						</tr>
						<tr style="color: ">
							<td>RECIPE</td>
						</tr>
						<tr>
							<td><input id="cocktail_recipe" class="drink_reg_input" name="cocktail_recipe">
								<input class="erase" type=button value='삭제' onClick='removeinput_value()' style='cursor:hand'>
							</td>
						</tr>
					</table>
				</td>
			</tr>
			<tr>
				<td>
					<table id="addTable" style="background-color: #0d47a1;">
						<tr height="10px">
							<td></td>
						</tr>
						<tr style="color: ">
							<td>INGREDIENTS</td>
						</tr>
						<tr>
							<td><input id="cocktail_ingredient" class="drink_reg_input2" name="cocktail_ingredient">
								<input class="erase" type=button value='삭제' onClick='removeinput_value2()' style='cursor:hand'>
							</td>
						</tr>
						<tr>
							<td>
							<input type="hidden" value="${drink.cocktail_num}" name="cocktail_num">
							</td>
						</tr>
					</table>
					
					
					
					
					
					
				</td>
			</tr>
		</table>
	</form>
	
	
	

	<table  style="text-align: center; width: 550px; background-color: #0d47a1; margin-left: 430px">
		<tr>
			<td>
				<input class="tag_txt_reg_btn" name="addButton2" type="button" style="cursor: hand" onClick="insRow2()" value="태그 추가">
				<input class="recipe_txt_reg_btn" name="addButton3" type="button" style="cursor: hand" onClick="insRow3()" value="레시피 추가"> 
				<input class="ingredient_txt_reg_btn" name="addButton" type="button" style="cursor: hand" onClick="insRow()" value="재료 추가">
			</td>
		</tr>
	</table>

	<table style="text-align: center; width: 550px;margin-left: 430px">
		<tr>
			<td><input class="reg_input" type="button" name="button" value="수정"
				onClick="frmCheck();" >
			</td>
		</tr>
	</table>
		


</body>
<script src="https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/7.2.0/sweetalert2.all.min.js"></script>
</html>