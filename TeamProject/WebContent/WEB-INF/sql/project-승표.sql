DROP TABLE reserve;
DROP TABLE review;
DROP TABLE fac_reg;
DROP TABLE home_photo;
DROP TABLE zipreg;
DROP TABLE home_category;
DROP TABLE room_category;
DROP TABLE home_fac;
DROP TABLE fac_kind;


--��������
create table room_category 
( hst_No number primary key,
  hst_Name varchar2(20) not null,
  hst_Content varchar2(100) not null
);

--������
create table home_category 
( ht_No number primary key,
  ht_Name varchar2(50) not null,
  ht_Content varchar2(50) not null
);

--�ü�����
create table fac_kind 
( si_No number primary key,
  si_Kind varchar2(50) not null,
  si_Content varchar2(50)
);

--���ҽü�
create table home_fac 
( hs_No number primary key,
  hs_Kind number REFERENCES fac_kind(si_No),
  hs_Name varchar2(50) not null,
  hs_Content varchar2(200) not null
);

CREATE TABLE zipreg -- �����
(
h_No NUMBER, -- ����ȣ
h_Type NUMBER REFERENCES home_category(ht_No), --��������ȣ
h_rType NUMBER REFERENCES room_category(hst_No), --����������ȣ
h_nPerson NUMBER NOT NULL, --�����ο�
h_nRoom NUMBER NOT NULL, --ħ�Ǽ�
h_nBed NUMBER NOT NULL, --ħ���
h_nBath NUMBER NOT NULL, --��Ǽ�
h_nHome VARCHAR2(200) NOT NULL, --�����̸�
h_hContent VARCHAR2(1000) NOT NULL, --���Ҽ��λ���
h_Addr1 VARCHAR2(100) NOT NULL, --�ּ�
h_Addr2 VARCHAR2(100) NOT NULL, --���ּ�
h_Phone VARCHAR2(20) NOT NULL, --��󿬶�ó
h_Money NUMBER NOT NULL, --���
h_Startday DATE NOT NULL, -- ���������
h_Endday DATE NOT NULL, --���ึ����
h_Upday DATE DEFAULT SYSDATE, --�����
h_Loc VARCHAR2(100) NOT NULL, --���浵
h_Id VARCHAR2(20), --�����
h_Close CHAR(1) DEFAULT 'n' CHECK (h_Close IN('y','n')), --����ϷῩ��
--h_Close CHAR(1) CHECK (h_Close IN('y','n')), --����ϷῩ��
h_Rule VARCHAR2(2000), --�����̿��Ģ
CONSTRAINT zipreg_no_pk PRIMARY KEY(h_no)
);
DROP SEQUENCE zipreg_SEQ;
CREATE SEQUENCE zipreg_SEQ;


-- ������
create table home_photo 
( p_No number primary key,
  p_hno number REFERENCES zipreg(h_No),
  p_File varchar2(100) not null,
  P_Name varchar2(100) not null
);

--�ü� ���
create table fac_reg 
( c_No number primary key,
  c_hNo number REFERENCES zipreg(h_No),
  c_hsNo number REFERENCES home_fac(hs_No)
);

--�������� �� �Է�
INSERT INTO room_category VALUES( 1, '����ü', '�� ��ü�� ����մϴ�');
INSERT INTO room_category VALUES( 2, '���ν�', '1�ν��� ����մϴ�');
INSERT INTO room_category VALUES( 3, '���ν�', '2�ν��̻��� ����մϴ�');

--�ü� ���� �� �Է�
INSERT INTO fac_kind VALUES( 1, '�⺻ ���ǽü�', '');
INSERT INTO fac_kind VALUES( 2, '�߰����� ���ǽü�', '');
INSERT INTO fac_kind VALUES( 3, 'Ư�� �ü�', '');
INSERT INTO fac_kind VALUES( 4, '���� üũ����Ʈ', '');

--������ ������
DROP sequence home_category_seq;
create sequence home_category_seq
MINVALUE 0;

