-- 회원정보
create table if not exists user_info
(
   user_no    int auto_increment primary key comment '유저번호',
   user_name   varchar(20) not null comment '유저이름',
   user_address varchar(20) not null comment '유저주소'
 
   
) engine = innodb comment '회원정보'


-- 전화번호부

create table if not exists CALL_LIST(

   call_list_code int PRIMARY key auto_increment comment '전화번호부코드',
   user_no int unique comment '유저번호',
   
   constraint fk_user_no FOREIGN key (user_no) references user_info (user_no)
) engine=innodb comment '전화번호부';


-- 전화번호 링크
create table if not exists call_link
(
   call_list_code int comment '전화번호부코드',
   call_code int comment '전화번호코드',
   
   constraint fk_call_list_code FOREIGN key (call_list_code) references user_info (user_no),
   constraint fk_call_code FOREIGN key (call_code) references user_info (user_no)
)engine=innodb comment '전화번호 링크';


-- 데이터삽입

INSERT INTO user_info VALUES (null, '김다영', '면목동');
INSERT INTO user_info VALUES (null, '김재석', '고잔동');
INSERT INTO user_info VALUES (null, '박하영', '군자동');
INSERT INTO user_info VALUES (null, '서은진', '가산동');
INSERT INTO user_info VALUES (null, '김민주', '암사동');

INSERT INTO call_number VALUES (null, null, '핸드폰', '010-8846-5953', 'y');
INSERT INTO call_number VALUES (null, null, '핸드폰', '010-6383-9728', 'y');
INSERT INTO call_number VALUES (null, null, '핸드폰', '010-8985-3027', 'y');
INSERT INTO call_number VALUES (null, null, '핸드폰', '010-6270-4016', 'y');
INSERT INTO call_number VALUES (null, null, '핸드폰', '010-2863-0788', 'y');

select 
 * from user_info;

