drop table guest04;
create table guest04(
	sabun number,
	name varchar2(60),
	sub varchar2(60),
	nalja date,
	pay number
);
drop sequence guest04_seq;
create sequence guest04_seq start with 1000;


insert into guest04 values(guest04_seq.nextval,'user01','�������',sysdate,'1200');
insert into guest04 values(guest04_seq.nextval,'user01','�������',sysdate,'2550');
insert into guest04 values(guest04_seq.nextval,'user02','�������',sysdate,'3025');
insert into guest04 values(guest04_seq.nextval,'user01','�������',sysdate,'1905');
insert into guest04 values(guest04_seq.nextval,'user03','�������',sysdate,'1242');
insert into guest04 values(guest04_seq.nextval,'user01','�������',sysdate,'1955');
insert into guest04 values(guest04_seq.nextval,'user00','�������',sysdate,'1456');

