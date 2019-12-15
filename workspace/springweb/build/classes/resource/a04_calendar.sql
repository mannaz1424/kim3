CREATE TABLE calendar(
	id NUMBER PRIMARY KEY,
	title varchar2(100),
	begin varchar2(50),
	END varchar2(50),
	content varchar2(1000),
	color varchar2(10),
	textColor varchar2(10),
	allDay varchar2(1)
);
CREATE SEQUENCE cal_seq
	MINVALUE 1
	MAXVALUE 99999
	INCREMENT BY 1
	START WITH 1
	cache 20;
INSERT INTO calendar values(
	cal_seq.nextval,
	'주간 업무 회의',
	'2019-07-24T09:00:00',
	'2019-07-24T15:00:00',
	'회의내용입니다',
	'#0099cc',
	'#ccffff',
	''
);	
	
SELECT * FROM calendar;