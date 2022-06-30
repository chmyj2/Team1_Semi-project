create table user_info_tbl(
user_id varchar2(16 char) primary key,
user_pw varchar2(30 char) not null,
user_name varchar2(20 char) not null,
user_gender char(1 char) not null,
user_addr varchar2(100 char) not null,
user_phoneNumber varchar2(100 char) not null,
user_age number(3) not null
);

create table user_cocktail_tbl(
cocktail_num number(5) primary key,
cocktail_name varchar2(20 char) not null,
cocktail_info varchar2(300 char) not null,
cocktail_ingredient varchar2(200 char) not null,
cocktail_recipe varchar2(300 char) not null,
cocktail_img varchar2(500 char) not null,
cocktail_tag varchar2(30 char),
user_id varchar2(16 char) not null
);

create table board_tbl(
board_num number(5) primary key,
user_id varchar2(16 char) not null,
board_title varchar2(50 char) not null,
board_txt varchar2(1000 char) not null,
board_img varchar2(500 char),
board_date date not null
);

create table comment_tbl(
comment_num number(5) primary key,
board_num number(5) not null, --게시물 안에 들어갈때 게시물(넘버)를 다시 넘겨줌
user_id varchar2(16 char) not null,
comment_txt varchar2(100 char) not null,
comment_date date not null
);
--parent_commentNum number(5), --대댓글???

--테이블 컬럼 추가
alter table board_tbl add board_category varchar2(50 char);
--테이블 컬럼 삭제
alter table board_tbl drop column board_category;

--여기부터 수정
drop table comment_tbl cascade constraints purge;


--시퀀스 생성
create SEQUENCE user_cocktail_tbl_seq;
create SEQUENCE board_tbl_seq;
create SEQUENCE comment_tbl_seq;

drop SEQUENCE comment_tbl_seq;
-- 시퀀스명.nextval 로 사용
--11111

insert into user_info_tbl values('Id','Pw','이름','여','주소','010-1234-5678','20');
insert into user_cocktail_tbl values(user_cocktail_tbl_seq.nextval,'테스트이름','테스트술정보','테스트재료','테스트레시피','test.jpg','테스트태그','testId');
insert into board_tbl values(board_tbl_seq.nextval,'testId','게시글제목','게시글내용','aa.img', sysdate);
insert into comment_tbl values(comment_tbl_seq.nextval,'123','user_id','댓글내용', sysdate);

SELECT * FROM user_info_tbl;
SELECT * FROM user_cocktail_tbl;
SELECT * FROM board_tbl;
SELECT * FROM comment_tbl;

insert into comment_tbl values(comment_tbl_seq.nextval,456,'789','101010',sysdate);
insert into board_tbl values(board_tbl_seq.nextval,'testId2','게시글제목2','게시글내용2','bb.img', sysdate, 'review');

delete from user_info_tbl where user_id = '';

update board_tbl set user_id = 'ADMIN' where board_num = '29';