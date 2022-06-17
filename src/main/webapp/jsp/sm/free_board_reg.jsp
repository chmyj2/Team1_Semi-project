<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

<form action="FreeRegC" method="post" enctype="multipart/form-data" class="login" style="height:500px; width:1000px;">
<table id="board_free1">
	<tr>
		<td class="board_td_title">자유게시판 &nbsp;&nbsp;&nbsp; ${r }</td>
	</tr>
</table>
<table border="1" id="tbl_reg">
	<tr>
		<td><input id="title" name="title" placeholder="제목" style="width: 900px; height: 20px;"></td>
	</tr>
	<tr>
		<td><textarea id="txt" name="txt" placeholder="내용을 입력하세요." style="width: 900px; height: 250px;"></textarea></td>
	</tr>
	<tr>
		<td style="text-align: left;"><input type="file" name="file"></td>
	</tr>
	<tr>
		<td id="r_td3" style="text-align: left;"><button>등록</button></td>
	</tr>
</table>
</form>

</body>
</html>