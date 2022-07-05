<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h1>상품등록</h1>
	<form action = "ProductRegController" method = "post" enctype="multipart/form-data">
	<div class = "regPageCategoryDiv" >
	<div class = "categoryTitleDiv">CATEGORY</div>
		<div class = "categoryButtonsDiv">
				<a id = "categorySelect" class= "shopButton" onclick = "onSelectDiv()">CATEGORY SELECT</a>
				<a class= "shopButton shoButton-Gray"  onclick="createPopup()">ADD CATEGORY</a>
		</div>
		

			<input id ="categoryInputId" name ="categoryNum" value="" type = "hidden">
		

		
		<div class = "cSelectDiv" style = "width : 95%;" >
			<input id = "CategoryNum"  type = "hidden" value = "">
			<div style = "float: left; width : 30%; border: 1px solid gold;  margin-left : 30px;" >
				<c:forEach var="category" items = "${categories}">	
					<a style="cursor:pointer" onclick = "selectMainCategory('${category.num}')" >${category.name}</a>
					<hr>
				</c:forEach>
			 </div>	
			 
			 
		<div class = "MCategoryDiv" style = "float: left; width : 30%; margin-left:30px; display:none" >
			<c:forEach var="category" items = "${categories}">	
				<div class =${category.num } >
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
					<div class =${secondCategory.num } style = "display : none; margin-left : 30px;">
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
				<input name = "name" class = "ProductNameInput">
			</div>
	</div>
	
	<div style = "margin-top :50px;" class = "regPageCategoryDiv">
		<div  class = "categoryTitleDiv">판매가</div>
		
		<div class = "priceSettingDiv">
			<div style = "margin-top :30px;">
				<div class = "rdgPageDiv">
					판매가격
				</div>
				<input type = "number" name = "price" class = "PriceInput">
			</div>
			
			<div style = "margin-top :30px;">
				<div class = "rdgPageDiv"> 
					할인여부
				</div>
				O  <input type = "radio" name = "onDiscount" value= "Y">
				X  <input type = "radio" name = "onDiscount" value= "N">	
			</div>
			
			<div style = "margin-top :30px;">
				<div class = "rdgPageDiv"> 
					할인명
				</div>
				<input name = "discountName" class = "PriceInput">
			</div>
			
		<div style = "margin-top :30px;">
				<div  class = "rdgPageDiv"> 
				전체할인가
				</div>
				<input name = "discountPrice" class = "PriceInput">
		</div>
		
		<div style = "margin-top :30px;">
				<div  class = "rdgPageDiv"> 
				부가세
				</div>
				과세  <input type = "radio" name = "onVAT" value= "10">
				면세  <input type = "radio" name = "onVAT" value= "0">		
		</div>
	</div>
	</div>
	
	<div class = "regProductNameDiv">
		<div class = "categoryTitleDiv">재고수량	</div>
			<div>
				<input name ="stock" class = "ProductNameInput">
			</div>
	</div>
	
	
	<div class = "regProductImgDiv">
		<div class = "categoryTitleDiv">대표 이미지</div>
		
		<div class = "regProductImgSubDiv">
			<div class = "imgExpDiv">
				<div class = "thumLabelDiv">
				<label class ="thumLabel" for="chooseThumb">대표이미지 추가</label>
				<input type="file" name = "thumbNail" class="thumbUpload" id = "chooseThumb" accept ="image/*" onchange = "dropThumbFile.handleFiles(this.files)">
				</div>
			</div>
			
			
			<div class = "imgAddFrame">
				<div id = "dropThumb" class = "thumbUploadBox">
				 <img src="https://img.icons8.com/pastel-glyph/2x/image-file.png" alt="파일 아이콘" class="image">
   				 <p class="message">Drag files to upload</p>
    			 <img src="" alt="미리보기 이미지" class="previewThumb">
				</div>
			</div>		
		</div>
	</div>

	<div class = "regProductImgDiv">
		<div class = "categoryTitleDiv">이미지1</div>
		
		<div class = "regProductImgSubDiv">
			<div class = "imgExpDiv">
				<div class = "thumLabelDiv">
				<label class ="thumLabel" for="chooseImg1">이미지1 추가</label>
				<input type="file" name = "img1" class="thumbUpload" id = "chooseImg1" accept ="image/*" onchange = "dropPreviewImg.handleFiles(this.files)">
				</div>
			</div>
			
			
			<div class = "imgAddFrame">
				<div id = "dropImg1" class = "thumbUploadBox">
				 <img src="https://img.icons8.com/pastel-glyph/2x/image-file.png" alt="파일 아이콘" class="image">
   				 <p class="message">Drag files to upload</p>
    			 <img src="" alt="미리보기 이미지" class="previewImg1 previewThumb">
				</div>
			</div>		
		</div>
	</div>
	
	<div class = "regProductImgDiv">
		<div class = "categoryTitleDiv">이미지2</div>
		
		<div class = "regProductImgSubDiv">
			<div class = "imgExpDiv">
				<div class = "thumLabelDiv">
				<label class ="thumLabel" for="chooseImg2">이미지2 추가</label>
				<input type="file" name = "img2" class="thumbUpload" id = "chooseImg2" accept ="image/*" onchange = "dropPreviewImg2.handleFiles(this.files)">
				</div>
			</div>
			
			
			<div class = "imgAddFrame">
				<div id = "dropImg2" class = "thumbUploadBox">
				 <img src="https://img.icons8.com/pastel-glyph/2x/image-file.png" alt="파일 아이콘" class="image">
   				 <p class="message">Drag files to upload</p>
    			 <img src="" alt="미리보기 이미지" class="previewImg2 previewThumb">
				</div>
			</div>		
		</div>
	</div>

	<div class = "regProductImgDiv">
		<div class = "categoryTitleDiv">이미지3</div>
		
		<div class = "regProductImgSubDiv">
			<div class = "imgExpDiv">
				<div class = "thumLabelDiv">
				<label class ="thumLabel" for="chooseImg3">이미지3 추가</label>
				<input type="file" name = "img3" class="thumbUpload" id = "chooseImg3" accept ="image/*" onchange = "dropPreviewImg3.handleFiles(this.files)">
				</div>
			</div>
			
			
			<div class = "imgAddFrame">
				<div id = "dropImg3" class = "thumbUploadBox">
				 <img src="https://img.icons8.com/pastel-glyph/2x/image-file.png" alt="파일 아이콘" class="image">
   				 <p class="message">Drag files to upload</p>
    			 <img src="" alt="미리보기 이미지" class="previewImg3 previewThumb">
				</div>
			</div>		
		</div>
	</div>
	
	
	

	
	<div class = "regProductImgDiv">
		<div class = "categoryTitleDiv"> 내용을 입력해주세요</div>
		
		<div> 
		<textarea name = "content" style = "width : 100%; height:550px; font-size: 40px;"> 상품 설명</textarea>
		</div>
		
	</div>
	
	
	<div class = "regProductNameDiv">
		<div class = "categoryTitleDiv">태그</div>
		<div> <input name = "tags" class = "ProductNameInput"></div>
	</div>
	
	<div class = "regProductNameDiv">
		<div class = "categoryTitleDiv">진열여부</div>
		<div>
			공개  <input type = "radio" name = "onExhibition" value= "Y">
			비공개 <input type = "radio" name = "onExhibition" value= "N">
		</div>
	</div>
	
	<div class = "regProductNameDiv"> 
		<div class = "categoryTitleDiv" >판매여부</div>
			<div>
				판매  <input type = "radio" name = "onSale" value= "Y">
				판매중지 <input type = "radio" name = "onSale" value= "N">
			</div>
		</div>
	<div>
		<button class = "shopButton" style = "margin-top: 30px; margin-bottom: 30px">등록</button>
	</div>
	</form>
	
	
</body>
<script type="text/javascript" src="jsp/jw/regProduct.js" ></script>
<script type="text/javascript" src="jsp/jw/imageUpload/imageUpload.js" ></script>
</html>