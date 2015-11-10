DROP TABLE reserve;
DROP TABLE review;
DROP TABLE fac_reg;
DROP TABLE home_photo;
DROP TABLE zipreg;
DROP TABLE home_category;
DROP TABLE room_category;
DROP TABLE home_fac;
DROP TABLE fac_kind;

--숙소유형
create table room_category 
( hst_No number primary key,
  hst_Name varchar2(20) not null,
  hst_Content varchar2(100) not null
);

--집유형
create table home_category 
( ht_No number primary key,
  ht_Name varchar2(50) not null,
  ht_Content varchar2(50) not null
);

--시설종류
create table fac_kind 
( si_No number primary key,
  si_Kind varchar2(50) not null,
  si_Content varchar2(50)
);

--숙소시설
create table home_fac 
( hs_No number primary key,
  hs_Kind number REFERENCES fac_kind(si_No),
  hs_Name varchar2(50) not null,
  hs_Content varchar2(200) not null
);

CREATE TABLE zipreg -- 집등록
(
h_No NUMBER, -- 집번호
h_Type NUMBER REFERENCES home_category(ht_No), --집유형번호
h_rType NUMBER REFERENCES room_category(hst_No), --숙소유형번호
h_nPerson NUMBER NOT NULL, --수용인원
h_nRoom NUMBER NOT NULL, --침실수
h_nBed NUMBER NOT NULL, --침대수
h_nBath NUMBER NOT NULL, --욕실수
h_nHome VARCHAR2(40) NOT NULL, --숙소이름
h_hContent VARCHAR2(100) NOT NULL, --숙소세부사항
h_Addr1 VARCHAR2(100) NOT NULL, --주소
h_Addr2 VARCHAR2(100) NOT NULL, --상세주소
h_Phone VARCHAR2(20) NOT NULL, --비상연락처
h_Money NUMBER NOT NULL, --요금
h_Startday DATE NOT NULL, -- 예약시작일
h_Endday DATE NOT NULL, --예약마감일
h_Upday DATE DEFAULT SYSDATE, --등록일
h_Loc VARCHAR2(100) NOT NULL, --위경도
h_Id VARCHAR2(20), --등록자
h_Close CHAR(1) DEFAULT 'n' CHECK (h_Close IN('y','n')), --예약완료여부
--h_Close CHAR(1) CHECK (h_Close IN('y','n')), --예약완료여부
h_Rule VARCHAR2(2000), --숙소이용규칙
CONSTRAINT zipreg_no_pk PRIMARY KEY(h_no)
);


-- 집사진
create table home_photo 
( p_No number primary key,
  p_hno number REFERENCES zipreg(h_No),
  p_File varchar2(100) not null,
  P_Name varchar2(100) not null
);

--시설 등록
create table fac_reg 
( c_No number primary key,
  c_hNo number REFERENCES zipreg(h_No),
  c_hsNo number REFERENCES home_fac(hs_No)
);

--숙소유형 값 입력
INSERT INTO room_category VALUES( 1, '집전체', '집 전체를 사용합니다');
INSERT INTO room_category VALUES( 2, '개인실', '1인실을 사용합니다');
INSERT INTO room_category VALUES( 3, '다인실', '2인실이상을 사용합니다');

--시설 종류 값 입력
INSERT INTO fac_kind VALUES( 1, '기본 편의시설', '');
INSERT INTO fac_kind VALUES( 2, '추가적인 편의시설', '');
INSERT INTO fac_kind VALUES( 3, '특별 시설', '');
INSERT INTO fac_kind VALUES( 4, '안전 체크리스트', '');

--집유형 시퀀스
DROP sequence home_category_seq;
create sequence home_category_seq
minvalue 0;

--집유형 값 입력
INSERT INTO home_category VALUES( home_category_seq.nextval, '아파트', '아파트');
INSERT INTO home_category VALUES( home_category_seq.nextval, '단독주택', '단독주택');
INSERT INTO home_category VALUES( home_category_seq.nextval, '게스트하우스', '게스트하우스');
INSERT INTO home_category VALUES( home_category_seq.nextval, '통나무집', '통나무집');
INSERT INTO home_category VALUES( home_category_seq.nextval, '별장/타운하우스', '별장/타운하우스');
INSERT INTO home_category VALUES( home_category_seq.nextval, '기숙사', '기숙사');
INSERT INTO home_category VALUES( home_category_seq.nextval, '캠핑카', '캠핑카');
INSERT INTO home_category VALUES( home_category_seq.nextval, '텐트', '텐트');
INSERT INTO home_category VALUES( home_category_seq.nextval, '오두막', '오두막');
INSERT INTO home_category VALUES( home_category_seq.nextval, '기타', '기타');

