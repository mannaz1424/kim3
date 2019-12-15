-- 게시판 테이블 만들기.
-- 1. 메인 테이블 컬럼 지정
--    게시판 기본 코드(primary key), 답글번호(0), 타이틀, 내용, 작성자, 조회횟수,
--    등록일, 수정일, 기타
--    board(테이블명):no, refno, title, content, writer, readcnt, credte, uptdte,
--    etc
-- 2. 첨부파일 테이블 컬럼 지정.
--    게시판 기본 코드의 번호, 파일이름, 생성일, 수정일, 기타
--    no, fname, credte, uptdte, etc
-- 3. sequence : board_seq

CREATE TABLE board(
	NO NUMBER PRIMARY KEY,
	refno NUMBER,
	title varchar2(100),
	content varchar2(1000),
	writer varchar2(50),
	readcnt NUMBER,
	credte DATE,
	uptdte DATE,
	etc varchar2(200)
);
CREATE TABLE boardfile(
	NO NUMBER,
	fname varchar2(200),
	credte DATE,
	uptdte DATE,
	etc varchar2(200)
);
CREATE SEQUENCE board_seq
	MINVALUE 1
	MAXVALUE 99999
	INCREMENT BY 1
	START WITH 1
	cache 20;
INSERT INTO board values(board_seq.nextval,0,'첫번째글등록','내용','홍길동',0,sysdate,
	sysdate,'');
SELECT * FROM board;	
	
	