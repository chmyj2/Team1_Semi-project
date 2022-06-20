<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

<form action="boardFreeUpdateC" method="post" enctype="multipart/form-data" 
class="login" name="" onsubmit="return postUp()" style="height:500px; width:1000px;">
<table id="board_free1">
	<tr>
		<td class="board_td_title">자유게시판 &nbsp;&nbsp;&nbsp;</td>
	</tr>
</table>

<input type="hidden" name="number" value="${frees.board_num }">
<input type="hidden" name="pretitle" value="${frees.board_title }">
<input type="hidden" name="pretxt" value="${frees.board_txt }">
<input type="hidden" name="prefile" value="${frees.board_img }">


<table border="1" id="tbl_reg">
	<tr>
		<td><input id="title" name="title" value="${frees.board_title }" style="width: 900px; height: 20px;" maxlength='50'></td>
	</tr>
	<tr>
		<td><textarea id="txt" name="txt" style="width: 900px; height: 250px;" maxlength="1000">${frees.board_txt }</textarea></td>
	</tr>
	<tr>
		<td style="text-align: left;"><input type="file" name="file" id="file">
		<img src="imgfile/${frees.board_img }" onerror="this.style.display='none';" style="height:50px;"></td>
	</tr>
	<tr>
		<td id="r_td3" style="text-align: left;"><button>수정</button></td>
	</tr>
</table>
</form>


</body>
</html>