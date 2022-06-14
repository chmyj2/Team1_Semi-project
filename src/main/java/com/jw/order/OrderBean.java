package com.jw.order;

import java.util.Date;

/*
 *  create table OrderTbl
(
	Order_Num Number(8) PRIMARY KEY,
	Order_Date date not null,
	Order_State VARCHAR2(10 char) not null,
	Order_Address VARCHAR2(100 char) not null,
	Order_Detail VARCHAR2(400 char) not null,
	Order_UserId varchar2(8 char) not null
);
 */
public class OrderBean {
	private int number;
	private Date date;
	private String state;
	private String addr;
	private String detail;
	private String userId;
}