--������ �� �Է�
INSERT INTO home_category VALUES( home_category_seq.nextval, '����Ʈ', '����Ʈ');
INSERT INTO home_category VALUES( home_category_seq.nextval, '�ܵ�����', '�ܵ�����');
INSERT INTO home_category VALUES( home_category_seq.nextval, '�Խ�Ʈ�Ͽ콺', '�Խ�Ʈ�Ͽ콺');
INSERT INTO home_category VALUES( home_category_seq.nextval, '�볪����', '�볪����');
INSERT INTO home_category VALUES( home_category_seq.nextval, '����/Ÿ���Ͽ콺', '����/Ÿ���Ͽ콺');
INSERT INTO home_category VALUES( home_category_seq.nextval, '�����', '�����');
INSERT INTO home_category VALUES( home_category_seq.nextval, 'ķ��ī', 'ķ��ī');
INSERT INTO home_category VALUES( home_category_seq.nextval, '��Ʈ', '��Ʈ');
INSERT INTO home_category VALUES( home_category_seq.nextval, '���θ�', '���θ�');
INSERT INTO home_category VALUES( home_category_seq.nextval, '��Ÿ', '��Ÿ');

--���ҽü� ������
DROP sequence home_fac_seq;
create sequence home_fac_seq
MINVALUE 0;
--���ҽü� �� �Է�
INSERT INTO home_fac VALUES( home_fac_seq.nextval,1, 'TV', ' ');
INSERT INTO home_fac VALUES( home_fac_seq.nextval,1, '���ͳ�', ' ');
INSERT INTO home_fac VALUES( home_fac_seq.nextval,1, '����', '���� ���� �߾� ���� �Ǵ� ����');
INSERT INTO home_fac VALUES( home_fac_seq.nextval,1, '�ʼ�ǰ��', '����, ħ���Ʈ, ��, ȭ����');
INSERT INTO home_fac VALUES( home_fac_seq.nextval,1, '���̺� TV', ' ');
INSERT INTO home_fac VALUES( home_fac_seq.nextval,1, '������', ' ');
INSERT INTO home_fac VALUES( home_fac_seq.nextval,1, '�ξ�', '�Խ�Ʈ�� �̿� ������ �ξ�');
INSERT INTO home_fac VALUES( home_fac_seq.nextval,1, '���� ���ͳ�', '���� �� ���ͳ� �̿�');
INSERT INTO home_fac VALUES( home_fac_seq.nextval,2, '����', ' ');
INSERT INTO home_fac VALUES( home_fac_seq.nextval,2, '��Ź��', '���� �� ��/����');
INSERT INTO home_fac VALUES( home_fac_seq.nextval,2, '������', '���� �Ǵ� ����');
INSERT INTO home_fac VALUES( home_fac_seq.nextval,2, '������', '���� �� ��/����');
INSERT INTO home_fac VALUES( home_fac_seq.nextval,2, '��ħ�Ļ�', '��ħ�Ļ� ����');
INSERT INTO home_fac VALUES( home_fac_seq.nextval,2, '������������', '����, �ǹ� ���̳� �ֺ�');
INSERT INTO home_fac VALUES( home_fac_seq.nextval,2, '���� �ｺ��', ' ');
INSERT INTO home_fac VALUES( home_fac_seq.nextval,2, '����������', ' ');
INSERT INTO home_fac VALUES( home_fac_seq.nextval,2, '�ǳ� ������', ' ');
INSERT INTO home_fac VALUES( home_fac_seq.nextval,2, '������/������', ' ');
INSERT INTO home_fac VALUES( home_fac_seq.nextval,2, '�����', ' ');
INSERT INTO home_fac VALUES( home_fac_seq.nextval,2, '��Ǫ', ' ');
INSERT INTO home_fac VALUES( home_fac_seq.nextval,3, '����/��� ȯ��', ' ');
INSERT INTO home_fac VALUES( home_fac_seq.nextval,3, '������', ' ');
INSERT INTO home_fac VALUES( home_fac_seq.nextval,3, '�̺�Ʈ/��� ����', '25�� �̻��� �׷��� ������ �� �ִ� �����Դϴ�.');
INSERT INTO home_fac VALUES( home_fac_seq.nextval,3, '�ֿϵ��� �Խ� ����', ' ');
INSERT INTO home_fac VALUES( home_fac_seq.nextval,3, '�ֿ�/�ݷ����� Ű��� ����', ' ');
INSERT INTO home_fac VALUES( home_fac_seq.nextval,3, '��ü�� ��밡��', '��ü�� ������ ������ �����Դϴ�. ��Ÿ �������� �ʿ������ �Խ�Ʈ�� ȣ��Ʈ�� ���� �����ؾ� �մϴ�.');
INSERT INTO home_fac VALUES( home_fac_seq.nextval,4, 'ȭ�� ������', ' ');
INSERT INTO home_fac VALUES( home_fac_seq.nextval,4, '��ȭ��', ' ');
INSERT INTO home_fac VALUES( home_fac_seq.nextval,4, '�ϻ�ȭź�� Ž����', ' ');
INSERT INTO home_fac VALUES( home_fac_seq.nextval,4, '���� ����', ' ');
INSERT INTO home_fac VALUES( home_fac_seq.nextval,4, 'ħ�ǹ� �����ġ', ' ');


