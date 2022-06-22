<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/index.css">
<link rel="stylesheet" href="css/home.css" media="screen">
<link rel="stylesheet" href="css/ourCollection.css">
<link rel="stylesheet" href="css/star_point.css">
<link rel="stylesheet" href="css/jw.shop.css">

<link rel="stylesheet" href="https://unpkg.com/flickity@2/dist/flickity.min.css">
<!-- JavaScript -->
<script src="https://unpkg.com/flickity@2/dist/flickity.pkgd.min.js"></script>
<script type="text/javascript" src="home.js" ></script>

</head>
<body>
<div id="body-wrapper">
<div id="body-content">
<!-- 주석2 -->
<!-- 로고 부분 -->
<div class="nabar-brand">
	<div class="item"></div>
 	<div class="item2">
    	<a href="HC">
    	<img class="logoImg" src="img/dosu.png" height="70" alt="">
    	</a>
    </div>
   <div class="item3">
   		<jsp:include page="${ loginPage}"></jsp:include>
    	<button onclick="location.href='Drink_Info_regController'">운영자전용 상품등록버튼</button>
   </div>
</div>
  

  
<!-- 메뉴바 -->  
<div id="indexMenu">
        <ul>
            <li><a href="ourCollectionController">OUR COLLECTION</a></li>
           <li><a href="ShoppingController?name=Drink">COCKTAILS SALES</a></li>
            <li><a href="ShoppingController?name=Goods">GOODs SALES</a></li>
            <li><a href="#">OUR SOCIAL</a>
                <ul>
                    <li><a href="boardCfree">자유게시판</a></li>
                    <li><a href="boardCrecipe">레시피 게시판</a></li>
                    <li><a href="boardCreview">후기 게시판</a></li>
                    <li><a href="boardCqa">Q&A 게시판</a></li>
                </ul>
            </li>
        </ul>
</div>
    
    
<!-- 콘텐츠 페이지1 -->
<div id="contentJsp">
	<div><jsp:include page="${contentPage}"></jsp:include></div>
</div>   
</div>

<!-- 푸터 -->
<div class="footer">
       <div class="indexFooter">
       		<div class="indexFooterItem1">
       			WE WAMT TO GO HOME
       		</div>
       		<div class="indexFooterItem2">
				Thank you for visiting our semi-project site. Please copy our semi - project site without permission.
       		</div>
       		<div class="indexFooterItem3">
       			2022. BEST MEANINGLESS SENTENSE <span>|</span> SERVICE <span>|</span> SOLDESK <span>|</span> COMPANY <span>|</span> SEMI-PROJECT <span>|</span> DRINKS <span>|</span> COCKTAILS <span>|</span> SOCIAL
       		</div>
       		<div class="indexFooterItem4">
       			We Love MZ Design by. CHOI KIM LEE
       		</div>
       		<div class="indexFooterItem5">
       		
       		</div>
       </div>
        
</div>

</div>
</body>
</html>