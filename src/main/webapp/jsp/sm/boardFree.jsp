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

<form class="login" action="postSearchC" style="height:500px; width:1000px;">
<table id="tbl_board_title">
	<tr style="font-weight: 1000;">
		<td class="board_td_title">자유게시판&emsp;&emsp;</td>
		<td class="board_td_title"><a href="FreeRegC">글쓰기&emsp;&emsp;</a></td>
		<td style="width: 470px"></td>
		<td><select class="form-control" name="searchField">
				<option value="board_title">제목</option>
				<option value="board_txt">내용</option>
				<option value="user_id">작성자</option>
			</select></td>
		<td><input type="text" class="form-control"
			placeholder="검색어 입력" name="searchText" maxlength="10"></td>
		<td><button type="submit" class="btn btn-success">검색</button></td>

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