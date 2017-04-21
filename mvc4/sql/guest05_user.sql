create table guest05_user(
	id varchar(10) primary key,
	password varchar(10),
	email varchar(60)
);

insert into guest05_user values ('admin','1234','admin@www.ddd');
insert into guest05_user values ('user','1232','user@www.ddd');

select * from guest05_user;