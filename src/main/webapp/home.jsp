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
		
		
		if(firstReq == 1){
         modal('my_modal');
		}else {
			$(".asd").remove();
  			$("#my_modal").css("display","none");
			
		}
		
			
        
         
         
         
         
         
	
         $(".modal_close_btn").click(function() {
			location.href = "https://www.google.com/search?q=%EC%9E%BC%EB%AF%BC%EC%9D%B4&tbm=isch&ved=2ahUKEwiY1cWU0sX4AhVKXZQKHWD3AnUQ2-cCegQIABAA&oq=%EC%9E%BC%EB%AF%BC%EC%9D%B4&gs_lcp=CgNpbWcQDDIECCMQJzILCAAQgAQQsQMQgwEyBQgAEIAEMgUIABCABDIFCAAQgAQyBQgAEIAEMgUIABCABDIFCAAQgAQyBQgAEIAEMgUIABCABFAAWABg7AhoAHAAeACAAWWIAWWSAQMwLjGYAQCqAQtnd3Mtd2l6LWltZ8ABAQ&sclient=img&ei=_HG1YpjnN8q60QTg7ouoBw&bih=628&biw=1055#imgrc=lvusybt365Vr0M";
		})
	 
		
		
		
		
		
		
         $(".modal_btn").click(function() {
			
        	 var aaa = document.getElementById("modal_input").value;
        	 
        	 if (aaa == "") {
        		 alert("생년월일을 입력하세요.");
        		 modal_input.focus();
        		 modal_input.value="";
        		 return false;
				
			}
        	 
        	 var date = new Date($('#modal_input').val());
        	 var year = date.getFullYear();
        	 
        	 let age = 2022 - year + 1 ; 
        	 
			if (age >= 20) {
				$(".asd").remove();
      			$("#my_modal").css("display","none");
      			 swal(
      				      '<b style="color:#0d47a1;">SUCCESS.</b>',
      				      'WELCOME TO <b style="color:#0d47a1;">DOSU!</b>',
      				      'success'
      				    )
      				    
      				  
		
			}else {
				$(".asd").css("z-index","2");
				$("#my_modal").css("display","none");
				
				swal('<b style="color:#CD1039;">WARNING.</b>','성인만 이용 가능합니다.', 'warning').then(function name() {
					$("#my_modal").css("display","block");
					$(".asd").css( "backgroundColor",'rgba(0,0,0,0.4)');
				})
				
			}
        	 
			
			
			
        	 
        	 
		});
        

         
         
         
         
		
		
})




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
            
        </style>


</head>
<body>
	<input id="firstReq" type="hidden" value="${sessionScope.firstReq }">

	
	<div class="carousel" data-flickity>
  		<div class="carousel-cell"><a href="#"><img  alt="Img1" src="https://t1.daumcdn.net/cfile/tistory/275EC14554AF99C512?original" class="home_Tbl_Img"></a></div>
  		<div class="carousel-cell"><a href="#"><img  alt="Img2" src="img/wallpaperbetter3.jpg" class="home_Tbl_Img"></a></div>
  		<div class="carousel-cell"><a href="#"><img  alt="Img3" src="img/wallpaperbetter.jpg" class="home_Tbl_Img"></a></div>
  		<div class="carousel-cell"><a href="#"><img  alt="Img4" src="img/wall4.png" class="home_Tbl_Img"></a></div>
  		<div class="carousel-cell"><a href="#"><img  alt="Img5" src="img/wallpaperbetter2.png" class="home_Tbl_Img"></a></div>
	</div>
		
	<div class="home_Div">
		<div class="home_Div_Div">
       			2023. BEST MEANINGLESS SENTENSE <span>DOSU</span> SERVICE <span>DOSU</span> SOLDESK COMPANY SOCIAL<br>
				마음 울적한 날엔 거리를 걸어보고
				향기로운 칵테일에 취해도보고 한편의 시가 있는 전시회장도 가고 밤새도록 그리움에 편질 쓰고파<br>DOSU 함께 축하 CrocROC는 1세기 이상에 걸친 와인 제조 전문 지식과 장인의 기교에서
				영감을 받은 진정한 현대 보드카이다.<br>프랑스산 포도이며, C andROC의 다섯 번째 증류로 신선하고 부드러우며 과일 맛이 독특하다.<br>
				모든 기념행사에 완벽한 반주! 완벽하게 혼합된 맛의 포트폴리오에 대해 자세히 알아보십시오.<br>장난스러운 사치, 축하, 그리고 맛있는 칵테일의 세계에 오신 것을 환영합니다. CrocROC.com에 오신 것을 환영합니다.
       		
       		</div>
       </div>
       
	
	<table class="home_Tbl">
		<tr>
			<td class="home_Tbl_td1"><img  class="home_Tb1_Img" alt="" src="img/OSU-logo (3).png"> </td>
			<td class="home_Tbl_td2"><p>DOSU회원가입시<br>전품목 5% 할인.<br></p>5% Discount On All Items <br>When Registering As a Member.<br><br><button onclick="location.href='#'" class="home-btn btn-33"><span>SIGN UP</span></button></td>
			<td class="home_Tbl_td3">2022 June 13 - 2022 Sep 09 <br>SOLDESK 802<br>WHAT IS TODAY'S LUNCH?</td>
		</tr>
		
		
	</table>
	
			
			
			
		
		
		
		
		
			
	 <div id="my_modal">
	 		<h2>Enter Your Birth</h2>
           <input type="month" class="modal_input" id="modal_input" placeholder="Your Birth" style="height: 30px;width: 200px;border-radius: 5px;border: none;padding-left: 10px
	"> <br><br>
          <button class="modal_btn">Confirm</button>
            <a class="modal_close_btn">닫기</a>
        </div>



	





</body>
	
	
	<script>
            function modal(id) {
                var zIndex = 9999;
                var modal = document.getElementById(id);

                // 모달 div 뒤에 희끄무레한 레이어
                var bg = document.createElement('div');
                bg.classList.add('asd');
                
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