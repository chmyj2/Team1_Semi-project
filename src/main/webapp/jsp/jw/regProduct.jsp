<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="jsp/jw/regProduct.js" ></script>
</head>
<body>





	<h1>상품등록</h1>
	<div class = "regPageCategoryDiv" >
	<div class = "categoryTitleDiv">CATEGORY</div>
		<div class = "categoryButtonsDiv">
				<a id = "categorySearch " class= "shopButton" onclick = "onSearchDiv()">CATEGORY SEARCH</a>
				<a id = "categorySelect" class= "shopButton" onclick = "onSelectDiv()">CATEGORY SELECT</a>
				<a class= "shopButton shoButton-Gray"  onclick="createPopup()">ADD CATEGORY</a>
		</div>
		
		<div class = "cSearchDiv">
			<input class = "categorySearchInput" placeholder = "카테고리명 입력">
		</div>
		
		
		
		
		
		<div class = "cSelectDiv" style = "width : 95%; display : none;" >
			<input id = "CategoryNum"  type = "hidden" value = "">
			<div style = "float: left; width : 30%; border: 1px solid gold;" >
				<c:forEach var="category" items = "${categories}">	
					<a style="cursor:pointer" onclick = "selectMainCategory('${category.num}')" >${category.name}</a>
					<hr>
				</c:forEach>
			 </div>
			 
			 
		<div class = "MCategoryDiv" style = "float: left; width : 30%; display:none" >
			<c:forEach var="category" items = "${categories}">	
				<div class =${category.num }>
					<c:forEach var="childCategory" items = "${category.getChild()}">	
						<a style="cursor:pointer" onclick = "selectMidCategory('${childCategory.num}')"> ${childCategory.name }</a>
						<hr>	
					</c:forEach>
				</div>
			</c:forEach>
		</div>
			
			
		<div class = "SubCategoryDiv" style = "float: left; width : 30%; display : none" > 
			<c:forEach var="category" items = "${categories}">	
				<c:forEach var="secondCategory" items = "${category.getChild()}">	
					<div class =${secondCategory.num } style = "display : none">
						<c:forEach var="thirdCategory" items = "${secondCategory.getChild()}">	
							<a style="cursor:pointer" onclick = "selectSubCategory('${thirdCategory.num}')">${thirdCategory.name }</a>
							<hr>				
						</c:forEach>
					</div>
				</c:forEach>
			</c:forEach>
		</div>
			
			
		</div>
		<!-- cSelectDiv -->
	</div>
	
	<div class = "regProductNameDiv">
		<div class = "categoryTitleDiv">상품명</div>
			<div>
				<input class = "ProductNameInput">
			</div>
	</div>
	
	<div class = "regPageCategoryDiv">
		<div class = "categoryTitleDiv">판매가</div>
		
		<div class = "priceSettingDiv">
			<div>
				<div class = "rdgPageDiv">
					판매가
				</div>
				<input class = "PriceInput">
			</div>
			
			<div>
				<div class = "rdgPageDiv">
					공급가
				</div>
				<input class = "PriceInput">
			</div>
			
			<div>
				<div class = "rdgPageDiv"> 
					할인여부
				</div>
				Yes Or No
			</div>
			
			<div>
				<div class = "rdgPageDiv"> 
					할인명
				</div>
				<input class = "PriceInput">
			</div>
			
		
		<div>
				<div class = "rdgPageDiv"> 
				전체할인가
				</div>
				<input class = "PriceInput">
		</div>
		
		<div>
				<div class = "rdgPageDiv"> 
				부가세
				</div>
				과세상품/면세상품/영세상품
		</div>
		</div>
	</div>
	
	<div class = "regProductNameDiv">
		<div class = "categoryTitleDiv">재고수량	</div>
			<div>
				<input class = "ProductNameInput">
			</div>
	</div>
	
	<div class = "regProductNameDiv">
		<div class = "categoryTitleDiv">재고수량	</div>
			<div>
				<input class = "ProductNameInput">
			</div>
	</div>
	
	
	<div class = "regProductImgDiv">
		<div class = "categoryTitleDiv">상품이미지</div>
		<div style = "height : 40%">
			<div style = "float:left">
				대표이미지
			</div>
			<div style = "float:left">
				<div>이런느낌?</div>
			</div>
		</div>
		<div>
				추가이미지
		</div>
	</div>
	
	
	<div>
		<h1>태그머</h1>
	</div>
	
	<div>
		<h1>진열여부</h1>
	</div>
	
	<div>
		<h1>판매여부</h1>
	</div>
	
	
	
	<!-- 
	<form action="ProductRegController"  method = "post" enctype="multipart/form-data">
		<table id = "productTbl">
			<tr>
				<td>상품 이름</td>
				<td><input name = title></td>
			</tr>
			<tr>
				<td>카테고리</td>
			</tr>
			<tr>
			<td><input></td>
			</tr>
			<tr>
				<td>할인여부</td>
				<td><input type="radio" name="Discount" value="Y"> O 
				<input type="radio" name="Discount" value="N"> X</td>
			</tr>
			
			<tr>
				<td>판매가</td>
				<td><input name = "price"></td>	
			</tr>
			<tr>
				<td>원가</td>
				<td><input name = "supply_price"></td>
			</tr>
			<tr>
				<td>대표 이미지</td> 
				<td> <input type="file" name = "file"></td> 
			</tr>
			<tr>
				<td>이미지1</td> 
				<td> <input type="file" name = "file1"></td> 
			</tr>
			<tr>
				<td>이미지2</td> 
				<td> <input type="file" name = "file2"></td> 
			</tr>
			<tr>
				<td>이미지3</td> 
				<td> <input type="file" name = "file3"></td> 
			</tr>
			<tr>
				<td>상세내용</td>
				<td><textarea name = "exp" style = "width:1500px; height:500px"></textarea></td>
			</tr>
			<tr>
				<td>해시태그</td>
				<td><input name = "tag"></td>
			</tr>
			<tr>
				<td>상품재고</td>
				<td><input type = "number" value = "1"></td>
			</tr>
			<tr>
				<td>상품공개</td>
				<td><input type="radio" name="Exhibition" value="Y"> 공개 
				<input type="radio" name="Exhibition" value="N"> 비공개 </td>
			</tr>
			<tr>
				<td colspan="2"><button>등록</button></td>
			</tr>
	</table>
	</form>
	 -->
</body>
</html>