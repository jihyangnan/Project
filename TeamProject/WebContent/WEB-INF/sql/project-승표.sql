drop table home_photo; 
DROP TABLE zipreg;
drop table room_category;
drop table fac_reg; 
drop table home_category;
drop table home_fac;
drop table fac_kind;

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
h_nHome VARCHAR2(40) NOT NULL, --�����̸�
h_hContent VARCHAR2(100) NOT NULL, --���Ҽ��λ���
h_Addr1 VARCHAR2(100) NOT NULL, --�ּ�
h_Addr2 VARCHAR2(100) NOT NULL, --���ּ�
h_Phone VARCHAR2(20) NOT NULL, --��󿬶�ó
h_Money NUMBER NOT NULL, --���
h_Startday DATE NOT NULL, -- ���������
h_Endday DATE NOT NULL, --���ึ����
h_Upday DATE DEFAULT SYSDATE, --�����
h_Loc VARCHAR2(30) NOT NULL, --���浵
h_Id VARCHAR2(20), --�����
h_Close CHAR(1) CHECK (h_Close IN('y','n')), --����ϷῩ��
h_Rule VARCHAR2(2000), --�����̿��Ģ
CONSTRAINT zipreg_no_pk PRIMARY KEY(h_no)
);

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
  c_hsName number REFERENCES home_fac(hs_No)
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

--���ҽü� ������
DROP sequence home_fac_seq;
create sequence home_fac_seq
MINVALUE 0;

--���ҽü� �� �Է�
INSERT INTO home_fac VALUES( home_fac_seq.nextval,1, '�ʼ�ǰ��', '����, ħ���Ʈ, ��, ȭ����');
INSERT INTO home_fac VALUES( home_fac_seq.nextval,1, 'TV', ' ');
INSERT INTO home_fac VALUES( home_fac_seq.nextval,1, '���̺� TV', ' ');
INSERT INTO home_fac VALUES( home_fac_seq.nextval,1, '������', ' ');
INSERT INTO home_fac VALUES( home_fac_seq.nextval,1, '����', '���� ���� �߾� ���� �Ǵ� ����');
INSERT INTO home_fac VALUES( home_fac_seq.nextval,1, '�ξ�', '�Խ�Ʈ�� �̿� ������ �ξ�');
INSERT INTO home_fac VALUES( home_fac_seq.nextval,1, '���ͳ�', ' ');
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

--�����ο� number,���Ҽ��λ���(100),�ּ�(100)��,��󿬶�ó(20),���浵(30)���� ����

DROP SEQUENCE zipreg_SEQ;
CREATE SEQUENCE zipreg_SEQ
MINVALUE 0;

INSERT INTO zipreg(h_No,h_Type,h_rType,h_nPerson,h_nRoom,h_nBed,h_nBath,h_nHome,h_hContent,h_Addr1,h_Addr2,h_Phone,h_Money,h_Startday,h_Endday,h_Loc,h_Id,h_Close) 
VALUES(zipreg_SEQ.NEXTVAL,11,555,4,2,2,2,'�ֿ�sist��','�����ο��� �Ѿ �ο��� �߰������ �����մϴ�','����� ������ ���ﵿ','������� 101�� 8','010-5454-3535','100000','2015/5/1','2015/5/3','37.537048,127.005533','noy11','y');

INSERT INTO zipreg(h_No,h_Type,h_rType,h_nPerson,h_nRoom,h_nBed,h_nBath,h_nHome,h_hContent,h_Addr1,h_Addr2,h_Phone,h_Money,h_Startday,h_Endday,h_Loc,h_Id,h_Close)
VALUES(zipreg_SEQ.NEXTVAL,22,444,2,1,1,1,'�����Ͽ콺','�ֿϵ����� ���Ա���','����� ������ ���׵�','408','010-4444-3333','80000','2015/5/1','2015/5/6','37.537048,127.005533','n21511','n');

