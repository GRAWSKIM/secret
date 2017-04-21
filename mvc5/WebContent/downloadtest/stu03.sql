--주석
drop table stu03;
create table stu03(
	--primary key 유일한 식별값 (기본키)
	--unique(후보키)
	num number primary key, --unique not null, 
	name varchar2(60) not null,
	kor number(3),
	eng number(3),
	math number(3)
);

----------------------
--create sequence 시퀀스명
drop sequence stu03_seq;
create sequence stu03_seq;

----------------------
insert into stu03 values (stu03_seq.nextval,'user1',50,50,50);
insert into stu03 values (stu03_seq.nextval,'user2',60,70,80);
insert into stu03 values (stu03_seq.nextval,'user3',30,70,90);