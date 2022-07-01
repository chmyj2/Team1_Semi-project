<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" href="css/login.css">
</head>
<body style="background-color: rgb(240, 242, 241);">
<form class="login" style="height:500px; width:1000px;">
<table id="tbl_board_title">
	<tr style="font-weight: 1000;">
		<td colspan="4" style="text-align: left; font-size: 25pt;">OUR SPACE</td>
	</tr>
	<tr style="font-weight: 1000;">
		<td colspan="3" class="board_td_title">검색 결과</td>
		<td style="width: 790px;"></td>
		<td class="board_td_title" colspan="3" style="text-align: right;"><a href="boardCfree">목록으로</a></td>
		
</table><hr><br><br>

<table id="result_list">
<c:forEach var="p" items="${posts }">


	<tr class="f_tr1">
		<td class="f_td1" style="width:5%;">${p.board_num }</td>
		<td class="f_td1" style="width:30%; text-align: center;" 
		onclick="location.href='boardFreeDetailC?boardNum=${p.board_num }'">${p.board_title }</td>
		<td class="f_td1">${p.user_id }</td>
		<td class="f_td1"><fmt:formatDate value="${p.board_date }" 
		type="both" dateStyle="short" timeStyle="short"/></td>
	</tr>
</c:forEach>
</table>

</form>




</body>
</html>