INSERT INTO zipreg(h_No,h_Type,h_rType,h_nPerson,h_nRoom,h_nBed,h_nBath,h_nHome,h_hContent,h_Addr1,h_Addr2,h_Phone,h_Money,h_Startday,h_Endday,h_Loc,h_Id,h_Close)
VALUES(zipreg_SEQ.NEXTVAL,33,333,3,2,2,1,'���̳���','���ñ� ���� �ݵ�� �����ּ���','��õ������ ������ ���ﵿ','û���� ��ȣ���ƾ���Ʈ 101�� 1205ȣ','010-3333-6666','100000','2015/4/14','2015/5/3','37.537048,127.005533','mhuy52','n');

INSERT INTO zipreg(h_No,h_Type,h_rType,h_nPerson,h_nRoom,h_nBed,h_nBath,h_nHome,h_hContent,h_Addr1,h_Addr2,h_Phone,h_Money,h_Startday,h_Endday,h_Loc,h_Id,h_Close)
VALUES(zipreg_SEQ.NEXTVAL,44,222,3,1,1,1,'���','�̺��� �ʿ��ϸ� �������� ������ּ���','���ֱ����� ���걸','��û�� 123-45','010-8787-8586','60000','2015/10/1','2015/12/23','37.537048,127.005533','lokij','y');

INSERT INTO zipreg(h_No,h_Type,h_rType,h_nPerson,h_nRoom,h_nBed,h_nBath,h_nHome,h_hContent,h_Addr1,h_Addr2,h_Phone,h_Money,h_Startday,h_Endday,h_Loc,h_Id,h_Close)
VALUES(zipreg_SEQ.NEXTVAL,55,111,2,2,1,1,'����̳�','���� ����ǰ�� ì�ܿ��ž� �մϴ�','��󳲵� ����','������ ���ָ�','010-6664-5555','70000','2015/11/3','2015/12/1','37.537048,127.005533','hello9','y');

INSERT INTO zipreg(h_No,h_Type,h_rType,h_nPerson,h_nRoom,h_nBed,h_nBath,h_nHome,h_hContent,h_Addr1,h_Addr2,h_Phone,h_Money,h_Startday,h_Endday,h_Loc,h_Id,h_Close)
VALUES(zipreg_SEQ.NEXTVAL,11,555,4,2,2,2,'�ֿ�sist��','�����ο��� �Ѿ �ο��� �߰������ �����մϴ�','����� ������ ���ﵿ','������� 101�� 8','010-5454-3535','100000','2015/11/29','2015/12/3','37.537048,127.005533','noy11','y');

INSERT INTO zipreg(h_No,h_Type,h_rType,h_nPerson,h_nRoom,h_nBed,h_nBath,h_nHome,h_hContent,h_Addr1,h_Addr2,h_Phone,h_Money,h_Startday,h_Endday,h_Loc,h_Id,h_Close)
VALUES(zipreg_SEQ.NEXTVAL,22,444,2,1,1,1,'�����Ͽ콺','�ֿϵ����� ���Ա���','����� ������ ���׵�','408','010-4444-3333','80000','2015/11/26','2015/11/26','37.537048,127.005533','n21511','n');

INSERT INTO zipreg(h_No,h_Type,h_rType,h_nPerson,h_nRoom,h_nBed,h_nBath,h_nHome,h_hContent,h_Addr1,h_Addr2,h_Phone,h_Money,h_Startday,h_Endday,h_Loc,h_Id,h_Close)
VALUES(zipreg_SEQ.NEXTVAL,33,333,3,2,2,1,'���̳���','���ñ� ���� �ݵ�� �����ּ���','��õ������ ������ ���ﵿ','û���� ��ȣ���ƾ���Ʈ 101�� 1205ȣ','010-3333-6666','100000','2015/11/3','2015/12/1','37.537048,127.005533','mhuy52','n');

INSERT INTO zipreg(h_No,h_Type,h_rType,h_nPerson,h_nRoom,h_nBed,h_nBath,h_nHome,h_hContent,h_Addr1,h_Addr2,h_Phone,h_Money,h_Startday,h_Endday,h_Loc,h_Id,h_Close)
VALUES(zipreg_SEQ.NEXTVAL,44,222,3,1,1,1,'���','�̺��� �ʿ��ϸ� �������� ������ּ���','���ֱ����� ���걸','��û�� 123-45','010-8787-8586','60000','2015/5/1','2015/5/6','37.537048,127.005533','lokij','y');

