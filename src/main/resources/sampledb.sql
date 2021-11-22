drop table sample;

create table sample(
id varchar(12) primary key,
title varchar(200),
reg_user varchar(20),
content varchar(2000),
reg_date datetime default now()
);

desc sample;

insert into sample value('sample-00001','JAVA Programming','관리자','자바 관련 글만 등록하세요.',now())
select * from sample;

create table ids(
table_name varchar(16) primary key,
next_id int(10) not null
);
insert into ids values('sample',2);
select * from ids;
select nvl(max(id),0)+1 from sample;