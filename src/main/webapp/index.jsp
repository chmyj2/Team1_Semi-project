<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/index.css">
<link rel="stylesheet" href="css/login.css">
<link rel="stylesheet" href="css/home.css" media="screen">
<link rel="stylesheet" href="css/ourCollection.css">
<link rel="stylesheet" href="css/star_point.css">
<link rel="stylesheet" href="css/jw/shop.css">
<link rel="stylesheet" href="css/jw/orderPage.css">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.3/css/all.css" integrity="sha384-UHRtZLI+pbxtHCWp1t77Bi1L4ZtiqrqD80Kn4Z8NTSRyMA2Fd33n5dQ8lWUE00s/" crossorigin="anonymous">
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
   </div>
</div>
  

  
<!-- 메뉴바 -->  
<div id="indexMenu">
        <ul>
            <li><a href="ourCollectionController">OUR COLLECTION</a></li>
           <li><a href="ShoppingController?name=Drink">COCKTAILS SALES</a></li>
            <li><a href="#">OUR SOCIAL</a>
                <ul>
                    <li><a href="boardCfree">OUR SPACE</a></li>
                    <li><a href="boardCqa">Q&A</a></li>
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
       			WE WANT TO GO HOME
       		</div>
       		<div class="indexFooterItem2">
				Thank you for visiting our semi-project site. Please copy our semi - project site without permission. 
       		</div>
       		<div class="indexFooterItem3">
       			2022. BEST MEANINGLESS SENTENSE <span>|</span> SERVICE <span>|</span> SOLDESK <span>|</span> COMPANY <span>|</span> SEMI-PROJECT <span>|</span> DRINKS <span>|</span> COCKTAILS <span>|</span> SOCIAL
       		</div>
       		<div style="position: absolute; z-index: 3; margin-left: 100px; margin-top: 70px" >
       				<ul class="sns_ul">
  						<li>
    					<a href="https://twitter.com/dosu_official"><i class="fab fa-twitter icon"></i></a>
  						</li>
  						<li>
    					<a href="https://www.instagram.com/dosu.official/"><i class="fab fa-instagram icon"></i></a></li>
					</ul>
       			</div>
       		<div class="indexFooterItem5">
       		</div>
       </div>
        
</div>

</div>
</body>
</html>