--INSERT INTO zipreg(h_No,h_Type,h_rType,h_nPerson,h_nRoom,h_nBed,h_nBath,h_nHome,h_hContent,h_Addr1,h_Addr2,h_Phone,h_Money,h_Startday,h_Endday,h_Loc,h_Id, h_Rule) 
--VALUES(zipreg_SEQ.NEXTVAL,1,1,4,2,2,2,'�ֿ�sist��','�����ο��� �Ѿ �ο��� �߰������ �����մϴ�','����� ������ ���ﵿ','������� 101�� 8','010-5454-3535','100000','2015/5/1','2015/5/3','37.537048,127.005533','noy11', '������ ������ּ���');
--
--INSERT INTO zipreg(h_No,h_Type,h_rType,h_nPerson,h_nRoom,h_nBed,h_nBath,h_nHome,h_hContent,h_Addr1,h_Addr2,h_Phone,h_Money,h_Startday,h_Endday,h_Loc,h_Id, h_Rule)
--VALUES(zipreg_SEQ.NEXTVAL,2,1,2,1,1,1,'�����Ͽ콺','�ֿϵ����� ���Ա���','����� ������ ���׵�','408','010-4444-3333','80000','2015/5/1','2015/5/6','37.537048,127.005533','n21511', '������ ������ּ���');
--
--INSERT INTO zipreg(h_No,h_Type,h_rType,h_nPerson,h_nRoom,h_nBed,h_nBath,h_nHome,h_hContent,h_Addr1,h_Addr2,h_Phone,h_Money,h_Startday,h_Endday,h_Loc,h_Id, h_Rule)
--VALUES(zipreg_SEQ.NEXTVAL,3,3,3,2,2,1,'���̳���','���ñ� ���� �ݵ�� �����ּ���','��õ������ ������ ���ﵿ','û���� ��ȣ���ƾ���Ʈ 101�� 1205ȣ','010-3333-6666','100000','2015/4/14','2015/5/3','37.537048,127.005533','mhuy52', '������ ������ּ���');
--
--INSERT INTO zipreg(h_No,h_Type,h_rType,h_nPerson,h_nRoom,h_nBed,h_nBath,h_nHome,h_hContent,h_Addr1,h_Addr2,h_Phone,h_Money,h_Startday,h_Endday,h_Loc,h_Id, h_Rule)
--VALUES(zipreg_SEQ.NEXTVAL,4,2,3,1,1,1,'���','�̺��� �ʿ��ϸ� �������� ������ּ���','���ֱ����� ���걸','��û�� 123-45','010-8787-8586','60000','2015/10/1','2015/12/23','37.537048,127.005533','lokij', '������ ������ּ���');
--
--INSERT INTO zipreg(h_No,h_Type,h_rType,h_nPerson,h_nRoom,h_nBed,h_nBath,h_nHome,h_hContent,h_Addr1,h_Addr2,h_Phone,h_Money,h_Startday,h_Endday,h_Loc,h_Id, h_Rule)
--VALUES(zipreg_SEQ.NEXTVAL,5,1,2,2,1,1,'����̳�','���� ����ǰ�� ì�ܿ��ž� �մϴ�','��󳲵� ����','������ ���ָ�','010-6664-5555','70000','2015/11/3','2015/12/1','37.537048,127.005533','hello9', '������ ������ּ���');
--
--INSERT INTO zipreg(h_No,h_Type,h_rType,h_nPerson,h_nRoom,h_nBed,h_nBath,h_nHome,h_hContent,h_Addr1,h_Addr2,h_Phone,h_Money,h_Startday,h_Endday,h_Loc,h_Id, h_Rule)
--VALUES(zipreg_SEQ.NEXTVAL,1,3,4,2,2,2,'�ֿ�sist��','�����ο��� �Ѿ �ο��� �߰������ �����մϴ�','����� ������ ���ﵿ','������� 101�� 8','010-5454-3535','100000','2015/11/29','2015/12/3','37.537048,127.005533','noy11', '������ ������ּ���');
--
--INSERT INTO zipreg(h_No,h_Type,h_rType,h_nPerson,h_nRoom,h_nBed,h_nBath,h_nHome,h_hContent,h_Addr1,h_Addr2,h_Phone,h_Money,h_Startday,h_Endday,h_Loc,h_Id, h_Rule)
--VALUES(zipreg_SEQ.NEXTVAL,2,1,2,1,1,1,'�����Ͽ콺','�ֿϵ����� ���Ա���','����� ������ ���׵�','408','010-4444-3333','80000','2015/11/26','2015/11/26','37.537048,127.005533','n21511', '������ ������ּ���');
--
--INSERT INTO zipreg(h_No,h_Type,h_rType,h_nPerson,h_nRoom,h_nBed,h_nBath,h_nHome,h_hContent,h_Addr1,h_Addr2,h_Phone,h_Money,h_Startday,h_Endday,h_Loc,h_Id, h_Rule)
--VALUES(zipreg_SEQ.NEXTVAL,3,3,3,2,2,1,'���̳���','���ñ� ���� �ݵ�� �����ּ���','��õ������ ������ ���ﵿ','û���� ��ȣ���ƾ���Ʈ 101�� 1205ȣ','010-3333-6666','100000','2015/11/3','2015/12/1','37.537048,127.005533','mhuy52', '������ ������ּ���');
--
--INSERT INTO zipreg(h_No,h_Type,h_rType,h_nPerson,h_nRoom,h_nBed,h_nBath,h_nHome,h_hContent,h_Addr1,h_Addr2,h_Phone,h_Money,h_Startday,h_Endday,h_Loc,h_Id, h_Rule)
--VALUES(zipreg_SEQ.NEXTVAL,4,2,3,1,1,1,'���','�̺��� �ʿ��ϸ� �������� ������ּ���','���ֱ����� ���걸','��û�� 123-45','010-8787-8586','60000','2015/5/1','2015/5/6','37.537048,127.005533','lokij', '������ ������ּ���');
--
--INSERT INTO zipreg(h_No,h_Type,h_rType,h_nPerson,h_nRoom,h_nBed,h_nBath,h_nHome,h_hContent,h_Addr1,h_Addr2,h_Phone,h_Money,h_Startday,h_Endday,h_Loc,h_Id, h_Rule)
--VALUES(zipreg_SEQ.NEXTVAL,5,1,2,2,1,1,'����̳�','���� ����ǰ�� ì�ܿ��ž� �մϴ�','��󳲵� ����','������ ���ָ�','010-6664-5555','70000','2015/5/1','2015/5/3','37.537048,127.005533','hello9', '������ ������ּ���');