--숙소시설 시퀀스
DROP sequence home_fac_seq;
create sequence home_fac_seq
minvalue 0;

--숙소시설 값 입력
INSERT INTO home_fac VALUES( home_fac_seq.nextval,1, 'TV', ' ');
INSERT INTO home_fac VALUES( home_fac_seq.nextval,1, '인터넷', ' ');
INSERT INTO home_fac VALUES( home_fac_seq.nextval,1, '난방', '숙소 안의 중앙 난방 또는 히터');
INSERT INTO home_fac VALUES( home_fac_seq.nextval,1, '필수품목', '수건, 침대시트, 비누, 화장지');
INSERT INTO home_fac VALUES( home_fac_seq.nextval,1, '케이블 TV', ' ');
INSERT INTO home_fac VALUES( home_fac_seq.nextval,1, '에어콘', ' ');
INSERT INTO home_fac VALUES( home_fac_seq.nextval,1, '부엌', '게스트가 이용 가능한 부엌');
INSERT INTO home_fac VALUES( home_fac_seq.nextval,1, '무선 인터넷', '숙소 내 인터넷 이용');
INSERT INTO home_fac VALUES( home_fac_seq.nextval,2, '욕조', ' ');
INSERT INTO home_fac VALUES( home_fac_seq.nextval,2, '세탁기', '빌딩 내 유/무료');
INSERT INTO home_fac VALUES( home_fac_seq.nextval,2, '수영장', '전용 또는 공용');
INSERT INTO home_fac VALUES( home_fac_seq.nextval,2, '건조기', '빌딩 내 유/무료');
INSERT INTO home_fac VALUES( home_fac_seq.nextval,2, '아침식사', '아침식사 제공');
INSERT INTO home_fac VALUES( home_fac_seq.nextval,2, '무료주차포함', '무료, 건물 안이나 주변');
INSERT INTO home_fac VALUES( home_fac_seq.nextval,2, '무료 헬스장', ' ');
INSERT INTO home_fac VALUES( home_fac_seq.nextval,2, '엘리베이터', ' ');
INSERT INTO home_fac VALUES( home_fac_seq.nextval,2, '실내 벽난로', ' ');
INSERT INTO home_fac VALUES( home_fac_seq.nextval,2, '초인종/인터폰', ' ');
INSERT INTO home_fac VALUES( home_fac_seq.nextval,2, '도어맨', ' ');
INSERT INTO home_fac VALUES( home_fac_seq.nextval,2, '샴푸', ' ');
INSERT INTO home_fac VALUES( home_fac_seq.nextval,3, '가족/어린이 환영', ' ');
INSERT INTO home_fac VALUES( home_fac_seq.nextval,3, '흡연가능', ' ');
INSERT INTO home_fac VALUES( home_fac_seq.nextval,3, '이벤트/행사 가능', '25명 이상의 그룹을 수용할 수 있는 숙소입니다.');
INSERT INTO home_fac VALUES( home_fac_seq.nextval,3, '애완동물 입실 가능', ' ');
INSERT INTO home_fac VALUES( home_fac_seq.nextval,3, '애완/반려동물 키우고 있음', ' ');
INSERT INTO home_fac VALUES( home_fac_seq.nextval,3, '휠체어 사용가능', '휠체어 접근이 용이한 숙소입니다. 기타 개인적인 필요사항은 게스트와 호스트가 서로 협의해야 합니다.');
INSERT INTO home_fac VALUES( home_fac_seq.nextval,4, '화재 감지기', ' ');
INSERT INTO home_fac VALUES( home_fac_seq.nextval,4, '소화기', ' ');
INSERT INTO home_fac VALUES( home_fac_seq.nextval,4, '일산화탄소 탐지기', ' ');
INSERT INTO home_fac VALUES( home_fac_seq.nextval,4, '구급 상자', ' ');
INSERT INTO home_fac VALUES( home_fac_seq.nextval,4, '침실문 잠금장치', ' ');


DROP SEQUENCE zipreg_SEQ;
CREATE SEQUENCE zipreg_SEQ;

