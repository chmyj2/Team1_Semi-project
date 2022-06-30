drop sequence category_Number_Seq;
create sequence category_Number_Seq;

select * from categoryTbl;


insert into categoryTbl values(category_Number_Seq.nextval,-1,null,1);
delete categoryTbl where Name = 'Scotch Whisky';


insert into user_info_tbl values('yorunohosi','a0624124!@$','이준우','남','경기도 고양시 일산동구 성현로','010-8985-4474',27);
select * from user_info_tbl;

create table user_info_tbl(
user_id varchar2(16 char) primary key,
user_pw varchar2(30 char) not null,
user_name varchar2(20 char) not null,
user_gender char(1 char) not null,
user_addr varchar2(100 char) not null,
user_phoneNumber varchar2(100 char) not null,
user_age number(3) not null
);

create table categoryTbl
(
	Num_PK 		VARCHAR2(8) primary key,
	Parent_Num  VARCHAR2(8),
	Name varchar2(16) not null unique,
	Hierarchy_Level Number(1)
)
drop table categoryTbl cascade constraint purge;

drop table productBoardTbl cascade constraint purge;
drop table ProductTbl cascade constraint purge;

drop sequence Product_Number_Seq;
create sequence Product_Number_Seq;

drop table ProductTbl cascade constraint purge;

delete productTbl;
select * from productTbl;
select * from productTbl where Num_PK IN ('P41','P61')
create table productTbl
(
	Num_PK 	 		VARCHAR2(8 char) 	primary key,
	CategorytNum 	VARCHAR2(8 char)	not null,
	Name 			varchar2(45 char) 	not null,
	Price 			Number(10) 			not null,
	VAT 			Number(10) 			not null,
	Contents 	 	varchar2(400 char) 	not null,
	Thumbnail  		varchar2(40 char) 	not null,
	Img1  	 		varchar2(40 char),
	Img2  	 		varchar2(40 char),
	Img3  			varchar2(40 char),
	Tag 		 	varchar2(100 char),
	OnSale 			varchar2(1 char),
	OnExhibition 	varchar2(1 char),
	Stock 	 		Number(5) 			not null
);


create table DiscountInfoTbl
(
	Discount_Code 		varchar2(20 char),
	Discount_Progress 	varchar2(1 char)	CONSTRAINT progressCheck CHECK(Discount_Progress IN('Y', 'N' )),
	Discount_type 		varchar2(20 char) 	not null,
	Discount_name 		varchar2(20 char) 	not null,
	Discount_startDate 	date not null,
	Discount_endDate 	date not null,
	Discount_Coverage 	varchar2(20 char) 	not null,
	Discount_Target 	varchar2(20 char) 	not null,
	Discount_Rate 		number(3),
	Discount_Amount 	number(10) 
)
drop table OrderTbl cascade constraint purge;
drop sequence Order_Number_Seq
create sequence Order_Number_Seq;
create table OrderTbl
(
	Order_Num 				varchar2(8 char)	PRIMARY KEY,
	Order_UserId 			varchar2(16 char) 	not null,
	Order_Reciever			varchar2(16 char) 	not null,
	Order_PhoneNumber		varchar2(20 char) 	not null,
	Order_ProductNumber 	varchar2(8 char) 	not null,
	Order_productQuantity 	NUMBER(4) 			not null,
	Order_Date 				date 				not null,
	Order_State 			VARCHAR2(10 char) 	not null,
	Order_Address 			VARCHAR2(100 char) 	not null,
	Order_DeliveryState 	VARCHAR2(20 char) 	not null,
	Order_PaymentState 		VARCHAR2(20 char) 	not null,
	Order_ProductPrice 		NUMBER(10) 			not null,
	Order_DeliveryPrice 	NUMBER(5) 			not null,
	Order_TotalPrice 		NUMBER(10) 			not null,
	parentOrder				varchar2(8 char)
);

drop sequence Cart_Number_Seq
create sequence Cart_Number_Seq;
drop table cartTbl cascade constraint purge;

delete cartTbl
select * from  cartTbl
create table cartTbl
(
	Cart_Number 			varchar2(8 char) 		PRIMARY KEY,
	Cart_userID 			varchar2(16 char) not null,
	Cart_Product_Num 		varchar2(8 char) 		not null,
	Cart_ProductQuantity 	Number(4) 		not null,
	Cart_Date 				date 			not null
);
drop table paymentTbl cascade constraint purge;

create table paymentTbl
(
	Payment_Code 		varchar2(8 char) 			primary key,
	payment_OrderNum 	Number(8) 			not null,
	Payment_way			varchar2(20 char) 	not null,
	Payment_date		date 				not null,
	payment_totalPay 	Number(10)			not null,
	payment_extraPay 	Number(10)			not null,
	payment_depositPay	Number(10)			not null,
	payment_depositor	varchar2(20 char)	not null,
	payment_bankName	varchar2(20 char)	not null
)




delete orderTbl;

select * from OrderTbl



create sequence Product_Number_Seq;
create sequence Order_Number_Seq;



drop table ProductTbl cascade constraint purge;
drop table OrderTbl cascade constraint purge;
drop table cartTbl cascade constraint purge;


create sequence Cart_Number_Seq;
insert into Cart_Number_Seq values (Cart_Number_Seq.nextval, '유저ID','상품넘버','상품수량',sysdate);