--�ü���� ������
DROP sequence fac_reg_seq;
create sequence fac_reg_seq
minvalue 0;

--�ü���� �� �Է�
--INSERT INTO fac_reg VALUES(fac_reg_seq.nextval, 1, 1);
--INSERT INTO fac_reg VALUES(fac_reg_seq.nextval, 1, 3);
--INSERT INTO fac_reg VALUES(fac_reg_seq.nextval, 1, 5);
--INSERT INTO fac_reg VALUES(fac_reg_seq.nextval, 1, 8);
--INSERT INTO fac_reg VALUES(fac_reg_seq.nextval, 1, 9);
--INSERT INTO fac_reg VALUES(fac_reg_seq.nextval, 2, 1 );
--INSERT INTO fac_reg VALUES(fac_reg_seq.nextval, 2, 4);
--INSERT INTO fac_reg VALUES(fac_reg_seq.nextval, 2, 6);
--INSERT INTO fac_reg VALUES(fac_reg_seq.nextval, 2, 10);
--INSERT INTO fac_reg VALUES(fac_reg_seq.nextval, 2, 11);

--������ ������
DROP sequence home_photo_seq;
create sequence home_photo_seq
MINVALUE 0;

--������ �� �Է�
--INSERT INTO home_photo VALUES( home_photo_seq.nextval,1,'��������','�����̸�');
--INSERT INTO home_photo VALUES( home_photo_seq.nextval,2,'��������','�����̸�');
--INSERT INTO home_photo VALUES( home_photo_seq.nextval,3,'��������','�����̸�');



