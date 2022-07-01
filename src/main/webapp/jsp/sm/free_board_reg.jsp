<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" href="css/login.css">
<link rel="stylesheet" href="css/board.css">
<script type="text/javascript" src="jsp/sm/reg.js"></script>
<script type="text/javascript" src="jsp/sm/validCheck.js"></script>
</head>
<body style="background-color: rgb(240, 242, 241);">

<form action="FreeRegC" method="post" enctype="multipart/form-data" 
class="login" name="boardForm" onsubmit="return postReg()" style="height:500px; width:1000px;">
<table id="board_free1">
	<tr>
		<td class="board_td_title">OUR SPACE &nbsp;&nbsp;&nbsp;</td>
	</tr>
</table>
<table id="tbl_reg">
	<tr>
		<td><input id="title" name="title" placeholder="제목" style="width: 900px; height: 50px; font-size: 15pt;" maxlength='50'></td>
	</tr>
	<tr>
		<td><textarea id="txt" name="txt" placeholder="내용을 입력하세요." style="width: 900px; height: 250px; border: 1px solid gray; resize: none;" maxlength="1000"></textarea></td>
	</tr>
	<tr>
		<td class="regBtn" style="text-align: left;"><input class="regBtn" type="file" name="file"></td>
	</tr>
	<tr>
		<td id="r_td3" style="text-align: center;"><button class="btn-success">등록</button></td>
	</tr>
</table>
</form>

</body>
</html>