drop table member cascade constraint;
drop table orderlist cascade constraint;

create table member(
	user_id varchar2(10) primary key,
	user_name varchar2(50) not null
);

create table orderlist(
	user_id varchar2(10),
	user_order varchar2(50) not null,
	order_date date default sysdate
);


insert all
	into member values('1111111111','kay')
	into orderlist values('1111111111', 'カツ丼', '2019-03-01')
	into orderlist values('1111111111', '親子丼','2019-03-02')
	into orderlist values('1111111111', 'ヒレカツ','2019-03-03')
	into orderlist values('1111111111', 'エビカツ','2019-03-04')
	select * from DUAL;





select * from member;

select * from orderlist;



/*
 * Dummy Data
 */

insert into member values ('2018001001', 'Tom1');
insert into member values ('2018001002', 'Tom2');
insert into member values ('2018001003', 'Tom3');
insert into member values ('2018001004', 'Tom4');
insert into member values ('2018001005', 'Tom5');
insert into member values ('2018001006', 'Tom6');
insert into member values ('2018001007', 'Tom7');
insert into member values ('2018001008', 'Tom8');
insert into member values ('2018001009', 'Tom9');
insert into member values ('2018001010', 'Tom10');



insert into orderlist values ('2018001001', 'エビフライセット');
insert into orderlist values ('2018001002', '焼肉セット');
insert into orderlist values ('2018001003', '魚フライセット');
insert into orderlist values ('2018001004', '焼肉セット');
insert into orderlist values ('2018001005', '魚フライセット');
insert into orderlist values ('2018001006', '焼肉セット');
insert into orderlist values ('2018001007', '焼肉セット');
insert into orderlist values ('2018001008', 'エビフライセット');
insert into orderlist values ('2018001009', '魚フライセット');
insert into orderlist values ('2018001010', '魚フライセット');

insert into orderlist values ('1111111111', '魚フライセット', sysdate);

select * from orderlist where user_id='1111111111' and trunc(order_date) = trunc(CURRENT_DATE) order by  order_date desc;

select * from orderlist where user_id='1111111111' and trunc(order_date) != trunc(CURRENT_DATE) order by  order_date desc;

delete from orderlist where user_id='1111111111' and trunc(order_date) = trunc(CURRENT_DATE);