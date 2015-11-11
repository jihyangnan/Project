DROP table re_board;
drop table p_board;
drop table b_board;
drop table question;
drop table question_type;

CREATE TABLE p_board(
  b_no NUMBER PRIMARY KEY NOT NULL, --�۹�ȣ(pk)
  b_Id VARCHAR2(20), -- �ۼ���(fk)
  b_Title VARCHAR2(50) NOT NULL, -- ����
  b_Content CLOB NOT NULL, -- ����
  b_Hit NUMBER, -- ��ȸ��
  b_Renum NUMBER, -- �亯��
  b_Date DATE, --�����
  b_Delete CHAR(2), --��������
  b_saNo NUMBER REFERENCES b_Word(sa_No) -- ���Ӹ� ��ȣ (fk)
);

CREATE TABLE b_Word(
  sa_No NUMBER PRIMARY KEY NOT NULL,--���Ӹ� ��ȣ (pk)
  sa_Name VARCHAR2(20), -- ���Ӹ� �̸�
  sa_img VARCHAR2(50)
);

CREATE TABLE Re_board(
  rw_No NUMBER PRIMARY KEY NOT NULL, --��۹�ȣ (pk)
  rw_Order NUMBER , --������ȣ
  rw_Content VARCHAR2(200) NOT NULL, --����
  rw_Id VARCHAR2(20), -- �ۼ��� (fk)
  rw_Date DATE NOT NULL, --�����
  rw_Delete CHAR(2), --��������
  rw_bNo NUMBER REFERENCES p_Board(b_No) --�׷��ȣ(fk)
);

alter table re_board add(group_id number);
alter table re_board add(group_tab number);
alter table re_board add(group_step number);
alter table re_board add(root number);
alter table re_board add(depth number);

CREATE TABLE question(
  q_No NUMBER PRIMARY KEY NOT NULL, --���ǹ�ȣ(pk)
  q_Id VARCHAR2(20) NOT NULL, -- �ۼ���(fk)
  q_Title VARCHAR2(30) NOT NULL, -- ����
  q_Content VARCHAR2(200) NOT NULL, --����
  q_Date DATE NOT NULL, --�����
  q_Phone VARCHAR2(30), --�޴���ȭ
  q_Email VARCHAR2(30) NOT NULL, --�̸���
  q_qtNo NUMBER REFERENCES question_type(qt_No) -- �������� ��ȣ(fk)
);


CREATE TABLE question_type(
  qt_No NUMBER PRIMARY KEY NOT NULL, -- ���� ���� ����(pk)
  qt_Name VARCHAR2(30) NOT NULL --���� ���� �̸�
);

insert into b_Word values(1,'��������','ico-list-notice.gif');
insert into b_Word values(2,'�̺�Ʈ','ico-list-event.png');
insert into b_Word values(3,'��Ÿ','ico-list-etc.png');
insert into b_Word values(4,' '); --ȸ���鲨�� �������� ���Ӹ� ����

INSERT INTO p_board values(1,'hong','�����ֽ��ϴ�1.','������ �־����ϴ�.',0,0,SYSDATE,'n',4);
INSERT INTO p_board values(2,'shim','�����ֽ��ϴ�2.','������ �־����ϴ�.',0,0,SYSDATE,'n',4);
INSERT INTO p_board values(3,'hong','�����ֽ��ϴ�3.','������ �־����ϴ�.',0,0,SYSDATE,'n',4);
INSERT INTO p_board values(4,'shim','�����ֽ��ϴ�4.','������ �־����ϴ�.',0,0,SYSDATE,'n',4);
INSERT INTO p_board values(5,'hong','�����ֽ��ϴ�5.','������ �־����ϴ�.',0,0,SYSDATE,'n',4);
INSERT INTO p_board values(6,'hong','�����ֽ��ϴ�6.','������ �־����ϴ�.',0,0,SYSDATE,'n',4);
INSERT INTO p_board values(7,'shim','�����ֽ��ϴ�7.','������ �־����ϴ�.',0,0,SYSDATE,'n',4);
INSERT INTO p_board values(8,'shim','�����ֽ��ϴ�8.','������ �־����ϴ�.',0,0,SYSDATE,'n',4);
INSERT INTO p_board values(9,'hong','�����ֽ��ϴ�9.','������ �־����ϴ�.',0,0,SYSDATE,'n',4);
INSERT INTO p_board values(10,'shim','�����ֽ��ϴ�10.','������ �־����ϴ�.',0,0,SYSDATE,'n',4);
INSERT INTO p_board values(11,'hong','�����ֽ��ϴ�11.','������ �־����ϴ�.',0,0,SYSDATE,'n',4);
INSERT INTO p_board values(12,'shim','�����ֽ��ϴ�12.','������ �־����ϴ�.',0,0,SYSDATE,'n',4);
INSERT INTO p_board values(13,'shim','�����ֽ��ϴ�13.','������ �־����ϴ�.',0,0,SYSDATE,'n',4);
INSERT INTO p_board values(14,'hong','�����ֽ��ϴ�14.','������ �־����ϴ�.',0,0,SYSDATE,'n',4);
INSERT INTO p_board values(15,'shim','�����ֽ��ϴ�15.','������ �־����ϴ�.',0,0,SYSDATE,'n',4);

INSERT INTO p_board values(16,'admin','���������Դϴ�.','�������� �־����ϴ�.',0,0,SYSDATE,'n',1);
INSERT INTO p_board values(17,'admin','�̹��� �̺�Ʈ �Դϴ�.','�̺�Ʈ �־����ϴ�.',0,0,SYSDATE,'n',2);
INSERT INTO p_board values(18,'admin','���������Դϴ�.','�������� �־����ϴ�.',0,0,SYSDATE,'n',1);
INSERT INTO p_board values(19,'admin','���� �Խ��� �ۼ��� ���� �����Դϴ�.','�弳�� ������ �ֽñ� �ٶ��ϴ�.',0,0,SYSDATE,'n',3);
INSERT INTO p_board values(20,'admin','�̹��� �̺�Ʈ �Դϴ�.','�̺�Ʈ �־����ϴ�.',0,0,SYSDATE,'n',2);
INSERT INTO p_board values(21,'admin','���������Դϴ�.','�������� �־����ϴ�.',0,0,SYSDATE,'n',1);

insert into question_type values(1,'����');
insert into question_type values(2,'�Ҹ�');
insert into question_type values(3,'Ī��');
insert into question_type values(4,'����');
insert into question_type values(5,'����');

