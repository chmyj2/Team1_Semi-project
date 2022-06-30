<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" href="css/board.css">
<script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
<script type="text/javascript" src="jsp/sm/reg.js"></script>
<script type="text/javascript" src="jsp/sm/jquery.js"></script>
<script type="text/javascript">	
	
$(function(){
	
	$("#updateCBtn").click(function(){
		var ccc = $("#comment_txt").val();
		let boardNum = $("#boardNum").val();//게시글
		let commentNum = $("#commentNum").val();//댓글
		
		
		if (ccc=="") {			
			alert("내용을 입력하세요");
			ccc.focus();
		}
		
		
		location.href="commentUpdateC?commentNum="+commentNum+"&boardNum="+boardNum+"&commentTxt="+commentTxt;
		
	});

    
});

</script>
</head>
<body>

<div class="login" style="height:100%; width:1000px; text-align: left;">

	<table>
		<tr>
			<td colspan="3" style="font-weight: 500; font-size: 20pt; width: 1000px;">${frees.board_title }</td>
		</tr>
		<tr><td style="height: 20px;"></td></tr>
		<tr>
			<td style="font-weight: 600;">작성자 ${frees.user_id }</td>
			<td style="text-align: right; color: gray;"><fmt:formatDate value="${frees.board_date }" type="both" dateStyle="short" timeStyle="short"/></td>
		</tr>
	</table>
	<hr size="4" noshade><br>
	<table style="height:500px;">
		<tr>
			<td><img id="pppp" class="qqqq" src="imgfile/${frees.board_img }" onerror="this.style.display='none'" style="height: 500px; display: bolck;"></td>
		</tr>
		<tr>
			<td style="white-space: pre;">${frees.board_txt }</td>
		</tr>
		<tr><td style="height: 50px;"></td></tr>
	</table>
	<hr size="4" noshade>
	<table>
		<tr>
			<td><a href="boardCfree"><h4>목록으로</h4></a>&emsp;</td>
			<td style="width: 650px;"></td>
			<td>
			<c:set var="frees" scope="session" value="${user_id }"/>
			<c:if test="${frees.user_id eq sessionScope.accountInfo.user_id }">
				<button class="btn-success" type="button" onclick="location.href='boardFreeUpdateC?boardNum=${frees.board_num }'">수정</button>
				<button class="btn-success" type="button" onclick="deletePost(${frees.board_num })">삭제</button>
			</c:if>
			</td>		
		</tr>	
	</table>
	
	
	<table>
		<tr>
			<br>
			<h2 style="font-style: oblique;">comment</h2><br>
		</tr>
	</table>
		
	<table border="0">
	<c:forEach var="c" items="${comments }">
	<tr>
	<!-- 수정창-->
		<td colspan="4">
		 <div class="d${c.comment_num }" style="display:none;">
					<textarea placeholder="댓글을 입력해 주세요." name="${c.comment_num }" id="c${c.comment_num }" 
					style="width: 860px; height: 25px; margin-bottom:-8px; font-size:11pt; border: 1px solid gray; resize: none;"></textarea>
					<button class="btn-success3" onclick="commentReg('${frees.board_num }','${c.comment_num }','c${c.comment_num }')">확인</button></div>
		</td>
	</tr>
	<tr>
		<td style="width: 90px; height: 10px; padding-bottom: 20px; font-weight: 600;">${c.user_id }&emsp;&emsp;</td>
		<td style="width: 600px; padding-bottom: 20px;">${c.comment_txt }&emsp;</td>
		<td style="width: 170px; padding-bottom: 20px; text-align: center; color: gray; font-size: 9pt;"><fmt:formatDate value="${c.comment_date }" type="both" dateStyle="short" timeStyle="short"/></td>
	
		<td>
		<!-- 세션이 맞을때 수정.삭제 버튼이 나옴-->
			<c:set var="c" scope="session" value="${user_id }"/>
			<c:if test="${c.user_id eq sessionScope.accountInfo.user_id }">
				
				<input type="hidden" class="commentNum" id="commentNum" name="commentNum" value="${c.comment_num }">
				<button class="btn-success2" onclick="commentEdit('d${c.comment_num }')">수정</button>
				<button class="btn-success2" type="button" onclick="deleteComment(${c.comment_num },'${frees.board_num }')">삭제</button>
				 <%-- <div class="d${c.comment_num }" style="display:none;">
					<textarea placeholder="댓글을 입력해 주세요." name="comment_txt" id="comment_txt" 
					style="width: 200px; height: 30px; border: none; resize: none;"></textarea>
					<button class="btn-success2" id="updateCBtn">확인</button></div> --%>
		
					
			</c:if>
		</td>
		</tr>
	</c:forEach>	
		
	</table>
	
	<form action="CommentMainC" method="post">
	<table>
		
		<tr>
			<td>
				<textarea  name="commentTxt"  placeholder="댓글을 입력해 주세요." maxlength="100" 
				style="width: 830px; height: 60px; border: 1px solid gray; margin-bottom:-8px; resize: none;"></textarea>
				<button class="btn-success">확인</button>
			</td>
		</tr>
		<tr>
			<td>
				<input type="hidden" class="boardNum" id="boardNum" name="boardNum" value="${frees.board_num }">
			</td>
		</tr>
		
				
	</table></form>
	</div>
	

</body>
</html>