INSERT INTO zipreg(h_No,h_Type,h_rType,h_nPerson,h_nRoom,h_nBed,h_nBath,h_nHome,h_hContent,h_Addr1,h_Addr2,h_Phone,h_Money,h_Startday,h_Endday,h_Loc,h_Id,h_Close)
VALUES(zipreg_SEQ.NEXTVAL,55,111,2,2,1,1,'����̳�','���� ����ǰ�� ì�ܿ��ž� �մϴ�','��󳲵� ����','������ ���ָ�','010-6664-5555','70000','2015/5/1','2015/5/3','37.537048,127.005533','hello9','n');

--�ü���� ������
DROP sequence fac_reg_seq;
create sequence fac_reg_seq
MINVALUE 0;

--�ü���� �� �Է�
INSERT INTO fac_reg VALUES(fac_reg_seq.nextval, 1, 1);
INSERT INTO fac_reg VALUES(fac_reg_seq.nextval, 1, 3);
INSERT INTO fac_reg VALUES(fac_reg_seq.nextval, 1, 5);
INSERT INTO fac_reg VALUES(fac_reg_seq.nextval, 1, 8);
INSERT INTO fac_reg VALUES(fac_reg_seq.nextval, 1, 9);
INSERT INTO fac_reg VALUES(fac_reg_seq.nextval, 2, 1 );
INSERT INTO fac_reg VALUES(fac_reg_seq.nextval, 2, 4);
INSERT INTO fac_reg VALUES(fac_reg_seq.nextval, 2, 6);
INSERT INTO fac_reg VALUES(fac_reg_seq.nextval, 2, 10);
INSERT INTO fac_reg VALUES(fac_reg_seq.nextval, 2, 11);

--������ ������
DROP sequence home_photo_seq;
create sequence home_photo_seq
MINVALUE 0;

--������ �� �Է�
INSERT INTO home_photo VALUES( home_photo_seq.nextval,1,'��������','�����̸�');
INSERT INTO home_photo VALUES( home_photo_seq.nextval,2,'��������','�����̸�');
INSERT INTO home_photo VALUES( home_photo_seq.nextval,3,'��������','�����̸�');



ROLLBACK;
COMMIT;

--��������
SELECT hst_No, hst_Name, hst_Content 
FROM room_category;

--�ü�����
SELECT si_No, si_Kind, si_Content
FROM fac_kind;

--���ҽü�
SELECT hs_No, hs_Kind, hs_Name, hs_Content
FROM home_fac;

--������
SELECT ht_No, ht_Name, ht_Content  
FROM home_category;


SELECT * FROM reply;

SELECT * FROM room_category;
SELECT * FROM fac_kind;
SELECT * FROM home_category;
SELECT * FROM fac_reg;
SELECT * FROM home_fac;
SELECT * FROM home_photo;

SELECT * FROM TAB;
purge recyclebin;


-- ȸ������

drop table member1;

CREATE TABLE member1(
   m_no NUMBER CONSTRAINT mem1_m_no_pk PRIMARY KEY,
   id VARCHAR(20),
   pwd VARCHAR2(100),
   pwhint VARCHAR2(100),
   name VARCHAR2(34),
   rrn VARCHAR2(50),
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
INSERT INTO member1 VALUES ('1','hong','1234','����','ȫ�浿','111111-1111111','����','2015-11-03','111-111','����Ư���� ��','��ȭ����','010-1111-1111','aaa@naver.com','2015-11-03','y');
INSERT INTO member1 VALUES ('2','aaa','1234','����','ȫ�浿','111111-1111111','����','2015-11-03','111-111','����Ư���� ��','��ȭ����','010-1111-1111','aaa@naver.com','2015-11-03','n');

COMMIT;
SELECT * FROM member1;
SELECT * FROM zipcode;