<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/login.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/7.2.0/sweetalert2.min.css">
<script type="text/javascript" src="jsp/sm/reg.js"></script>
<script type="text/javascript" src="jsp/sm/validCheck.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/7.2.0/sweetalert2.all.min.js"></script>
<script type="text/javascript">
  function seaSubmit() {
    var inputVal = document.getElementById( 'seaBtn' ).value;
    if (inputVal == "") {
        swal("검색어를 입력해주세요.", "Please Enter The Texts").then(function() {
        })
         return false;
    }
  }
</script>
<style type="text/css">

/* 슬라이더 */
.main1 li{
    position: relative;
    display: block;
    width: 280px;
    float:left;
    transition: all 0.5s;
    -webkit-transition: all 0.5s;
    -moz-transition: all 0.5s;
}
    .main1 ul{
    width:2000px;
    border-left: 1px solid rgba(0,0,0,0.65);
    box-shadow: 0 0 20px 10px rgba(0,0,0,0.45);
    -webkit-box-shadow: 0 0 20px 10px rgba(0,0,0,0.45);
    -moz-box-shadow: 0 0 20px 10px rgba(0,0,0,0.45);
    }

    .slidetitle{
    background: rgba(42,99,138,.3);
    position: absolute;
    left:0;
    bottom:0;
    width: 480px;
    height: 50px
    }

    .slidetitle span{
    display: block;
    color: white;
    font-size: 16px;
    text-align: left;
    }

    .main1{
    width: 1518px;
    height: 320px;
    overflow: hidden;
    box-shadow: 0px 0px 10px 3px #888888;
    -moz-box-shadow: 0px 0px 10px 3px #888888;
    -webkit-box-shadow: 0px 0px 10px 3px #888888;
    }

    .main1 li img{
    display:block;
    height: 320px;
    width: 640px;
    }

    .main1 ul:hover li{
    width:250px;
    }

    .main1 ul li:hover{
    width:480px;
    }
    
    .ourCollectionInput_div{
    position: relative;
    height:150px;
    background: #0d47a1;
    line-height: 50px;
    margin:0;
    text-align: center;

}

.image-box {
    width:600px;
    height:320px;
    overflow:hidden;
    margin:0 auto;
}

.image-thumbnail {
    width:100%;
    height:100%;
    object-fit:cover;
}

span{
	font-weight: 600;
	font-style: oblique;
}



/* 중간 파란색 블럭 */
.ourCollectionInput_h1{
    color: white;
    line-height: 2;
}

/* 검색창 */
#seaBtn{
height: 30px;
width: 200px;
border-radius: 5px;
border: none;
padding-left: 10px
}

#seaBtn1{
height: 30px;
width: 60px;
border-radius: 5px;
}


.btn-success{
height: 30px;
width: 30px;
border-radius: 5px;
border: none;
background-color: white;
transition-duration: 0.4s;
color: gray;
}

.btn-success:hover{
background-color: rgba(2,126,251,1);
color: white;
}

</style>
</head>
<body style="background-color: rgb(240, 242, 241);">
<!-- 슬라이더 -->
	<div class="main1">
	<ul>
		<li>
			<div class="slidetitle"> 
				<span>Blueberry Lemon Vodka Spritz</span>
			</div>
			<div class="image-box">
			<a href='boardFreeDetailC?boardNum=27'>
				<img class="image-thumbnail" src="img/slidercocktail1.jpg"/>
			</a>
			</div>
		</li>
		<li>
			<div class="slidetitle"> 
				<span>Apple Cider Bourbon Cocktail</span>
			</div>
			<div class="image-box">
			<a href='boardFreeDetailC?boardNum=26'>
				<img class="image-thumbnail" src="img/slidercocktail2.jpg"/>
			</a>
			</div>
		</li>
		<li>
			<div class="slidetitle"> 
				<span>Cocktails in a Can!</span>
			</div>
			<div class="image-box">
			<a href='boardFreeDetailC?boardNum=28'>
				<img class="image-thumbnail" src="img/slidercocktail3.jpg"/>
			</a>
			</div>
		</li>
		<li>
			<div class="slidetitle"> 
				<span>Watermelon Gin Fizz with Mint</span>
			</div>
			<div class="image-box">
			<a href='boardFreeDetailC?boardNum=25'>
				<img class="image-thumbnail" src="img/slidercocktail4.jpg"/>
			</a>
			</div>
		</li>
		<li>
			<div class="slidetitle"> 
				<span>Prickly Pear Vodka Sour</span>
			</div>
			<div class="image-box">
			<a href='boardFreeDetailC?boardNum=29'>
				<img class="image-thumbnail" src="img/slidercocktail5.jpg"/>
			</a>
			</div>
		</li>
	</ul>
	</div>
	
<!-- 중간 파란색 블럭 -->	
	<div class="ourCollectionInput_div">
            <div>
            <table>
				<tr><td style="height: 30px;"></td></tr>
			</table>
                <h1 class="ourCollectionInput_h1">OUR SPACE</h1>
                <h5 class="ourCollectionInput_h1">나만의 레시피와 리뷰를 공유하는 DOSU 회원들의 자유로운 공간</h5>
            </div>
    </div>

<!-- 자유게시판 글목록 -->
<form class="login" action="postSearchC" style="height:450px; width:1000px;" onsubmit="return seaSubmit()">
<table id="tbl_board_title">
	<tr style="font-weight: 1000;">
		<td class="board_td_title" colspan="3" style="text-align: right;"><a href="FreeRegC" class="writeBtn">글쓰기</a></td>
		<td style="width: 580px;"></td>
		<td><select class="form-control" name="searchField" id="seaBtn1">
				<option value="board_title">제목</option>
				<option value="board_txt">내용</option>
				<option value="user_id">작성자</option>
			</select></td>
		<td>
			<input type="text" class="form-control" name="searchText" id="seaBtn" placeholder="SEARCH" maxlength="10">
			<input type="submit" name="searchText" class="btn-success" value="GO"></td>
</table><br><hr><br><br>

<table id="tbl_board_list">
<%-- <c:if test=""></c:if> --%>
<c:forEach var="f" items="${frees }">
	<tr class="f_tr1" onclick="location.href='boardFreeDetailC?boardNum=${f.board_num }'">
		<td class="f_td1" style="width:2%;">${f.board_num }</td>
		<td class="f_td1" style="width:35%; text-align: center;">${f.board_title }</td>
		<td class="f_td1" style="width:8%; text-align: center;">${f.user_id }</td>
		<td class="f_td1"><fmt:formatDate value="${f.board_date }" type="both" dateStyle="short" timeStyle="short"/></td>
	</tr>
</c:forEach>
</table><br>

<a href="BoardPageC?p=1">◀</a>
<c:forEach var="i" begin="1" end="${pageCount }" >
	<a href="BoardPageC?p=${i }">${i }</a>
</c:forEach>
<a href="BoardPageC?p=${pageCount }">▶</a>

</form>



</body>
</html>