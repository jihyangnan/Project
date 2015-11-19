DROP table re_board;
drop table p_board;
drop table b_board;
drop table question;
drop table question_type;

CREATE TABLE p_board(
  b_no NUMBER PRIMARY KEY NOT NULL, --글번호(pk)
  b_Id VARCHAR2(20), -- 작성자(fk)
  b_Title VARCHAR2(50) NOT NULL, -- 제목
  b_Content CLOB NOT NULL, -- 내용
  b_Hit NUMBER, -- 조회수
  b_Renum NUMBER, -- 답변수
  b_Date DATE, --등록일
  b_Delete CHAR(2), --삭제여부
  b_saNo NUMBER REFERENCES b_Word(sa_No) -- 말머리 번호 (fk)
);

CREATE TABLE b_Word(
  sa_No NUMBER PRIMARY KEY NOT NULL,--말머리 번호 (pk)
  sa_Name VARCHAR2(20), -- 말머리 이름
  sa_img VARCHAR2(50)
);

CREATE TABLE Re_board(
  rw_No NUMBER PRIMARY KEY NOT NULL, --답글번호 (pk)
  rw_Order NUMBER , --순서번호
  rw_Content VARCHAR2(200) NOT NULL, --내용
  rw_Id VARCHAR2(20), -- 작성자 (fk)
  rw_Date DATE NOT NULL, --등록일
  rw_Delete CHAR(2), --삭제여부
  rw_bNo NUMBER REFERENCES p_Board(b_No) --그룹번호(fk)
);

alter table re_board add(group_id number);
alter table re_board add(group_tab number);
alter table re_board add(group_step number);
alter table re_board add(root number);
alter table re_board add(depth number);

CREATE TABLE question(
  q_No NUMBER PRIMARY KEY NOT NULL, --문의번호(pk)
  q_Id VARCHAR2(20) NOT NULL, -- 작성자(fk)
  q_Title VARCHAR2(30) NOT NULL, -- 제목
  q_Content VARCHAR2(200) NOT NULL, --내용
  q_Date DATE NOT NULL, --등록일
  q_Phone VARCHAR2(30), --휴대전화
  q_Email VARCHAR2(30) NOT NULL, --이메일
  q_qtNo NUMBER REFERENCES question_type(qt_No) -- 문의유형 번호(fk)
);


CREATE TABLE question_type(
  qt_No NUMBER PRIMARY KEY NOT NULL, -- 문의 유형 종류(pk)
  qt_Name VARCHAR2(30) NOT NULL --문의 유형 이름
);

insert into b_Word values(1,'공지사항','ico-list-notice.gif');
insert into b_Word values(2,'이벤트','ico-list-event.png');
insert into b_Word values(3,'기타','ico-list-etc.png');
insert into b_Word values(4,' '); --회원들꺼는 공백으로 말머리 넣음

INSERT INTO p_board values(1,'hong','질문있습니다1.','질문이 있었습니다.',0,0,SYSDATE,'n',4);
INSERT INTO p_board values(2,'shim','질문있습니다2.','질문이 있었습니다.',0,0,SYSDATE,'n',4);
INSERT INTO p_board values(3,'hong','질문있습니다3.','질문이 있었습니다.',0,0,SYSDATE,'n',4);
INSERT INTO p_board values(4,'shim','질문있습니다4.','질문이 있었습니다.',0,0,SYSDATE,'n',4);
INSERT INTO p_board values(5,'hong','질문있습니다5.','질문이 있었습니다.',0,0,SYSDATE,'n',4);
INSERT INTO p_board values(6,'hong','질문있습니다6.','질문이 있었습니다.',0,0,SYSDATE,'n',4);
INSERT INTO p_board values(7,'shim','질문있습니다7.','질문이 있었습니다.',0,0,SYSDATE,'n',4);
INSERT INTO p_board values(8,'shim','질문있습니다8.','질문이 있었습니다.',0,0,SYSDATE,'n',4);
INSERT INTO p_board values(9,'hong','질문있습니다9.','질문이 있었습니다.',0,0,SYSDATE,'n',4);
INSERT INTO p_board values(10,'shim','질문있습니다10.','질문이 있었습니다.',0,0,SYSDATE,'n',4);
INSERT INTO p_board values(11,'hong','질문있습니다11.','질문이 있었습니다.',0,0,SYSDATE,'n',4);
INSERT INTO p_board values(12,'shim','질문있습니다12.','질문이 있었습니다.',0,0,SYSDATE,'n',4);
INSERT INTO p_board values(13,'shim','질문있습니다13.','질문이 있었습니다.',0,0,SYSDATE,'n',4);
INSERT INTO p_board values(14,'hong','질문있습니다14.','질문이 있었습니다.',0,0,SYSDATE,'n',4);
INSERT INTO p_board values(15,'shim','질문있습니다15.','질문이 있었습니다.',0,0,SYSDATE,'n',4);

INSERT INTO p_board values(16,'admin','공지사항입니다.','공지사항 있었습니다.',0,0,SYSDATE,'n',1);
INSERT INTO p_board values(17,'admin','이번달 이벤트 입니다.','이벤트 있었습니다.',0,0,SYSDATE,'n',2);
INSERT INTO p_board values(18,'admin','공지사항입니다.','공지사항 있었습니다.',0,0,SYSDATE,'n',1);
INSERT INTO p_board values(19,'admin','자유 게시판 작성시 주의 사항입니다.','욕설은 자제해 주시길 바랍니다.',0,0,SYSDATE,'n',3);
INSERT INTO p_board values(20,'admin','이번달 이벤트 입니다.','이벤트 있었습니다.',0,0,SYSDATE,'n',2);
INSERT INTO p_board values(21,'admin','공지사항입니다.','공지사항 있었습니다.',0,0,SYSDATE,'n',1);

insert into question_type values(1,'문의');
insert into question_type values(2,'불만');
insert into question_type values(3,'칭찬');
insert into question_type values(4,'제안');
insert into question_type values(5,'수정');

