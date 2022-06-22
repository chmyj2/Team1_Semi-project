<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<script type="text/javascript" src="jsp/sm/reg.js"></script>
</head>
<body>

<form class="login" style="height:100%; width:1000px; text-align: left;">
	<table>
		<tr>
			<td style="font-weight: 500; font-size: 20pt">${frees.board_title }</td>
		</tr>
		<tr>
			<td>작성자 : ${frees.user_id }&emsp;&emsp;&emsp;&emsp;
			작성일 : <fmt:formatDate value="${frees.board_date }" type="both" dateStyle="short" timeStyle="short"/></td>
		</tr>
	</table>
	<hr size="5" noshade>
	<table style="height:500px;">
		<tr>
			<td><img src="imgfile/${frees.board_img }" onerror="this.style.display='none';" style="height:200px;"></td>
		</tr>
		<tr>
			<td>${frees.board_txt }</td>
		</tr>
	</table>
	<hr size="5" noshade>
	<table>
		<tr>
			<td><a href="boardCfree">목록으로</a></td>
			<td>
			<c:set var="frees" scope="session" value="${user_id }"/>
			<c:if test="${frees.user_id eq sessionScope.accountInfo.user_id }">
				<button type="button" onclick="location.href='boardFreeUpdateC?No=${frees.board_num }'">수정</button>
				<button type="button" onclick="deletePost(${frees.board_num })">삭제</button>
			</c:if>
			</td>		
		</tr>
	</table>
</form>

</body>
</html>