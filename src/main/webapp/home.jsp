<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="jquery.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/7.2.0/sweetalert2.min.css">
  <script src="https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/7.2.0/sweetalert2.all.min.js"></script>
<script type="text/javascript">
$(function() {

		let firstReq = $("#firstReq").val();
	
		if(firstReq == ""){
			modal('my_modal');
			
		}else {
		$(".background").remove();
		$("#my_modal").css("display","none");
		
		};
		
         
	
         $(".modal_close_btn").click(function() {
			location.href = "https://www.google.com/search?q=%EC%9E%BC%EB%AF%BC%EC%9D%B4&tbm=isch&ved=2ahUKEwiY1cWU0sX4AhVKXZQKHWD3AnUQ2-cCegQIABAA&oq=%EC%9E%BC%EB%AF%BC%EC%9D%B4&gs_lcp=CgNpbWcQDDIECCMQJzILCAAQgAQQsQMQgwEyBQgAEIAEMgUIABCABDIFCAAQgAQyBQgAEIAEMgUIABCABDIFCAAQgAQyBQgAEIAEMgUIABCABFAAWABg7AhoAHAAeACAAWWIAWWSAQMwLjGYAQCqAQtnd3Mtd2l6LWltZ8ABAQ&sclient=img&ei=_HG1YpjnN8q60QTg7ouoBw&bih=628&biw=1055#imgrc=lvusybt365Vr0M";
		});
	 
		
		
		
         $(".modal_btn").click(function() {
			
        	 var aaa = document.getElementById("modal_input").value;
        	 
        	 if (aaa == "") {
        		 alert("생년월일을 입력하세요.");
        		 modal_input.focus();
        		 modal_input.value="";
        		 return false;
				
			};
        	 
        	 var date = new Date($('#modal_input').val());
        	 var year = date.getFullYear();
        	 
        	 let age = 2022 - year + 1 ; 
        	 
			 if (age >= 20) {
				$(".background").remove();
      			$("#my_modal").css("display","none");
      			 swal(    '<b style="color:#0d47a1;">SUCCESS.</b>',
      				      'WELCOME TO <b style="color:#0d47a1;">DOSU!</b>',
      				      'success'
      				    ).then(function () {
						
      				    location.href='MakeCookieC';
      				    });
      			 
      			 
			}else {
				$(".background").css("z-index","2");
				$("#my_modal").css("display","none");
				
				swal('<b style="color:#CD1039;">WARNING.</b>','성인만 이용 가능합니다.', 'warning').then(function name() {
					$("#my_modal").css("display","block");
					$(".background").css( "backgroundColor",'rgba(0,0,0,0.4)');
				})
			}
        	 
			
			
			
        	 
        	 
		});
         
         
         $(".cookieBtn").click(function() {
        	 
        	 var aaa = false;
        	 
        	 if (aaa) {
        	 $(".modal_btn").css("display","none");
				
			}else{
        	 $(".modal_btn").css("display","block");
        	 $(".modal_btn_no").css("display","block");
				
				
			}
        	 
		});
         
         
         
         $(".modal_btn_no").click(function() {
			
        	 location.href="https://www.google.com/?&bih=789&biw=1440&hl=ko";
        	 
		});
		
		
});




</script>



<style>

#my_modal {
  	display: block;
    width: 300px;
    padding: 20px 60px;
    background-color: #fefefe;
	border: 1px solid #888;
	border-radius: 3px;
}

#my_modal .modal_close_btn {
	position: absolute;
	top: 10px;
	right: 10px;
}
            
.modal_btn {
	display:none;
    position: relative;
   	padding: 5px 10px;
   	border-radius: 10px;
   	font-family: "paybooc-Light", sans-serif;
   	box-shadow: 0 15px 35px rgba(0, 0, 0, 0.2);
   	text-decoration: none;
    font-weight: normal;
    transition: 0.25s;
    width: 70px;
    height: 30px;
    margin-top: 10px;
	}
	            
.modal_btn_no {
	display:none;
    position: relative;
    padding: 5px 10px;
    border-radius: 10px;
    font-family: "paybooc-Light", sans-serif;
    box-shadow: 0 15px 35px rgba(0, 0, 0, 0.2);
    text-decoration: none;
    font-weight: normal;
    transition: 0.25s;
	}            


.modal_btn {
    border: 3px solid #0d47a1;
    color: black;
    float: left;
	}

.modal_btn:hover {
    letter-spacing: 2px;
    transform: scale(1.2);
    cursor: pointer;
	}

.modal_btn:hover {
    background-color: #0d47a1;
    color: #d4dfe6;
	}

.modal_btn_no {
    border: 3px solid #BE2457	;
    color: black;
    width: 70px;
    height: 30px;
    float:right;
    margin-top: 10px;
	}

.modal_btn_no:hover {
    letter-spacing: 2px;
    transform: scale(1.2);
    cursor: pointer;
	}