--INSERT INTO zipreg(h_No,h_Type,h_rType,h_nPerson,h_nRoom,h_nBed,h_nBath,h_nHome,h_hContent,h_Addr1,h_Addr2,h_Phone,h_Money,h_Startday,h_Endday,h_Loc,h_Id, h_Rule) 
--VALUES(zipreg_SEQ.NEXTVAL,1,1,4,2,2,2,'쌍용sist집','수용인원을 넘어간 인원은 추가요금을 내야합니다','서울시 강남구 역삼동','테헤란로 101길 8','010-5454-3535','100000','2015/5/1','2015/5/3','37.537048,127.005533','noy11', '깨끗이 사용해주세요');
--
--INSERT INTO zipreg(h_No,h_Type,h_rType,h_nPerson,h_nRoom,h_nBed,h_nBath,h_nHome,h_hContent,h_Addr1,h_Addr2,h_Phone,h_Money,h_Startday,h_Endday,h_Loc,h_Id, h_Rule)
--VALUES(zipreg_SEQ.NEXTVAL,2,1,2,1,1,1,'해피하우스','애완동물은 출입금지','서울시 강서구 공항동','408','010-4444-3333','80000','2015/5/1','2015/5/6','37.537048,127.005533','n21511', '깨끗이 사용해주세요');
--
--INSERT INTO zipreg(h_No,h_Type,h_rType,h_nPerson,h_nRoom,h_nBed,h_nBath,h_nHome,h_hContent,h_Addr1,h_Addr2,h_Phone,h_Money,h_Startday,h_Endday,h_Loc,h_Id, h_Rule)
--VALUES(zipreg_SEQ.NEXTVAL,3,3,3,2,2,1,'순이네집','오시기 전에 반드시 연락주세요','인천광역시 연수구 역삼동','청량동 금호동아아파트 101동 1205호','010-3333-6666','100000','2015/4/14','2015/5/3','37.537048,127.005533','mhuy52', '깨끗이 사용해주세요');
--
--INSERT INTO zipreg(h_No,h_Type,h_rType,h_nPerson,h_nRoom,h_nBed,h_nBath,h_nHome,h_hContent,h_Addr1,h_Addr2,h_Phone,h_Money,h_Startday,h_Endday,h_Loc,h_Id, h_Rule)
--VALUES(zipreg_SEQ.NEXTVAL,4,2,3,1,1,1,'헬로','이불이 필요하면 언제든지 얘기해주세요','광주광역시 광산구','안청동 123-45','010-8787-8586','60000','2015/10/1','2015/12/23','37.537048,127.005533','lokij', '깨끗이 사용해주세요');
--
--INSERT INTO zipreg(h_No,h_Type,h_rType,h_nPerson,h_nRoom,h_nBed,h_nBath,h_nHome,h_hContent,h_Addr1,h_Addr2,h_Phone,h_Money,h_Startday,h_Endday,h_Loc,h_Id, h_Rule)
--VALUES(zipreg_SEQ.NEXTVAL,5,1,2,2,1,1,'재민이네','개인 위생품은 챙겨오셔야 합니다','경상남도 양산시','웅상읍 소주리','010-6664-5555','70000','2015/11/3','2015/12/1','37.537048,127.005533','hello9', '깨끗이 사용해주세요');
--
--INSERT INTO zipreg(h_No,h_Type,h_rType,h_nPerson,h_nRoom,h_nBed,h_nBath,h_nHome,h_hContent,h_Addr1,h_Addr2,h_Phone,h_Money,h_Startday,h_Endday,h_Loc,h_Id, h_Rule)
--VALUES(zipreg_SEQ.NEXTVAL,1,3,4,2,2,2,'쌍용sist집','수용인원을 넘어간 인원은 추가요금을 내야합니다','서울시 강남구 역삼동','테헤란로 101길 8','010-5454-3535','100000','2015/11/29','2015/12/3','37.537048,127.005533','noy11', '깨끗이 사용해주세요');
--
--INSERT INTO zipreg(h_No,h_Type,h_rType,h_nPerson,h_nRoom,h_nBed,h_nBath,h_nHome,h_hContent,h_Addr1,h_Addr2,h_Phone,h_Money,h_Startday,h_Endday,h_Loc,h_Id, h_Rule)
--VALUES(zipreg_SEQ.NEXTVAL,2,1,2,1,1,1,'해피하우스','애완동물은 출입금지','서울시 강서구 공항동','408','010-4444-3333','80000','2015/11/26','2015/11/26','37.537048,127.005533','n21511', '깨끗이 사용해주세요');
--
--INSERT INTO zipreg(h_No,h_Type,h_rType,h_nPerson,h_nRoom,h_nBed,h_nBath,h_nHome,h_hContent,h_Addr1,h_Addr2,h_Phone,h_Money,h_Startday,h_Endday,h_Loc,h_Id, h_Rule)
--VALUES(zipreg_SEQ.NEXTVAL,3,3,3,2,2,1,'순이네집','오시기 전에 반드시 연락주세요','인천광역시 연수구 역삼동','청량동 금호동아아파트 101동 1205호','010-3333-6666','100000','2015/11/3','2015/12/1','37.537048,127.005533','mhuy52', '깨끗이 사용해주세요');
--
--INSERT INTO zipreg(h_No,h_Type,h_rType,h_nPerson,h_nRoom,h_nBed,h_nBath,h_nHome,h_hContent,h_Addr1,h_Addr2,h_Phone,h_Money,h_Startday,h_Endday,h_Loc,h_Id, h_Rule)
--VALUES(zipreg_SEQ.NEXTVAL,4,2,3,1,1,1,'헬로','이불이 필요하면 언제든지 얘기해주세요','광주광역시 광산구','안청동 123-45','010-8787-8586','60000','2015/5/1','2015/5/6','37.537048,127.005533','lokij', '깨끗이 사용해주세요');
--
--INSERT INTO zipreg(h_No,h_Type,h_rType,h_nPerson,h_nRoom,h_nBed,h_nBath,h_nHome,h_hContent,h_Addr1,h_Addr2,h_Phone,h_Money,h_Startday,h_Endday,h_Loc,h_Id, h_Rule)
--VALUES(zipreg_SEQ.NEXTVAL,5,1,2,2,1,1,'재민이네','개인 위생품은 챙겨오셔야 합니다','경상남도 양산시','웅상읍 소주리','010-6664-5555','70000','2015/5/1','2015/5/3','37.537048,127.005533','hello9', '깨끗이 사용해주세요');

