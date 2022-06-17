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
	<form action="ProductRegController"  method = "post" enctype="multipart/form-data">
	<table id = "productTbl">
			<tr>
				<td>상품 이름</td>
				<td><input name = title></td>
			</tr>
			<tr>
				<td>카테고리</td>
				<td>
				<select name = "test">
					<option value = "temp">임시</option>
					<option value = "tems">임s</option>
				</select>
				<button type="button" onclick="createPopup()">카테고리추가</button>
				</td>
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
</body>
</html>