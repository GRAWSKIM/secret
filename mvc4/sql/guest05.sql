drop table guest05;
create table guest05(
	idx int auto_increment primary key,
	id varchar(10) default 'guest',
	sub varchar(6) default '�������',
	cntnt text,
	cnt int default 0,
	nalja timestamp,
	tf tinyint default 0
);

insert into guest05 (cntnt) values('����1');
insert into guest05 (sub,cntnt) values('����','����1');
select * from guest05;