--시설등록 시퀀스
DROP sequence fac_reg_seq;
create sequence fac_reg_seq
minvalue 0;

--시설등록 값 입력
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

--집사진 시퀀스
DROP sequence home_photo_seq;
create sequence home_photo_seq
MINVALUE 0;

--집사진 값 입력
--INSERT INTO home_photo VALUES( home_photo_seq.nextval,1,'사진파일','사진이름');
--INSERT INTO home_photo VALUES( home_photo_seq.nextval,2,'사진파일','사진이름');
--INSERT INTO home_photo VALUES( home_photo_seq.nextval,3,'사진파일','사진이름');



CREATE TABLE Reserve(
	r_No NUMBER primary key , /* 예약번호 */
	r_Addr NUMBER , /* 예약장소  foreign key */
	r_Member VARCHAR2(20) , /* 아이디 foreign key */
	r_Start DATE, /* 예약시작 */
	r_End DATE, /* 예약종료 */
	r_Money NUMBER , /* 예약비 */
	r_Person NUMBER /* 예약인원 */
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
	re_No NUMBER primary key , /* 후기번호 */
	re_Id VARCHAR2(30) , /* 작성자 */
	re_hNo NUMBER references zipreg(h_no), /* 숙소번호 foreign key */
	re_Content VARCHAR2(2000) , /* 내용 */
	re_Date DATE   /* 작성일 */
);


-- 회원가입

drop table member1;

CREATE TABLE member1(
   m_no NUMBER,
   id VARCHAR(20) CONSTRAINT mem1_m_no_pk PRIMARY KEY,
   pwd VARCHAR2(100),
   pwhint VARCHAR2(100),
   name VARCHAR2(34),
   --rrn VARCHAR2(50),
   sex VARCHAR(255) CONSTRAINT mem1_sex_ck CHECK(sex IN('남자','여자')),
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
--INSERT INTO member1 VALUES ('1','hong','1234','서울','홍길동','111111-1111111','남자','2015-11-03','111-111','서울특별시 뷁','미화빌딩','010-1111-1111','aaa@naver.com','2015-11-03','y');
--INSERT INTO member1 VALUES ('2','aaa','1234','서울','홍길동','111111-1111111','남자','2015-11-03','111-111','서울특별시 뷁','미화빌딩','010-1111-1111','aaa@naver.com','2015-11-03','n');

INSERT INTO member1 VALUES ('1','hong','1234','서울','홍길동','남자','2015-11-03','42511','서울특별시 마포구 백범로 미화빌딩','2층 C강의장','010-7998-4162','hong@naver.com','2015-11-03','y');
INSERT INTO member1 VALUES ('2','aaa','1234','서울','홍길동','남자','2015-11-03','468541','서울특별시 노고산동 미화빌딩','2층 C강의장','010-8565-5438','shim@naver.com','2015-11-03','n');



COMMIT;