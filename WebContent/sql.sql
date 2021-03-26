drop table budong_member

create table budong_member(
	id varchar2(10),
	pw varchar2(15),
	name varchar2(10)
)

select * from budong_member

insert into budong_member values('smhrd','123','smhrd')

select * from BUDONG_MEMBER 

drop table junwall

create table junwall(
	junwall_num number,
	dong_name varchar2(50),
	build_year number,
	deposit varchar2(10),
	loyer varchar2(10),
	apt_name varchar2(100),
	year number,
	month number,
	day number,
	apt_size number,
	floor number
)

drop table maemae

create table maemae(
	maemae_num number,
	dong_name varchar2(50),
	price varchar2(10),
	build_year number,
	apt_name varchar2(100),
	year number,
	month number,
	day number,
	apt_size number,
	floor number
)

create table school(
	school_name varchar2(50),
	address varchar2(500),
	dong varchar2(20)
);

select * from school

create table park(
	park_div varchar2(20),
	dong varchar2(50),
	park_size varchar2(10)
);

select * from park