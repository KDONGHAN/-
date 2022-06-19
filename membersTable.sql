use pj;

create table member(
	name varchar(20) primary key,
	id int(9) not null,
	dep varchar(20) not null,
	birth1 int(4) not null,
	birth2 int(2) not null,
	birth3 int(3) not null,
	choice varchar(10) not null,
	phone1 int(3) not null,
	phone2 int(4) not null,
	phone3 int(4) not null,
	sex varchar(10) not null,
	memo varchar(20) not null
);