<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>


<style type="text/css">


.yj_wrapper {
  position: relative;
  top: 10%;
  left: 40%;
  width: 300px;
  height: 450px;
  perspective: 500px;
}

.yj_container {
  position: absolute;
  top: 0%;
  width: 100%;
  height: 100%;
  transition: .5s all ease;
  transform: rotateX(60deg) scale(0.7);
  perspective: 900px;
  box-shadow: 0px 20px 50px #555;
  animation: entry 1s linear 1;
}

#c0 {
  position: absolute;
  top: 0%;
  width: 100%;
  height: 100%;
  background: linear-gradient(to bottom, #eba65b 30%, #d99267 100%);
  z-index: 300;
  box-shadow: 0px 20px 100px #555;
}

#c1 {
  background: linear-gradient(to bottom, #59476f 30%, #7b88d1 100%);
  box-shadow: 0px 20px 100px #555;
  left: 100%;
  z-index: 0;
}

#c2 {
  left: -100%;
  z-index: 0;
  background: linear-gradient(to bottom, #59476f 30%, #7b88d1 100%);
  box-shadow: 0px 20px 100px #555;
}

.yj_container:hover {
  cursor: pointer;
  transform: rotate(0deg) scale(1) translateY(10px);
  transition: .5s all ease;
  z-index: 400;
}



#i1 {
  background: linear-gradient(to bottom, #59476f 30%, #7b88d1 100%);
}

#i2 {
  background: linear-gradient(to bottom, #59476f 30%, #7b88d1 100%);
}


.st4 {
  fill: #f8c56f;
  opacity: 1;
}

.st5,
.st7 {
  fill: #fff;
}

#sh2 {
  opacity: 0.5;
}

#sh3 {
  opacity: 0.3;
}

.st6 {
  fill: #59476f;
}

.st10 {
  fill: #c5a7e5;
  stroke: #222;
}

.st11 {
  stroke: #212121;
  opacity: 0.5;
}

#sh1 {
  fill: #f8c56f;
  opacity: 0.4;
}

.st0 {
  fill: #a25a62;
  stroke: none;
  stroke-miterlimit: 10;
}

.st1 {
  fill: none;
  stroke: #a25a62;
  stroke-width: 2;
  stroke-miterlimit: 10;
}

.st2 {
  fill: #cd775c;
}

.st3 {
  fill: #fff;
  opacity: 0.3;
}

.yj_story {
  position: absolute;
  top: 45%;
  left: 0%;
  height: 55%;
  width: 100%;
  z-index: 30;
}

#s0 {
  background: linear-gradient(to top, #94EB3E 0%, #228B22 100%);
}

#s1 {
  background: linear-gradient(to top, #FFA500 0%, #8B4513 100%);
}


#s2 {
  background: linear-gradient(to top, #e16a9d 0%, #b9062f 100%);
}

.yj_info {
  position: absolute;
  top: 10%;
}

.yj_h3 {
  text-align: center;
  text-shadow: 0px 0px 10px #eee;
  color: #eee;
  letter-spacing: 2px;
}

.yj_h4 {
  color: #111;
  position: absolute;
  top: 30%;
  left: 30%;
  letter-spacing: 2px;
}

.yj_h1 {
  font-weight:bold;
  color: #0d47a1;
  font-size: 48pt;
  letter-spacing: 0px;
  margin-top:70px; 
}

.yj_p {
  font-size: 14px;
  color: #fff;
  padding: 0px 20px 20px 20px;
  line-height: 150%;
  text-align: center;
  letter-spacing: 1px;
}





@keyframes simple {
  50% {
    transform: translateX(10px);
    opacity: 0.5;
  }
  100% {
    transform: translateX(10px);
    opacity: 0;
  }
}

@keyframes simple1 {
  50% {
    transform: translateX(-10px);
    opacity: 0.5;
  }
  100% {
    transform: translateX(-10px);
    opacity: 0;
  }
}

@keyframes entry {
  0% {
    top: -20%;
    opacity: 0.1;
  }
  100% {
    top: 0%;
  }
}

</style>



</head>
<body>

