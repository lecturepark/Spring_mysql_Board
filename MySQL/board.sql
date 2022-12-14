	CREATE DATABASE BoardBoard CHARACTER SET UTF8MB4;				
	show databases;		
	show tables;
	use boardBoard;	

create table board (
	b_no int primary key auto_increment, 	#글번호
	b_title char(100),						#글제목
    b_id char(20) not null,					#작성자id
	b_datetime datetime not null,			#작성시간
    b_hit int,								#조회수    
    b_recommend int default 0,				#추천수    
    b_text text,							#글내용
    b_reply_count int,						#댓글수
    b_reply_ori int,						#댓글의 원글 번호
    b_reply_text text						#댓글내용
);
drop table board;

#일반글을 썼다고 가정
insert into board (b_title,b_id,b_datetime,b_text)
values (
'헬로'
,
'cat1'
,
now()
,
'글입니다. 글글.....글....'
);

#댓글을 썼다고 가정
insert into board (b_id,b_datetime,b_reply_ori,b_reply_text)
values (
'cat1'
,
now()
,
1
,
'댓글임......욕욕욕...'
);

select * from board; 
select * from board where not b_title is null;
select * from board where b_title is null;

update board set b_title='고침',b_id='xxx',b_datetime=now(),b_text='고친글임' where b_no=5;


alter table board rename column b_no to 글번호;
alter table board rename column b_title to 글제목;
alter table board rename column b_id to 작성자id;
alter table board rename column b_datetime to 작성시간;
alter table board rename column b_hit to 조회수 ;
alter table board rename column b_recommend to 추천수;
alter table board rename column b_text to 글내용;
alter table board rename column b_reply_count to 댓글수;
alter table board rename column b_reply_ori to 댓글원글번호;
alter table board rename column b_reply_text to 댓글내용;

update board set 조회수= 조회수+1 where b_no=5;
update board set 조회수=0;
update board set 조회수= 조회수+1;


update board set 추천수=0;
update board set 추천수= 추천수+1 ;

update board set 조회수= 1 where 글번호=5;

update board set 댓글내용 = '댓글이야',댓글수=댓글수+1 where 글번호=5;
update board set 댓글수 = 0;
update board set 댓글수 = 댓글수+1;
update board set 댓글내용 = null;

select * from board order by 추천수 desc LIMIT 5 OFFSET 0; 
select * from board; 
select count(*) from board; 


SELECT * FROM board LIMIT 5 OFFSET 0;
insert into board (글제목,작성자id,작성시간,글내용)
values (
'헬로'
,
'cat1'
,
now()
,
'글입니다. 글글.....글....'
);
update board set 추천수= 추천수+1 where 글번호=3;
update board set 추천수= 추천수+2 where 글번호=5;
update board set 추천수= 추천수+3 where 글번호=50;
update board set 추천수= 추천수+4 where 글번호=9;
update board set 추천수= 추천수+5 where 글번호=52;
update board set 추천수= 추천수+6 where 글번호=30;

create table asd (
	num int primary key auto_increment,
    title char(100),
    content text ,
	id char(100)					
    					
	
);
insert into asd (num,title,content,id)
values (0,'오직너만이','승리로 이끌수있따','다리우스'

);
create table cat_board(
	num int primary key auto_increment, 
    title char(255),
    content text,
    id char(30)
);
insert into cat_board (num,title,content,id,adatetime,hit,recommend)
values (0,'파도가 뭘 싣고올지','나한테 달렸죠','나미',now(),0,0

);
create table signin (
	
    id char(20) not null,
	pw char(20) not null,
    tel char(20) not null,
    gender char(20) not null,
    hobby char(20) not null
    					
	
);
insert into signin (id,pw,tel,gender,hobby)
values ('','1234567','01012341234','여','바람불기'

);
ALTER table cat_board ADD hit int;
ALTER table cat_board ADD report char(20);


ALTER table cat_board ADD report1 char(20);
ALTER table cat_board ADD report2 char(20);
ALTER table cat_board ADD report3 char(20);
ALTER table cat_board ADD report4 char(20);

ALTER table cat_board ADD recommend int;
ALTER table cat_board ADD adatetime datetime not null;

ALTER table signin ADD tel int;

ALTER table signin ADD gender char(20);
ALTER table signin ADD hobby char(20);

update signin set tel = '01012345678', gender = '남' where id = 'nnnn';
update signin set recommend =0;
update signin set recommend = recommend+1 where num=50;
ALTER table signin modify id char(20) not null;


update cat_board set hit =0;

update cat_board set adatetime = now();
update signin set id = q1q2q3;

update signin set pw = w1w2w3;

