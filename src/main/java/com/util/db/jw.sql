drop sequence category_Number_Seq;
create sequence category_Number_Seq;

select * from categoryTbl;


insert into categoryTbl values(category_Number_Seq.nextval,-1,null,1);
delete categoryTbl where Name = 'Scotch Whisky';
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

create table productTbl
(
	Num_PK 	 		Number(8) 			primary key,
	CategorytNum 	Number(8) 			not null,
	Name 			varchar2(45 char) 	not null,
	Price 			Number(10) 			not null,
	Supply_price 	Number(10) 			not null,
	VAT 			Number(10) 			not null,
	Margin 			Number(10) 			not null,
	Surcharge 		Number(10),
	Contents 	 	varchar2(400 char) 	not null,
	Thumbnail  		varchar2(40 char) 	not null,
	Img1  	 		varchar2(40 char),
	Img2  	 		varchar2(40 char),
	Img3  			varchar2(40 char),
	Tag 		 	varchar2(100 char),
	OnExhibition 	varchar2(1 char) 	CONSTRAINT exhibitionCheck CHECK (OnExhibition  IN(1)) not null,
	OnDiscount 		varchar2(1 char) 	CONSTRAINT DiscountCheck CHECK (OnDiscount IN('Y', 'N')) not null,
	DiscountCode 	varchar2(8 char),
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
create table OrderTbl
(
	Order_Num 				NUMBER(8) 			PRIMARY KEY,
	Order_UserId 			varchar(16 char) 	not null,
	Order_ProductNumber 	NUMBER(8) 			not null,
	Order_productQuantity 	NUMBER(4) 			not null,
	Order_Date 				date 				not null,
	Order_State 			VARCHAR2(10 char) 	not null,
	Order_Address 			VARCHAR2(100 char) 	not null,
	Order_DeliveryState 	VARCHAR2(20 char) 	not null,
	Order_PaymentState 		VARCHAR2(20 char) 	not null,
	Order_CSState 			VARCHAR2(20 char) 	not null,
	Order_ProductPrice 		NUMBER(10) 			not null,
	Order_TotalProductPrice NUMBER(10) 			not null,
	Order_DeliveryPrice 	NUMBER(5) 			not null,
	Order_TotalPrice 		NUMBER(10) 			not null,
	Order_DiscountCode 		VARCHAR2(20 char)
);

create sequence Cart_Number_Seq;
drop sequence Cart_Number_Seq

create table cartTbl
(
	Cart_Number 			Number(8) 		PRIMARY KEY,
	Cart_userID 			varchar(16 char) not null,
	Cart_Product_Num 		Number(8) 		not null,
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