<div style="padding-bottom: px;position: relative;">	
<h1 class="yj_h1">Best Cocktails Of The Week</h1>
<div class="yj_wrapper">

	<div class="yj_container" id="c0">
		<div class="yj_image" id="i0">
			
			<div class="yj_city">
			<?xml version="1.0" encoding="utf-8"?>

			<a href="http://localhost/TeamProject/Drink_Info_DetailController?num=45"><img alt="" src="img/mojitos.webp" style="width: 300px;height: 250px">
			<ellipse class="st4" id="sh1" cx="170.5" cy ="124.75" rx="37.5" ry="37.5"/>
			<ellipse id="XMLID_15_" class="st4" cx="170.5" cy="124.75" rx="27.5" ry="27.5"/>

			<polygon id="XMLID_1_" class="st2" points="-0.301,224.5 74.849,149.5 150,224.5 "/>
			<polygon id="XMLID_2_" class="st0" points="108,224.5 74.849,149.5 150,224.5 "/>
			<polygon id="XMLID_4_" class="st2" points="207.256,225.5 253.849,179 300.443,225.5 "/>
			<polygon id="XMLID_3_" class="st0" points="274.403,225.5 253.849,179 300.443,225.5 "/>
			<line id="XMLID_5_" class="st1" x1="179" y1="202" x2="179" y2="226"/>
			<line id="XMLID_6_" class="st1" x1="179" y1="207" x2="190" y2="207"/>
			<line id="XMLID_7_" class="st1" x1="172" y1="214" x2="180" y2="214"/>
			<line id="XMLID_8_" class="st1" x1="190" y1="202" x2="190" y2="207"/>
			<line id="XMLID_9_" class="st1" x1="172" y1="207" x2="172" y2="214"/>
			<circle id="XMLID_10_" class="st3" cx="87.5" cy="98.5" r="1.5"/>
			<circle id="XMLID_11_" class="st3" cx="24.5" cy="68.5" r="2.5"/>
			<circle id="XMLID_12_" class="st3" cx="219.5" cy="18.5" r="1.5"/>
			<circle id="XMLID_13_" class="st3" cx="272.5" cy="03.5" r="2.0"/>
			<circle id="XMLID_14_" class="st3" cx="144.5" cy="12.5" r="1.0"/>
			<circle id="XMLID_10_" class="st3" cx="107.5" cy="328.5" r="1.5"/>
			<circle id="XMLID_11_" class="st3" cx="24.5" cy="58.5" r="2.5"/>
			<circle id="XMLID_12_" class="st3" cx="19.5" cy="128.5" r="1.5"/>
			<circle id="XMLID_13_" class="st3" cx="72.5" cy="113.5" r="2.0"/>
			<circle id="XMLID_14_" class="st3" cx="174.5" cy="92.5" r="1.0"/>


			</div>
		</div>
		<div class="yj_story" id="s0">
			<div class="yj_info">
			<h3 class="yj_h3">MOJITO</h3>
			<p class="yj_p">럼 베이스 칵테일로, 명칭은 마법의 부적이라는 의미의 스페인어인 ‘Mojo’ 에서 유래한 것이다.
							기본적으로 럼 피즈에 민트를 첨가한 것이라고 할 수 있지만 민트의 시원한 청량감에 의해 훨씬 산뜻한 맛을 낸다. 라임과 민트의 밝은 초록색이 돋보여 시각적으로도 청량감을 준다.
							맛은 달달함과 동시에 민트 향을 내면서 씁쓸한 뒷맛이 스쳐가니 나름 입체적인 맛이라 할 수 있다.</p>
			</div>
		</div></a>
	</div>
	<div class="yj_container" id="c1">
		<div class="yj_image" id="i1">
			<div class="yj_city">
			<?xml version="1.0" encoding="utf-8"?>
			<a href="http://localhost/TeamProject/Drink_Info_DetailController?num=50"><img alt="" src="img/old-fashioned-cocktail.webp" style="width: 300px;height: 250px">
			<ellipse class="st5" id="sh3" cx="150.5" cy ="224.75" rx="77.5" ry="77.5"/>

			<ellipse class="st5" id="sh2" cx="150.5" cy ="224.75" rx="57.5" ry="57.5"/>
			<ellipse id="XMLID_15_" class="st5" cx="150.5" cy="224.75" rx="37.5" ry="37.5"/>

			<path id="XMLID_1_" class="st6" d="M68.955,225H47.93l8.333-53.171c0.213-1.361,1.386-2.364,2.763-2.364h6.202
				c1.464,0,2.68,1.129,2.789,2.588l3.727,49.942C71.865,223.617,70.581,225,68.955,225z"/>
			<polygon id="XMLID_2_" class="st6" points="111.754,225 90.203,225 96.005,169.465 103.051,169.465 "/>
			<path id="XMLID_3_" class="st6" d="M112.233,175.682H50.767c-3.855,0-6.981-3.125-6.981-6.981v-3.182
				c0-3.796,3.033-6.896,6.827-6.979l61.466-1.351c3.914-0.086,7.134,3.064,7.134,6.979v4.533
				C119.214,172.556,116.089,175.682,112.233,175.682z"/>
			<path id="XMLID_4_" class="st6" d="M202.538,225h-15.319c-2.837,0-5.444,0.24-5.005-2.25l8.296-47.01
				c0.352-1.997,2.289-3.468,4.565-3.468h3.721c2.419,0,4.428,1.656,4.608,3.798l3.741,44.52C207.346,222.971,205.225,225,202.538,225z
				"/>
			<polygon id="XMLID_5_" class="st6" points="245.98,225 223.157,225 231.421,172.272 242.045,172.272 "/>
			<polygon id="XMLID_6_" class="st6" points="283.798,225 262.163,225 267.988,169.25 275.061,169.25 "/>
			<path id="XMLID_7_" class="st6" d="M275.011,178.032h-84.307c-4.478,0-8.107-3.63-8.107-8.107v-8.817
				c0-4.669,3.933-8.373,8.593-8.093l84.307,5.064c4.281,0.257,7.621,3.804,7.621,8.093v3.754
				C283.118,174.403,279.489,178.032,275.011,178.032z"/>

			<circle id="XMLID_11_" class="st7" cx="24.5" cy="68.5" r="2.5"/>
			<circle id="XMLID_12_" class="st7" cx="219.5" cy="28.5" r="1.5"/>
			<circle id="XMLID_13_" class="st7" cx="272.5" cy="103.5" r="2.0"/>
			<circle id="XMLID_14_" class="st7" cx="144.5" cy="92.5" r="1.0"/>

			<circle id="XMLID_11_" class="st7" cx="4.5" cy="88.5" r="2.5"/>
			<circle id="XMLID_12_" class="st7" cx="29.5" cy="38.5" r="1.5"/>
			<circle id="XMLID_13_" class="st7" cx="222.5" cy="143.5" r="2.0"/>
			<circle id="XMLID_14_" class="st7" cx="114.5" cy="42.5" r="1.0"/>


			</div>
		</div>
		
		<div class="yj_story" id="s1">
			<div class="yj_info">
				<h3 class="yj_h3">OLD FASHIONED</h3>
			<p class="yj_p">캄파리 특유의 쌉쌀한 맛이 스위트 베르무트의 달짝지근한 맛과 어울리면서 진의 향과 맛과 조화를 이루는 맛이 난다.
							해외, 특히 미국에서는 모르는 사람이 없을 정도로 매우 인지도가 높은 칵테일이다. 웬만한 바에서는 반드시 메뉴에 포함되는 칵테일이지만, 이상하게 우리나라에서는 그다지 인지도가 높지 않은 칵테일이다.</p>
			</div>
		</div></a>
		
	</div>
	<div class="yj_container" id="c2">
		<div class="yj_image" id="i2">
			<div class="yj_city">
			<?xml version="1.0" encoding="utf-8"?>


			<a href="http://localhost/TeamProject/Drink_Info_DetailController?num=78"><img alt="" src="img/assorted-sangria-cocktails.webp" style="width: 300px;height: 250px">
			
			<ellipse class="st5" id="sh3" cx="150.5" cy ="224.75" rx="77.5" ry="77.5"/>

			<ellipse class="st5" id="sh2" cx=	"150.5" cy ="224.75" rx="57.5" ry="57.5"/>
			<ellipse id="XMLID_15_" class="st5" cx="150.5" cy="224.75" rx="37.5" ry="37.5"/>
			l:none;stroke:#000000;stroke-miterlimit:10;}
			</style>l:none;stroke:#000000;stroke-miterlimit:10;}
			</style>
			l:none;stroke:#000000;stroke-miterlimit:10;}
			</style>
			<polygon id="XMLID_1_" class="st10" points="69.807,224.719 72.715,209.374 71.974,203.342 120.42,211.753 118.199,217.581 
				115.799,232.384 "/>
			<polygon id="XMLID_2_" class="st10" points="77.295,204.276 79.544,191.37 78.827,186.294 119.809,193.405 118.277,198.349 
				116.264,210.769 "/>
			<polygon id="XMLID_3_" class="st10" points="80.163,186.582 82.413,173.676 81.696,168.6 122.677,175.711 121.146,180.655 
				119.132,193.075 "/>
			<polygon id="XMLID_4_" class="st10" points="83.032,168.888 85.282,155.982 84.565,150.906 125.546,158.017 124.015,162.961 
				122.001,175.381 "/>
			<polygon id="XMLID_5_" class="st10" points="85.901,151.194 88.151,138.288 87.433,133.212 128.415,140.323 126.884,145.267 
				124.87,157.687 "/>
			<polygon id="XMLID_6_" class="st10" points="88.77,133.5 91.019,120.594 90.302,115.518 131.284,122.629 129.752,127.573 
				127.739,139.993 "/>
			<polygon id="XMLID_7_" class="st10" points="91.638,115.806 93.888,102.9 93.171,97.824 134.152,104.935 132.621,109.879 
				130.607,122.299 "/>
			<path id="XMLID_8_" class="st10" d="M127.114,103.327L99.59,98.865l2.466-15.208c0.608-3.75,4.14-6.296,7.89-5.688l13.452,2.181
				c4.022,0.652,6.754,4.441,6.102,8.463L127.114,103.327z"/>
			<line id="XMLID_9_" class="st11" x1="109.946" y1="77.968" x2="84.783" y2="226.86"/>
			<line id="XMLID_10_" class="st11" x1="115.708" y1="79.915" x2="90.545" y2="228.807"/>
			<line id="XMLID_11_" class="st11" x1="120.804" y1="79.728" x2="95.641" y2="228.62"/>
			<line id="XMLID_12_" class="st11" x1="125.739" y1="80.529" x2="100.577" y2="229.421"/>
			<line id="XMLID_13_" class="st11" x1="100.502" y1="98.724" x2="75.339" y2="247.616"/>
			<line id="XMLID_14_" class="st11" x1="128.141" y1="103.205" x2="102.978" y2="252.097"/>
			<circle id="XMLID_11_" class="st7" cx="24.5" cy="68.5" r="2.5"/>
			<circle id="XMLID_12_" class="st7" cx="119.5" cy="28.5" r="1.5"/>
			<circle id="XMLID_13_" class="st7" cx="172.5" cy="103.5" r="2.0"/>
			<circle id="XMLID_14_" class="st7" cx="244.5" cy="92.5" r="1.0"/>
			<circle id="XMLID_11_" class="st7" cx="214.5" cy="18.5" r="2.5"/>
			<circle id="XMLID_12_" class="st7" cx="119.5" cy="38.5" r="1.5"/>
			<circle id="XMLID_13_" class="st7" cx="172.5" cy="203.5" r="2.0"/>
			<circle id="XMLID_14_" class="st7" cx="144.5" cy="12.5" r="1.0"/>


			</div>
		
		</div>
		
		
		
		<div class="yj_story" id="s2">
			<div class="yj_info">
			<h3 class="yj_h3">RASPBERRI COLLINS</h3>
			<p class="yj_p">Raspberry Collins는 라즈베리로 클래식을 수정합니다. 비타민으로 가득 찬 과일은 간단한 시럽으로 뒤섞여 단맛과 신맛이 풍부한 칵테일에 주입되는 빠른 라즈베리 시럽을 만듭니다. 그 풍미는 건조하고 식물성 진과 신선한 레몬 주스로 전달되며, 모두 발포성 클럽 소다 부어와 함께 연결됩니다.</p>

			</div>
		</div>
		</a>
	</div>

	