.modal_btn_no:hover {
    background-color: #BE2457;
    color: #d4dfe6;
	}
            
</style>


</head>
<body>


	<input id="firstReq" type="hidden" value="${cookie.c.value}">

	
	<div class="carousel" data-flickity>
  		<div class="carousel-cell"><a href="#"><img  alt="Img1" src="https://t1.daumcdn.net/cfile/tistory/275EC14554AF99C512?original" class="home_Tbl_Img"></a></div>
  		<div class="carousel-cell"><a href="#"><img  alt="Img2" src="img/wallpaperbetter3.jpg" class="home_Tbl_Img"></a></div>
  		<div class="carousel-cell"><a href="#"><img  alt="Img3" src="img/wallpaperbetter.jpg" class="home_Tbl_Img"></a></div>
  		<div class="carousel-cell"><a href="#"><img  alt="Img4" src="img/wall4.png" class="home_Tbl_Img"></a></div>
  		<div class="carousel-cell"><a href="#"><img  alt="Img5" src="img/wallpaperbetter2.png" class="home_Tbl_Img"></a></div>
	</div>
		
	<div class="home_Div">
		<div class="home_Div_Div">
       			특별한 날을 위한 특별한 선택, <span>DOSU</span><br>
       			<span>DOSU</span>는 2022년부터 여러분들의 여정과 함께 하게되었습니다.<br> 
       			전세계의 인기 있는 칵테일 레시피와 주류 정보, 간편한 구매 절차와 회원 커뮤니티를 제공합니다.<br>
       			<span>DOSU</span>는 기념 행사와 파티 등의 모임에서 후회 없는 선택이 될 것입니다. <br>
       			즐겁고 맛있는 칵테일의 세계에 오신 것을 환영합니다. <span>DOSU.com</span>에 오신 것을 환영합니다.
       		
       		</div>
       </div>
       
	
	<table class="home_Tbl">
		<tr>
			<td class="home_Tbl_td1"><img  class="home_Tb1_Img" alt="" src="img/OSU-logo (3).png"> </td>
			<td class="home_Tbl_td2"><p>DOSU회원 가입시<br>MZ수업 무료 청강<br></p>Free audition of MZ class<br>when participating in DOSU<br><br><button onclick="location.href='RegAccountC'" class="home-btn btn-33"><span>SIGN UP</span></button></td>
			<td class="home_Tbl_td3">2022 June 13 - 2022 June 03 <br>SOLDESK 802<br>WHAT IS TODAY'S LUNCH?</td>
		</tr>
		
		
	</table>
	
			
			
			
		
		
		
		
		
			
	 <div id="my_modal">
	 	<h2>Enter Your Birth</h2>
     	<input type="month" class="modal_input" id="modal_input" placeholder="Your Birth" 
     		style="height: 30px;width: 200px;border-radius: 5px;border: none;padding-left: 10px">
        <br><br>
        <input type="button" class="cookieBtn"  value="쿠키 생성을 동의하시겠습니까?" style="height: 30px;width: 200px; background-color: #0d47a1;color: white;border: none; border-radius: 5px;">
        <button class="modal_btn">예</button>
        <button class="modal_btn_no">아니요</button>
        
        <a class="modal_close_btn">닫기</a>
     </div>



	





</body>
	
	
	<script>
		function modal(id) {
			var zIndex = 9999;
			var modal = document.getElementById(id);

                // 모달 div 뒤에 배
            var bg = document.createElement('div');
            bg.classList.add('background');
                
            bg.setStyle({
            	position: 'fixed',
            	zIndex: zIndex,
                left: '0px',
                top: '0px',
                width: '100%',
                height: '100%',
                overflow: 'auto',
                    // 레이어 색갈은 여기서 바꾸면 됨
                backgroundColor: 'rgba(0,0,0,0.4)'
                });
                document.body.append(bg);
                
                
                // 닫기 버튼 처리, 시꺼먼 레이어와 모달 div 지우기
                modal.querySelector('.modal_close_btn').addEventListener('click', function() {
                    bg.remove();
                    modal.style.display = 'none';
                });

                modal.setStyle({
                    position: 'fixed',
                    display: 'block',
                    boxShadow: '0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19)',

                    // 시꺼먼 레이어 보다 한칸 위에 보이기
                    zIndex: zIndex + 1,

                    // div center 정렬
                    top: '50%',
                    left: '50%',
                    transform: 'translate(-50%, -50%)',
                    msTransform: 'translate(-50%, -50%)',
                    webkitTransform: 'translate(-50%, -50%)'
                });
            }

            // Element 에 style 한번에 오브젝트로 설정하는 함수 추가
            Element.prototype.setStyle = function(styles) {
                for (var k in styles) this.style[k] = styles[k];
                return this;
            };

           
        </script>
     


</html>