CREATE TABLE Reserve(
	r_No NUMBER primary key , /* �����ȣ */
	r_Addr NUMBER , /* �������  foreign key */
	r_Member VARCHAR2(20) , /* ���̵� foreign key */
	r_Start DATE, /* ������� */
	r_End DATE, /* �������� */
	r_Money NUMBER , /* ����� */
	r_Person NUMBER /* �����ο� */
);
ALTER TABLE reserve
	ADD
		CONSTRAINT FK_zipreg_TO_reserve
		FOREIGN KEY (
			r_Addr
		)
		REFERENCES zipreg (
			h_No
		);

CREATE TABLE Review (
	re_No NUMBER primary key , /* �ı��ȣ */
	re_Id VARCHAR2(30) , /* �ۼ��� */
	re_hNo NUMBER references zipreg(h_no), /* ���ҹ�ȣ foreign key */
	re_Content VARCHAR2(2000) , /* ���� */
	re_Date DATE   /* �ۼ��� */
);


-- ȸ������

drop table member1;

CREATE TABLE member1(
   m_no NUMBER,
   id VARCHAR(20) CONSTRAINT mem1_m_no_pk PRIMARY KEY,
   pwd VARCHAR2(100),
   pwhint VARCHAR2(100),
   name VARCHAR2(34),
   --rrn VARCHAR2(50),
   sex VARCHAR(255) CONSTRAINT mem1_sex_ck CHECK(sex IN('����','����')),
   birth VARCHAR2(255),
   post VARCHAR2(255),
   addr1 VARCHAR2(255),
   addr2 VARCHAR2(255),
   tel VARCHAR2(255),
   email VARCHAR2(255),
   regdate VARCHAR2(255),
   admin CHAR(1) DEFAULT 'n',
   CONSTRAINT mem1_admin_ck CHECK(admin IN('y','n'))
);
--INSERT INTO member1 VALUES ('1','hong','1234','����','ȫ�浿','111111-1111111','����','2015-11-03','111-111','����Ư���� ��','��ȭ����','010-1111-1111','aaa@naver.com','2015-11-03','y');
--INSERT INTO member1 VALUES ('2','aaa','1234','����','ȫ�浿','111111-1111111','����','2015-11-03','111-111','����Ư���� ��','��ȭ����','010-1111-1111','aaa@naver.com','2015-11-03','n');

INSERT INTO member1 VALUES ('1','hong','1234','����','ȫ�浿','����','2015-11-03','42511','����Ư���� ������ ����� ��ȭ����','2�� C������','010-7998-4162','hong@naver.com','2015-11-03','y');
INSERT INTO member1 VALUES ('2','aaa','1234','����','���','����','2015-11-05','468541','����Ư���� ���굿 ��ȭ����','2�� C������','010-8565-5438','shim@naver.com','2015-11-03','n');
INSERT INTO member1 VALUES ('3','admin','1234','����','ȫ�浿','����','2015-11-03','42511','����Ư���� ������ ����� ��ȭ����','2�� C������','010-7998-4162','hong@naver.com','2015-11-03','y');
INSERT INTO member1 VALUES ('4','ha','1234','����','ȫ�浿','����','2015-11-03','42511','����Ư���� ������ ����� ��ȭ����','2�� C������','010-7998-4162','hong@naver.com','2015-11-03','y');
INSERT INTO member1 VALUES ('5','nan','1234','����','ȫ�浿','����','2015-11-03','42511','����Ư���� ������ ����� ��ȭ����','2�� C������','010-7998-4162','hong@naver.com','2015-11-03','y');
INSERT INTO member1 VALUES ('6','jung','1234','����','ȫ�浿','����','2015-11-03','42511','����Ư���� ������ ����� ��ȭ����','2�� C������','010-7998-4162','hong@naver.com','2015-11-03','y');
INSERT INTO member1 VALUES ('7','lee','1234','����','ȫ�浿','����','2015-11-03','42511','����Ư���� ������ ����� ��ȭ����','2�� C������','010-7998-4162','hong@naver.com','2015-11-03','y');
INSERT INTO member1 VALUES ('9','park','1234','����','ȫ�浿','����','2015-11-03','42511','����Ư���� ������ ����� ��ȭ����','2�� C������','010-7998-4162','hong@naver.com','2015-11-03','y');
INSERT INTO member1 VALUES ('9','sist','1234','����','ȫ�浿','����','2015-11-03','42511','����Ư���� ������ ����� ��ȭ����','2�� C������','010-7998-4162','hong@naver.com','2015-11-03','y');

DROP table re_board;
drop table p_board;
drop table b_word;
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
insert into b_Word (sa_no,sa_name) values(4,' '); --ȸ���鲨�� �������� ���Ӹ� ����

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


COMMIT;