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

<div class="login" style="height:500px; width:1000px;">
<table id="board_free1">
	<tr>
		<td class="board_td_title">자유게시판 &nbsp;&nbsp;&nbsp; ${r }</td>
		<td class="board_td_title"><a href="FreeRegC">글쓰기</a></td>
	</tr>
</table>

<%-- <table id="board_free2">
<c:forEach var="free" items="${frees }">
	<tr class="f_tr1">
		<td class="f_td1">${frees.f_board_title }</td>
		<td class="f_td1"><fmt:formatDate value="${frees.board_date }" type="both" dateStyle="short" timeStyle="short"/></td>
	</tr>
</c:forEach>
</table> --%>


</div>

</body>
</html>