</div>	
	</div>
	
	
	
	<div style="height: 57px">
	</div>


	<div class="ourCollectionInput_div">
		<form action="Search_drinkController" id="ourCollectionInput_for" onsubmit="return jbSubmit()">  
			<div>
				<h1 class="ourCollectionInput_h1">FIND YOUR FLAVOR</h1>
			</div>
			<div style="background-color: #0d47a1" >
				<input  class="ourCollectionInput" id="ourCollectionInput" name="selected_cocktail" placeholder="SEARCH">
				<input id="ourCollectionBtn" type="submit" value="GO">
			</div>
		</form>
	</div>
	
	<c:if test="${sessionScope.accountInfo.user_id eq 'ADMIN' }">
		<div style="height: 100px;">
		<div><button onclick="location.href='Drink_Info_regController'">운영자전용 상품등록버튼</button></div>
	</div>
	</c:if>
	
	
	<c:forEach var="m" items="${drinks}" varStatus="status">
		<table class="OurCocktail_Tbl" width='150px;' height='250px' style="float: left; vertical-align: middle;">
			<tr>
				<td class="OurCocktail_Td"><a href="Drink_Info_DetailController?num=${m.cocktail_num}">
				<img alt="" src="fileFolder/${m.cocktail_img}"style="max-width:150px;"></a></td>
				</tr>
			<tr style="height:auto;">
				<td class="OurCocktail_Td2">${m.cocktail_name}</td>
			</tr>
		</table>
	</c:forEach>
		
		

		
		
</body>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/7.2.0/sweetalert2.min.css">
  <script src="https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/7.2.0/sweetalert2.all.min.js"></script>
<script>
  function jbSubmit() {
    var inputVal = document.getElementById( 'ourCollectionInput' ).value;
    if (inputVal == "") {
    	swal("검색어를 입력해주세요.", "Please Enter The CockTails").then(function() {
		})
	 	return false;
	}
  }
</script>
</html>