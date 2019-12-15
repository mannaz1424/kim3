--resource table gid, id, name
CREATE TABLE resource01(
	gid NUMBER,
	id varchar2(100),
	name varchar2(100)
);
--  {"id": "tmp_1", "name": "개발자 1"},
SELECT * FROM resource01;
INSERT INTO resource01 values(1,'tmp_0','개발자0');

CREATE TABLE gantt(
	gid NUMBER,
	selectedRow NUMBER,
	canWrite NUMBER,
	canDelete NUMBER,
	canWriteOnParent NUMBER,
	canAdd number
);

CREATE TABLE role(
	gid NUMBER,
	id varchar2(100),
	name varchar2(100)
);
CREATE TABLE task(
	gid NUMBER,
	id NUMBER,
	progress NUMBER,
	progressByWorklog NUMBER,
	relevance NUMBER,
	type varchar2(100),
	typeId varchar2(100),
	description varchar2(1000),
	code varchar2(100),
	level01 NUMBER,
	status varchar2(100),
	depends varchar2(100),
	canWrite NUMBER,
	start01 NUMBER,
	duration NUMBER,
	end NUMBER,	
	startIsMilestone NUMBER,	
	endIsMilestone NUMBER,	
	collapsed NUMBER,	
	hasChild NUMBER );

CREATE TABLE deletedTaskId(
	gid NUMBER,
	id varchar2(100)
);
CREATE TABLE assig(
	gid NUMBER,
	tid NUMBER,
	resourceId varchar2(100),	
	id varchar2(100),	
	roleId varchar2(100),		
	effort NUMBER
);
