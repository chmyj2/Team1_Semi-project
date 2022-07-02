<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<link href='https://fonts.googleapis.com/css?family=Open+Sans:400,700' rel='stylesheet' type='text/css'>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">
<link rel="stylesheet" href="css/login.css">
<style type="text/css">

html {
	-webkit-box-sizing: border-box;
	-moz-box-sizing: border-box;
	box-sizing: border-box;
}

*, 
*:before, 
*:after {
	margin: 0;
	padding: 0;
	-webkit-box-sizing: inherit;
	-moz-box-sizing: inherit;
	box-sizing: inherit;
}

/*--------------------------
* MENU TABS
---------------------------*/

#tbl_board_list{
	z-index: 1;
}


.menu__tabs {
	list-style: none;
	overflow: hidden;
	z-index: 0;
}

.menu__tabs li {
	height: 60px;
	float: left;
	margin-right: 2px;
	font-size: 15pt;
}

.menu__tabs a {
	padding: 20px;
	background: #333b48;
	display: inline-block;
	color: #FFF;
	text-decoration: none;
	-webkit-border-radius: 10px 10px 0 0;
	-moz-border-radius: 10px 10px 0 0;
	border-radius: 10px 10px 0 0;
	-webkit-transition: all 0.3s ease;
	-o-transition: all 0.3s ease;
	transition: all 0.3s ease;
	-webkit-box-shadow: inset 0 -2px 5px rgba(0,0,0,0.2);
	-moz-box-shadow: inset 0 -2px 5px rgba(0,0,0,0.2);
	box-shadow: inset 0 -2px 5px rgba(0,0,0,0.2);
}
.menu__tabs a:hover {
	background: #515a68;
}
.menu__tabs a.active {
	color: #333b48;
	background: #FFF;
	-webkit-box-shadow: none;
	-moz-box-shadow: none;
	box-shadow: none;
}
.menu__tabs a.active i {color: #80cbb7;}
.menu__tabs a i {
	margin-right: 3px;
	color: #aaaaaa;
}

/*--------------------------
* MENU WRAPPER
---------------------------*/
.menu {
	margin: 55px auto;
	width: 100%;
	max-width: 1000px;
	position: relative;
	z-index: 0;
}
.menu__wrapper {
	padding: 2em;
	position: relative;
	background: #FFF;
	min-height: 300px;
	-webkit-border-radius: 0 4px 4px 4px;
	-moz-border-radius: 0 4px 4px 4px;
	border-radius: 0 10px 10px 10px;
	z-index: -1;
	box-shadow: 5px 10px 10px rgba(2, 128, 144, 0.2);
}

.menu__wrapper .menu__item {
	line-height: 1.3;
	color: #76716f;
	display: none;
}
.menu__wrapper .menu__item.item-active {
	display: block;
}
.menu__wrapper .menu__item h3 {
	font-size: 1.8em;
	color: #333b48;
	border-bottom: 1px solid #d9d9d9;
	padding-bottom: 5px;
	margin-bottom: 12px;
}
.menu__wrapper .menu__item p {
	font-size: 1.3em;
	line-height: 1.6em;
	color: #76716f;
}

.f_tr1{
	border-collapse: collapse;
    border: none;
}

.f_tr1:hover {
	background-color: #f4f4f4;
	cursor: pointer;	
}

.f_td1{
	text-align: left;
	font-size:12pt;
	width: 10%;
}

.f_td1:hover{
	font-weight:600;
}

</style>
<script type="text/javascript" src="jsp/sm/jquery.js"></script>
</head>
<body  >

<script type="text/javascript">
$(function() {

	// Menu Tabular
	var $menu_tabs = $('.menu__tabs li a'); 
	$menu_tabs.on('click', function(e) {
		e.preventDefault();
		$menu_tabs.removeClass('active');
		$(this).addClass('active');

		$('.menu__item').fadeOut(300);
		$(this.hash).delay(300).fadeIn();
	});

});
</script>


	<div class="menu">
		<ul class="menu__tabs">
			<li><h3><a class="active" href="#item-1">My Posts</a></h3></li>
			<li><h3><a href="#item-2">My Comments</a></h3></li>
		</ul>
		<section class="menu__wrapper">
			<article id="item-1" class="menu__item item-active">
				<p>
				<h3 style="text-align: left;">Posts</h3>
				<p style="font-size: 6px; text-align: left;">작성 글 목록</p><br><br>
				<table id="tbl_board_list">
				<c:forEach var="f" items="${frees }">
				<tr class="f_tr1">
					<td class="f_td1" style="width:5%;">${f.board_num }&emsp;</td>
					<td class="f_td1" style="width:30%; text-align: center;" onclick="location.href='boardFreeDetailC?boardNum=${f.board_num }'">${f.board_title }&emsp;</td>
					<td class="f_td1">${f.user_id }&emsp;</td>
					<td class="f_td1"><fmt:formatDate value="${f.board_date }" type="both" dateStyle="short" timeStyle="short"/></td>
				</tr>
				</c:forEach>
				</table><br>
				</p>
			</article>
			<article id="item-2" class="menu__item">
				<p>
				<h3 style="text-align: left;">Comments</h3>
				<p style="font-size: 6px; text-align: left;">작성 댓글 목록</p><br>
				<table id="tbl_board_list">
				<c:forEach var="c" items="${comments }">
				<tr class="f_tr1">
					<td class="f_td1" style="width:5%;">${c.comment_num }&emsp;</td>
					<td class="f_td1" style="width:30%; text-align: center;" onclick="location.href='boardFreeDetailC?boardNum=${c.board_num }'">${c.comment_txt }&emsp;</td>
					<td class="f_td1">${c.user_id }&emsp;</td>
					<td class="f_td1"><fmt:formatDate value="${c.comment_date }" type="both" dateStyle="short" timeStyle="short"/></td>
				</tr>
				</c:forEach>
				</table>
				<br>
				</p>
			</article>

		</section>
		<div class="menu--shadow"></div>
	</div>

</body>
</html>