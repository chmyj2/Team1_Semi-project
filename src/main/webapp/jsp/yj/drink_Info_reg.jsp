<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/drink_reg__page.css">
<script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
     
<style type="text/css">
	.empty_txt{
	margin-top: 100px;
	height: 400px;
	text-align: center;
	font-size: 30pt;

}

.go_back > a{
	text-decoration: none;
	color: gray;
	font-size: 15px;
}



</style>

</head>

<body>

	
	
	<div class="ourCollectionInput_div">
		<form action="Search_drinkController" id="ourCollectionInput_for" onsubmit="return CheckSubmit()" method="post">  
			<div>
				<h1 class="ourCollectionInput_h1">SEARCH</h1>
			</div>
			<div style="background-color: #0d47a1" >
				<input  class="ourCollectionInput" id="ourCollectionInput2" name="selected_cocktail" placeholder="SEARCH" type="">
				<input id="ourCollectionBtn" type="submit" value="GO">
			</div>
		</form>
	</div>

	
	<div>
			<h1 style="color: #0d47a1" class="ourCollectionInput_h1">칵테일 정보 등록 페이지</h1>
	</div>
	



	<form name="form" action="Drink_Info_regController" method="post"
		enctype="multipart/form-data">

		<table class="reg_tbl1" style="background-color: #0d47a1;">
			<tr>
				<td>DRINK NAME</td>
				<td><input  id="cocktail_name" class="drink_reg_input" name="cocktail_name"></td>
			</tr>
			<tr>
				<td>DRINK INFO</td>
				<td><textarea id="cocktail_info" style="width: 395px;height: 100px;border: none;resize: none; border-radius: 5px" name="cocktail_info"></textarea></td>
			</tr>
			<tr>
				<td>DRINK IMG</td>
				<td><input type="file" name="img" id="cocktail_img"></td>
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
			<td><input class="reg_input" type="button" name="button" value="등록"
				onClick="frmCheck();" >
			</td>
		</tr>
	</table>




		<c:if test="${empty drinks}">
		
			<div class="empty_txt">
				<div style=>
					검색 결과가 없습니다.
				</div>
				<div class="go_back">
					<a href="javascript:history.back();">목록으로 돌아가기</a>
				</div>
			</div>
		</c:if>	





<table style="margin-top: 100px">
	<tr>
		<td align="center" style="width:300px">
        <c:choose>
        <c:when test="${curPageNo == 1}">
        <span style="color: #0d47a1;font-size: 70pt;">◁</span>
        </c:when>
        <c:otherwise>
        <a style="text-decoration: none; color: #0d47a1;font-size: 70pt;" href="Drink_reg_PageC?p=${curPageNo -1 }">◀</a>
        </c:otherwise>
        </c:choose>
        </td>
        
        
		<td style="width:900px">
			<table style="text-align: left;border-spacing: 5px; border-collapse: separate;">	
			
				<c:forEach var="m" items="${drinks }"> 
				<tr>
		<td rowspan="11"><img alt="" src="fileFolder/${m.cocktail_img }" style="width: 250px;height: 270px"></td>
	</tr>
	<tr>
		<td class="drink_reg_page_title" >이름</td>
	</tr>
	<tr>
		<td class="drink_reg_page_name"><h1>${m.cocktail_name }</h1></td>
	</tr>
	<tr>
		<td><c:forTokens var="item" items="${m.cocktail_info }" delims="\n">
		${item }
</c:forTokens></td>
	</tr>
	<tr>
		<td class="drink_reg_page_title">재료</td>
	</tr>
	<tr>
		<td><c:forTokens var="item" items="${m.cocktail_ingredient }" delims="!">
		${item }<br>
</c:forTokens></td>
	</tr>
	<tr>
		<td class="drink_reg_page_title">레시피</td>
	</tr>
	<tr>
		<td><c:forTokens var="item" items="${m.cocktail_recipe }" delims="@">
		${item }<br>
</c:forTokens></td>
	</tr>
	<tr>
		<td class="drink_reg_page_title">태그</td>
	</tr>
	<tr>
		<td><c:forTokens var="item" items="${m.cocktail_tag }" delims="!">
		${item }<br>
</c:forTokens></td>
	</tr>
	<tr>
			<td>
			<button class="drink_reg_page_Btn" onclick="location.href='Drink_Info_Update_Controller?num=${m.cocktail_num}'">수정</button>
			<button class="drink_reg_page_Btn2" onclick="deleteDrinkInfo(${m.cocktail_num},'${m.cocktail_img}')">삭제</button>
			</td>
		</tr>
		<tr style="height: 80px">
			<td></td>
		</tr>
		
				</c:forEach>
				
			</table>
		</td>
		
		
		<td align="center" style="font-size: 70pt;width:300px">
        <c:choose>
        <c:when test="${curPageNo == pageCount}">
        <span style="color: #0d47a1;font-size: 70pt;">▷</span>
        </c:when>
        <c:otherwise>
        <a style="text-decoration: none; color: #0d47a1;" href="Drink_reg_PageC?p=${curPageNo + 1 }">▶</a>
        </c:otherwise>
        </c:choose>
        </td>
	</tr>
</table>





</body>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/7.2.0/sweetalert2.all.min.js"></script>
<script>
  function CheckSubmit() {
    var inputVal = document.getElementById( 'ourCollectionInput2' ).value;
    if (inputVal == "") {
    	swal("검색어를 입력해주세요.", "Please Enter The CockTails").then(function() {
		})
	 	return false;
	}
  }
</script>
</html>