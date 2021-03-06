
CREATE TABLE users(
   id VARCHAR2(100) PRIMARY KEY,
   pwd VARCHAR2(100) NOT NULL,
   email VARCHAR2(100),
   profile VARCHAR2(100), -- 프로필 이미지 경로를 저장할 칼럼
   regdate DATE, -- 가입일
   addr VARCHAR2(100) -- 실제 주소
);

CREATE TABLE inquiry_board(
   num NUMBER PRIMARY KEY, --글번호
   writer VARCHAR2(100) NOT NULL, --작성자 (로그인된 아이디)
   title VARCHAR2(100) NOT NULL, --제목
   content CLOB(4000), --글 내용
   viewCount NUMBER, -- 조회수
   regdate DATE --글 작성일
);

CREATE SEQUENCE inquiry_board_seq; 


CREATE TABLE review(
   num NUMBER PRIMARY KEY,
   writer VARCHAR2(100) NOT NULL,
   title VARCHAR2(100) NOT NULL,
   content CLOB(4000),
   orgImgName VARCHAR2(100) NOT NULL, -- 원본 사진명
   saveImgName VARCHAR2(100) NOT NULL, -- 서버에 실제로 저장된 사진명
   fileSize NUMBER NOT NULL, -- 파일의 크기 
   regdate DATE
);

CREATE SEQUENCE review_seq; 

CREATE TABLE inquiry_comment(
   num NUMBER PRIMARY KEY, --댓글의 글번호
   writer VARCHAR2(100), --댓글 작성자의 아이디
   content VARCHAR2(500), --댓글 내용
   target_id VARCHAR2(100), --댓글의 대상자 아이디
   ref_group NUMBER,
   comment_group NUMBER,
   deleted CHAR(3) DEFAULT 'no',
   regdate DATE
);

CREATE SEQUENCE inquiry_comment_seq;

-- 이미지 겔러리를 만들기 위한 테이블 
CREATE TABLE board_gallery(
   num NUMBER PRIMARY KEY,
   writer VARCHAR2(100),
   caption VARCHAR2(100), -- 이미지에 대한 설명
   imagePath VARCHAR2(100), -- 업로드된 이미지의 경로  ex) /upload/xxx.jpg
   regdate DATE -- 이미지 업로드 날짜 
);

CREATE SEQUENCE board_gallery_seq;

-- 상품테이블
CREATE TABLE shop(
   code NUMBER PRIMARY KEY, --상품번호
   name VARCHAR2(100), --상품이름
   price NUMBER, --상품가격
   remainCount NUMBER CHECK(remainCount >= 0), --재고갯수
   category VARCHAR2(100),
   viewcount NUNBER
);

-- 고객 계좌 테이블
CREATE TABLE client_account(
   id VARCHAR2(100) PRIMARY KEY, -- 고객의 아이디
   money NUMBER CHECK(money >= 0), -- 고객의 잔고 
   point NUMBER
);

-- 주문 테이블
CREATE TABLE client_order(
   num NUMBER PRIMARY KEY, -- 주문번호
   id VARCHAR2(100), -- 주문 고객의 아이디
   code NUMBER, -- 주문한 상품의 번호 
   addr VARCHAR2(100) -- 배송 주소
);

-- 주문 테이블에 사용할 시퀀스 
CREATE SEQUENCE client_order_seq;

CREATE TABLE cart(
   num NUMBER PRIMARY KEY,
   code NUMBER,
   id VARCHAR2(100)
);

-- sample 데이터
INSERT INTO shop (num,name,price,remainCount)
VALUES(1, '사과', 1000, 5);

INSERT INTO shop (num,name,price,remainCount)
VALUES(2, '바나나', 2000, 5);

INSERT INTO shop (num,name,price,remainCount)
VALUES(3, '귤', 3000, 5);


