create table board_tbl(
board_num number(5) primary key,
user_id varchar2(16 char) not null,
board_title varchar2(50 char) not null,
board_txt varchar2(1000 char) not null,
board_img varchar2(500 char),
board_date date not null
);

delete board_tbl;

insert into board_tbl values ('32','sjsjsj','칵테일 추천해주세요!','주말에 친구들과 마시고 싶은데 어떤게 좋을까요?
도수가 높지 않은 걸로 추천 부탁드립니다.','null',TO_DATE(('2022-06-29 23:50:17'),'YYYY-MM-DD HH24:MI:SS'));


insert into board_tbl values ('2','aaaaa','자이제시','작이야~','611718110013817661_17.jpg','2022-06-18 23:31:39');
insert into board_tbl values ('3','aaaaa','사진없어도 되는지 확인','해보자고','null','2022-06-18 23:32:06');
insert into board_tbl values ('10','hello','아무말이나해봐','아무말 야야야야','Eu0siAtVEAMlU0l1.jpg','2022-06-20 18:04:42');
insert into board_tbl values ('8','hello','로얄로얄','암어로얄로얄','CzzwMgRUUAASv8k.jpg','2022-06-20 18:01:15');
insert into board_tbl values ('6','hello','수정삭제언제','하냐~
세션값 확인중','611718110013817661_18.jpg','2022-06-20 10:21:41');
insert into board_tbl values ('9','hello','오늘은 월요일','내일은 화요일','Eu0siAtVEAMlU0l.jpg','2022-06-20 18:04:26');
insert into board_tbl values ('11','yjyjyj','다음주 금요일까지 하고','월요일날 발표','CzzwMgRUUAASv8k1.jpg','2022-06-20 18:06:09');
insert into board_tbl values ('12','yjyjyj','게시글 11개만 쓰고','검색 기능이랑 페이징 시작하자','CzzwMgRUUAASv8k2.jpg','2022-06-20 18:06:35');
insert into board_tbl values ('13','yjyjyj','14분 남았다 ','뭐라고???','null','2022-06-20 18:07:07');
insert into board_tbl values ('14','sjsjsj','너너너','너너너너너너너너ㅓ너넌','null','2022-06-20 18:08:01');
insert into board_tbl values ('46','smsmsm','요즘 많이 덥네요','건강 조심하세요~','null','2022-06-30 16:33:27');
insert into board_tbl values ('16','sjsjsj','왜안돼갑자기','미쳤어?','Eu0siAtVEAMlU0l.jpg','2022-06-22 13:10:49');
insert into board_tbl values ('17','aaaaa','나니???','등록하면 게시판으로? 가는거 맞지?','CzzwMgRUUAASv8k1.jpg','2022-06-22 13:16:01');
insert into board_tbl values ('45','smsmsm','오늘도 좋은 하루!','오늘도 좋은 하루 되세요~','611718110013817661_11.jpg','2022-06-30 16:32:51');
insert into board_tbl values ('41','sjsjsj','더울때 추천하는 칵테일','있나오ㅛ?','null','2022-06-30 15:16:00');
insert into board_tbl values ('21','bbbbb','페이징 시작해야지','호?호','611718110013817661_1.jpg','2022-06-23 15:29:06');
insert into board_tbl values ('22','hello','현재 시간은 12시 56분','민지와 용준이 나를 도와줬다...
나는 정말 행복하다...
이제 게시판을 그만 건드리고 싶다...
앞으로 해야할 일은
게시판 3개... 그리고.... 내글 내댓글 보기....
다들 고마워~~~~
아리가또~~~~~~','CzzwMgRUUAASv8k.jpg','2022-06-26 00:57:20');
insert into board_tbl values ('44','mjmjmj','안녕하세요! 잘부탁드립니다','이번에 가입했어요~','null','2022-06-30 16:08:18');
insert into board_tbl values ('25','ADMIN','◆ 민트를 곁들인 수박 진 피즈 Watermelon Gin Fizz with Mint ◆','완벽한 여름 칵테일

더운 여름, 과즙이 풍부한 수박을 사용해 맛있는 칵테일을 만들어보세요.
라임 주스와 탄산수를 첨가해 가볍게 마실 수 있는 칵테일을 만들 수 있습니다.


<재료>
수박 1/2
시럽
라임 주스
민트: 신선한 민트나 바질
진(Gin): 무겁지 않은 진을 사용하면 더욱 좋습니다.
탄산수: 라임맛 탄산수를 사용했습니다.


<만드는 법>
1. 수박을 짜거나 갈아 건더기가 없는 부드러운 즙을 만듭니다.
2. 라임주스와 시럽, 민트를 잔에 넣어 향이 나게 섞습니다.
3. 그 위에 수박주스와 진을 추가합니다.
4. 마지막으로 얼음을 넣고, 민트로 장식합니다.


출처: https://serendipitybysaralynn.com/2020/07/21/watermelon-gin-fizz/','slidercocktail4.jpg','2022-06-28 12:11:17');
insert into board_tbl values ('26','ADMIN','◆ 애플 사이다 버번 칵테일 Apple Cider Bourbon Cocktail ◆','라임 주스와 진저 비어를 더한 애플 사이다 버번 칵테일.
쌀쌀한 날씨에 완벽한 아늑한 칵테일입니다.


<재료>
버번(또는 럼주)
애플 사이다
진저 비어
라임즙

<만드는 법>
1. 글라스에 애플 사이다와 버번을 함께 부드럽게 저어줍니다.
2. 잔에 얼음을 채우고 진저 비어를 얹는다.
3. 라임 즙과 장식으로 마무리합니다.



출처: https://serendipitybysaralynn.com/2019/11/22/apple-cider-bourbon-cocktail/','slidercocktail2.jpg','2022-06-28 12:23:02');
insert into board_tbl values ('27','ADMIN','◆ 블루베리 레몬 보드카 스프리츠 Blueberry Lemon Vodka Spritz ◆','상큼하고 달콤한 여름 칵테일.
호불호가 갈리지 않아 모임에서 인기 있는 칵테일입니다.
대용량으로 만들어 두었다가 주스처럼 마셔보세요!


<재료>
블루베리 2 컵
얇게 썰어 씨를 제거한 레몬 2개, 장식용
시럽
보드카
스파클링 레몬 워터
장식용 로즈마리


<만드는 법>
1. 잔에 블루베리, 레몬, 시럽을 레몬즙이 나오고 블루베리의 절반이 으깨질 때까지 섞습니다.
2. 그 위에 보드카를 넣어 저어주세요.
3. 마실 때까지 뚜껑을 덮고 냉장고에 넣어두세요.
4. 마시기 직전에 스파클링 레몬 워터를 넣어 저어줍니다.
5. 그 위에 얼음을 올리고 레몬과 로즈마리 줄기로 장식합니다.


출처: https://serendipitybysaralynn.com/2019/05/10/blueberry-lemon-vodka-spritz/','slidercocktail1.jpg','2022-06-28 12:35:09');
insert into board_tbl values ('28','ADMIN','◆ 캔에 담긴 칵테일! Cocktails in a Can! ◆','나들이나, 야외 바베큐 파티 등을 위한 캔 칵테일!
탄산수 한 캔에 몇 가지 재료를 섞기만 하면 파티 준비가 끝납니다.

캔 칵테일은 모든 재료를 자신이 선택해 원하는 맛을 만들어 볼 수 있다는 장점과 특징이 있지만,
이번에는 누구나 다 좋아할법한 레시피를 소개하고자 합니다.

파인애플 모히또 칵테일을 만들어봅시다!


<재료>
라임 스파클링 워터 1캔
화이트 럼
파인애플 주스
시럽
장식용 민트, 설탕, 라임


<만드는 법>
1. 먼저 탄산수 캔 가장자리에 탄산수를 바르고 설탕에 묻히세요.
2. 캔을 열고 약 반 캔의 라임 탄산수를 마십니다. (따로 빼두면 됩니다)
3. 작은 그릇에 시럽과 민트 잎 몇 개를 섞습니다.
4. 캔에 민트 시럽, 화이트럼, 파인애플 주스를 넣어주세요.
5. 부드럽게 섞이도록 휘젓습니다.
6. 민트와 라임으로 장식하고 즐겨보세요!


출처: https://serendipitybysaralynn.com/2019/07/05/cocktails-in-a-can/','slidercocktail3.jpg','2022-06-28 12:45:29');
insert into board_tbl values ('29','ADMIN','◆선인장 열매 보드카 사워 Prickly Pear Vodka Sour◆','신선한 레몬과 라임 주스, 핑크색 선인장 열매 시럽으로 만든 5분 칵테일!
간단하고 예뻐 파티에 추천합니다.

결혼식 파티나 브라이덜 샤워 등에 어울리는 예쁜 칵테일입니다.



<재료>
얇게 썰어 씨를 제거한 라임 2개
보드카
레몬 주스
라임 주스
선인장 열매 시럽
건조 라임 또는 허브


<만드는 법>
1. 칵테일 셰이커에 보드카, 레몬 주스, 라임 주스, 선인장 열매 시럽을 넣고 섞습니다.
2. 칵테일 셰이커에 얼음을 채우고 외부가 서리가 생길 때까지 약 30초 동안 흔듭니다.
3. 칵테일 글라스에 따라내고 건조 라임이나 허브로 장식합니다. 


출처: https://serendipitybysaralynn.com/2019/09/20/prickly-pear-vodka-sour/','slidercocktail5.jpg','2022-06-28 12:54:58');
