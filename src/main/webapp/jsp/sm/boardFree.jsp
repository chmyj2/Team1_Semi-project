<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<form class="login" style="height:500px; width:1000px;">
<table id="tbl_board_title">
	<tr style="font-weight: 1000;">
		<td class="board_td_title">자유게시판&emsp;&emsp;</td>
		<td class="board_td_title"><a href="FreeRegC">글쓰기</a></td>
	</tr>
	<tr>
		<td>[검색창 자리]</td>
	</tr>
</table><hr><br><br>

<table id="tbl_board_list">
<c:forEach var="f" items="${frees }">
	<tr class="f_tr1">
		<td class="f_td1" style="width:5%;">${f.board_num }</td>
		<td class="f_td1" style="width:30%; text-align: center;" onclick="location.href='boardFreeDetailC?No=${f.board_num }'">${f.board_title }</td>
		<td class="f_td1">${f.user_id }</td>
		<td class="f_td1"><fmt:formatDate value="${f.board_date }" type="both" dateStyle="short" timeStyle="short"/></td>
	</tr>
</c:forEach>
</table>
</form>

</body>
</html>