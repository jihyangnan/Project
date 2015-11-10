-- �Խ��� ���̺�
CREATE TABLE p_board(
  b_no NUMBER PRIMARY KEY NOT NULL, --�۹�ȣ(pk)
  b_Id VARCHAR2(20), -- �ۼ���(fk)
  b_Title VARCHAR2(50) NOT NULL, -- ����
  b_Content VARCHAR2(2000) NOT NULL, -- ����
  b_Hit NUMBER, -- ��ȸ��
  b_Renum NUMBER, -- �亯��
  b_Date DATE, --�����
  b_Delete CHAR(2), --��������
  b_saNo NUMBER REFERENCES b_Word(sa_No) -- ���Ӹ� ��ȣ (fk)
);

--���Ӹ� ���̺�
CREATE TABLE b_Word(
  sa_No NUMBER PRIMARY KEY NOT NULL,--���Ӹ� ��ȣ (pk)
  sa_Name VARCHAR2(20), -- ���Ӹ� �̸�
  sa_img VARCHAR2(50)
);

-- ��� ���̺�
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
--1:1����
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

--���� ����
CREATE TABLE question_type(
  qt_No NUMBER PRIMARY KEY NOT NULL, -- ���� ���� ����(pk)
  qt_Name VARCHAR2(30) NOT NULL --���� ���� �̸�
);

-- �÷� Ȯ��
DESC p_board;
DESC b_Word;
DESC Re_board;
DESC question;
DESC question_type;

insert into b_Word values(1,'��������','ico-list-notice.gif');
insert into b_Word values(2,'�̺�Ʈ','ico-list-event.png');
insert into b_Word values(3,'��Ÿ','ico-list-etc.png');
insert into b_Word values(4,' ',null); --ȸ���鲨�� �������� ���Ӹ� ����

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
--select * from re_board;
----����߰�
--INSERT INTO re_board VALUES(1,0,'�������','shim',SYSDATE,'n',
--	15,(SELECT NVL(MAX(group_id)+1,1) FROM re_board),0,0,0,0);
--commit;
--
----���
--SELECT a.b_no, a.b_id, a.b_title, a.b_content, a.b_sano, a.b_delete, b.sa_img, dbday, a.b_hit, num
--FROM(SELECT b_no, b_id, b_title, b_content, To_char(b_date,'YYYY-MM-DD')as dbday ,b_hit, b_sano, b_delete, rownum as num
--     FROM (SELECT b_no, b_id, b_title, b_content,b_date, b_hit, b_sano, b_delete
--           FROM p_board 
--           WHERE b_delete = 'n' AND b_sano <> 4
--           ORDER BY b_no desc)) a JOIN b_word b
--           ON a.b_sano = b.sa_no
--WHERE num BETWEEN 1 AND 5;
