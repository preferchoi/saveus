--create table trash(
--trash varchar2 (20),
--separate varchar2 (200)
--);
--
--drop table trash;

--
--insert into trash values('종이컵','압축 후 종이팩류로 분리배출');
--insert into trash values(' 유리병','깨지지 않게 색상별로 분리배출');
--insert into trash values('test','test');
--insert into trash values( '컵라면',   '스티로폼이 아닌 재질들은 모두 제거 후 분리배출');
--
--select * from TRASH;

drop table SU_member;

create table SU_member(
	id varchar2(50) primary key,
	pw varchar2(50) not null,
	name varchar2(50) not null,
	gender varchar2(10),
	birth date,
	email varchar2(50) ,
	tel varchar2(30),
	addr varchar2(50),
	point number(5) not null,
	join_insert date
	);
	
insert into SU_member values( 'abc','753','테스트','남','1995/01/28','test@test','123-456','광주',500,sysdate);
select * from SU_member;
update SU_member set point=point+10 where id='test'
select * from SU_member;
delete from SU_member where id='abc'
update SU_member set point=point+200 where id='abc'