SELECT * FROM cat_board ORDER BY hit DESC;


drop table asd;
drop table cat_board;
drop table signin;
delete from signin where id = '';
ALTER table cat_board add 기타 char(20) ;

delete from cat_board where num = 66;
select * from asd; 
select * from cat_board;
select * from cat_board where (욕설 || 부적절한내용 || 혐오발언 ||부적절한이름 ||기타);
select * from cat_board where 욕설 = "욕했음";
select * from cat_board where (욕설 and 부적절한내용 and 혐오발언 and 부적절한이름 and 기타) LIKE '%_%';


SELECT * FROM cat_board ORDER BY hit DESC LIMIT 5 OFFSET 0  ;
select * from cat_board where id='나미'; 
select * from signin;
select * from cat_board where title like '%바위%';

select * from cat_board orders where title = '바위';
select * from cat_board orders where title like '%파도%';

update cat_board set report = "욕설" where num=3;

alter table signin add unique(id);
select count(case when id='aaaa' then 1 end) as id from signin;

create table tbl_test (	
	no int,
	str_data char(50)
);	

insert into tbl_test values(1,'1');		
insert into tbl_test values(2,'2');		
insert into tbl_test values(3,'100');		
insert into tbl_test values(4,'HELLO WORLD');		


SELECT no,str_data from tbl_test where no = 1;
select * from tbl_test; 
drop table tbl_test;



create table tbl_visitant_count (	
	count int
);	
	
insert into tbl_visitant_count values(0);	
	
commit;	
	
select * from tbl_visitant_count;	
drop table tbl_visitant_count;


create table tbl_doodle (	
	str varchar(500)
);	
	
select * from tbl_doodle;


create table tbl_test_del (	
	no int(10),
	str varchar(500)
);	
	
insert into tbl_test_del values(1, '개');	
insert into tbl_test_del values(2, '고양이');	
insert into tbl_test_del values(3, '너굴맨');	
	
commit;	
	
select * from tbl_test_del;		
delete from tbl_test_del where no=1;



create table tbl_guest(	
bno int auto_increment primary key,	
btitle char(255),
bcontent text,
bid char(30)
);	

insert into tbl_guest (btitle,bcontent,bid) values('개','멍멍','dog');
insert into tbl_guest (btitle,bcontent,bid) values('고양이','야옹','cat');
insert into tbl_guest (btitle,bcontent,bid) values('호랑이','어흥','tiger');
insert into tbl_guest (btitle,bcontent,bid) values('사자','으앙','lion');
insert into tbl_guest (btitle,bcontent,bid) values('돌고래','돌돌돌','dolpin');
insert into tbl_guest (btitle,bcontent,bid) values('고양이1','야옹1','cat1');
insert into tbl_guest (btitle,bcontent,bid) values('고양이2','야옹2','cat2');
insert into tbl_guest (btitle,bcontent,bid) values('고양이3','야옹3','cat3');
insert into tbl_guest (btitle,bcontent,bid) values('고양이4','야옹4','cat4');
insert into tbl_guest (btitle,bcontent,bid) values('고양이5','야옹5','cat5');
insert into tbl_guest (btitle,bcontent,bid) values('고양이6','야옹6','cat6');

select * from tbl_guest;
drop table tbl_guest;



create table SpringBoard(	
num int auto_increment primary key,	
title char(255),
content text,
id char(30),
hit int,
recommend int,
adatetime datetime not null,
욕설 char(30),
부적절한내용 char(30),
혐오발언 char(30),
부적절한이름 char(30),
기타 char(30)

);	
select * from SpringBoard;
select * from SpringBoard orders where recommend=1;
select count(*) as listcount from SpringBoard;
select * from SpringBoard as signinfowritelist where id='lecturepark';
update SpringBoard as readhit set hit =hit+1 where num=8;
update SpringBoard set recommend =recommend+1 where num=1;

insert into SpringBoard (title,content,id,adatetime) values('호랑이','어흥','tiger',now());
insert into SpringBoard (title,content,id,adatetime) values('고양이','야옹','cat',now());

create table SpringBoardSignin (
	
    id char(20) not null,
	pw char(20) not null,
    tel char(20) not null,
    gender char(20) not null,
    hobby char(20) not null
    					
	
);
insert into SpringBoardSignin (id,pw,tel,gender,hobby)
values ('janna123','1234567','01012341234','여','바람불기'
);
alter table SpringBoardSignin add unique(id);
delete from SpringBoardSignin where id = '';
select * from SpringBoardSignin where id = 'lecturepark';
select count(case when id='lecturepark' then 1 end) as id from SpringBoardSignin;
select * from SpringBoardSignin;
