<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>상품등록</h1>
	<form action="ProductDAO"  method = "post" enctype="multipart/form-data">
	<table id = "productTbl">
			<tr>
				<td>상품 이름</td>
				<td><input name = title></td>
			</tr>
			<tr>
				<td>판매가</td>
				<td><input name = "price"></td>
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
				<td><textarea name = "exp"></textarea></td>
			</tr>
			<tr>
				<td>해시태그</td>
				<td><input name = "tag"></td>
			</tr>
			<tr>
				<td colspan="2"><button>등록</button></td>
			</tr>
	</table>
	</form>
</body>
</html>