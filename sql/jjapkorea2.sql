DROP TABLE "RESUME_WRITE";
DROP TABLE "SCRAP";
DROP TABLE "PERSON";
DROP TABLE "INFO";
DROP TABLE "BUSINESS";
DROP TABLE "BUSINESSFORM";
DROP TABLE "COMMENT";
DROP TABLE "BRD_LIKE";
DROP TABLE "BOARD";
DROP TABLE "CHAT_MESSAGE";
DROP TABLE "CHAT";
DROP TABLE "API_SNS_LOGIN";
DROP TABLE "RFField";
DROP TABLE "RTField";
DROP TABLE "RSField";
DROP TABLE "RFIELD";
DROP TABLE "MEMBER";

CREATE TABLE "MEMBER" (
	"MID"	VARCHAR2(20)		NOT NULL,
	"MPW"	VARCHAR2(20)		NOT NULL,
	"MTYPE"	NUMBER		NOT NULL,
	"NAVERID"	VARCHAR2(50)		NULL,
	"GOOGLEID"	VARCHAR2(50)		NULL,
	"KAKAOID"	VARCHAR2(50)		NULL
);

COMMENT ON COLUMN "MEMBER"."MPW" IS '소문자, 대문자, 특수문자 포함 8-16자';

COMMENT ON COLUMN "MEMBER"."MTYPE" IS '1 or 2';

COMMENT ON COLUMN "MEMBER"."NAVERID" IS '네이버 아이디로 회원가입시';

COMMENT ON COLUMN "MEMBER"."GOOGLEID" IS '구글아이디로 회원가입시';

COMMENT ON COLUMN "MEMBER"."KAKAOID" IS '카카오아이디로 회원가입시';

CREATE TABLE "PERSON" (
	"MID"	VARCHAR2(20)		NOT NULL,
	"PEMAIL"	VARCHAR2(150)		NOT NULL,
	"PPHONE"	VARCHAR2(20)		NOT NULL,
	"PNAME"	VARCHAR2(50)		NOT NULL
);

COMMENT ON COLUMN "PERSON"."PEMAIL" IS 'id@domain';

COMMENT ON COLUMN "PERSON"."PPHONE" IS '000-0000-0000';

CREATE TABLE "BUSINESS" (
	"MID"	VARCHAR2(20)		NOT NULL,
	"BFORM"	NUMBER		NULL,
	"BRNO"	VARCHAR2(20)		NULL,
	"BIZNAME"	VARCHAR2(50)		NULL,
	"BADDRESS"	VARCHAR2(300)		NULL,
	"BNAME"	VARCHAR2(50)		NULL,
	"BTEL"	VARCHAR2(20)		NULL,
	"BEMAIL"	VARCHAR2(150)		NULL,
	"BIND"	VARCHAR2(100)		NULL,
	"BEMP"	NUMBER		NULL,
	"BESTD"	DATE		NULL,
	"BCAP"	VARCHAR2(20)		NULL,
	"BSALES"	VARCHAR2(20)		NULL,
	"BREP_NAME"	VARCHAR2(50)		NULL,
	"BGRAD_SALARY"	VARCHAR2(20)		NULL,
	"BIND_DETAIL"	VARCHAR2(100)		NULL,
	"BMINS"	VARCHAR2(100)		NULL,
	"BHPAGE"	VARCHAR2(100)		NULL
);

COMMENT ON COLUMN "BUSINESS"."MID" IS 'ID';

COMMENT ON COLUMN "BUSINESS"."BRNO" IS '000-00-00000';

COMMENT ON COLUMN "BUSINESS"."BTEL" IS '000-0000-0000';

COMMENT ON COLUMN "BUSINESS"."BEMAIL" IS 'id@domain';

CREATE TABLE "BUSINESSFORM" (
	"BFORM"	NUMBER		NOT NULL,
	"BFORM_NAME"	VARCHAR2(50)		NOT NULL
);

CREATE TABLE "SCRAP" (
	"JID"	VARCHAR2(255)		NOT NULL,
	"MID"	VARCHAR2(20)		NOT NULL
);

CREATE TABLE "BOARD" (
	"BNO"	NUMBER		NOT NULL,
	"BTITLE"	VARCHAR2(300)		NOT NULL,
	"BCONTENT"	VARCHAR2(3000)		NULL,
	"BDATE"	TIMESTAMP	DEFAULT SYSTIMESTAMP	NOT NULL,
	"MID"	VARCHAR2(20)		NOT NULL,
	"VIEW_COUNT"	NUMBER	DEFAULT 0	NOT NULL
);

COMMENT ON COLUMN "BOARD"."BNO" IS 'SEQUENCE사용';

COMMENT ON COLUMN "BOARD"."BTITLE" IS '제목';

COMMENT ON COLUMN "BOARD"."BCONTENT" IS '게시글내용';

COMMENT ON COLUMN "BOARD"."BDATE" IS '게시글작성시간';

COMMENT ON COLUMN "BOARD"."MID" IS '작성자아이디';

COMMENT ON COLUMN "BOARD"."VIEW_COUNT" IS '조회수';

CREATE TABLE "COMMENT" (
	"CNO"	NUMBER		NOT NULL,
	"BNO"	NUMBER		NOT NULL,
	"CCONTENT"	VARCHAR2(600)		NOT NULL,
	"CDATE"	TIMESTAMP	DEFAULT SYSTIMESTAMP	NOT NULL,
	"REF"	NUMBER		NULL,
	"REF_LEVEL"	NUMBER		NOT NULL,
	"REF_STEP"	NUMBER		NOT NULL,
	"MID"	VARCHAR2(20)		NOT NULL
);

COMMENT ON COLUMN "COMMENT"."CNO" IS 'SEQUENCE사용';

COMMENT ON COLUMN "COMMENT"."BNO" IS '원본글 번호, SEQUENCE사용';

COMMENT ON COLUMN "COMMENT"."CCONTENT" IS '댓글내용';

COMMENT ON COLUMN "COMMENT"."CDATE" IS '댓글작성일, 시간';

COMMENT ON COLUMN "COMMENT"."REF" IS '댓글의 그룹, BNO=REF : 원본글, BNO!=REF: 답글';

COMMENT ON COLUMN "COMMENT"."REF_LEVEL" IS '0: 원본글,  1: 답글,  2:답답글';

COMMENT ON COLUMN "COMMENT"."REF_STEP" IS '0: 원본글,   1~N: 원본글을 기준으로  답글들의 순서';

COMMENT ON COLUMN "COMMENT"."MID" IS '아이디';

CREATE TABLE "BRD_LIKE" (
	"LIKE_NO"	NUMBER		NOT NULL,
	"BNO"	NUMBER		NOT NULL,
	"MID"	VARCHAR2(20)		NOT NULL
);

COMMENT ON COLUMN "BRD_LIKE"."BNO" IS 'SEQUENCE사용';

COMMENT ON COLUMN "BRD_LIKE"."MID" IS '사용자 아이디';

CREATE TABLE "CHAT" (
	"ROOM_ID"	VARCHAR2(200)		NOT NULL,
	"WRITER"	VARCHAR2(20)		NOT NULL,
	"ROOM_NAME"	VARCHAR2(30)		NOT NULL
);

CREATE TABLE "RESUME_WRITE" (
	"MID"	VARCHAR2(20)		NOT NULL,
	"PEMAIL"	VARCHAR2(150)		NULL,
	"PPHONE"	VARCHAR2(20)		NULL,
	"PHPHONE"	VARCHAR(255)		NULL,
	"PNAME"	VARCHAR2(50)		NULL,
	"PGENDER"	VARCHAR(255)		NULL,
	"PBIRTH"	VARCHAR(255)		NULL,
	"PADRESS"	VARCHAR(255)		NULL
);

COMMENT ON COLUMN "RESUME_WRITE"."PEMAIL" IS 'id@domain';

COMMENT ON COLUMN "RESUME_WRITE"."PPHONE" IS '000-0000-0000';

COMMENT ON COLUMN "RESUME_WRITE"."PHPHONE" IS '00-0000-0000';

COMMENT ON COLUMN "RESUME_WRITE"."PGENDER" IS '0:NULL 1: 남자  2 : 여자';

COMMENT ON COLUMN "RESUME_WRITE"."PBIRTH" IS '0000.00.00';

COMMENT ON COLUMN "RESUME_WRITE"."PADRESS" IS '서울 강남구 상도동';

CREATE TABLE "INFO" (
	"JID"	VARCHAR2(255)		NOT NULL,
	"MID"	VARCHAR2(20)		NOT NULL,
	"RECRUIT_FIELD"	VARCHAR2(20)		NOT NULL,
	"USER_EDUCATION"	VARCHAR(50)		NULL,
	"SALARY"	VARCHAR(50)		NULL,
	"MIN_SALARY"	VARCHAR(50)		NULL,
	"MAX_SALARY"	VARCHAR(50)		NULL,
	"REGIST_DATE"	VARCHAR(20)		NULL,
	"CLOSE_DATE"	VARCHAR(20)		NULL,
	"RE_TITLE"	VARCHAR(255)		NULL,
	"CAREER"	VARCHAR(50)		NULL,
	"WORK_TYPE"	VARCHAR(50)		NULL,
	"EMP_TYPE_CODE"	VARCHAR(20)		NULL,
	"TODAY"	NUMBER		NULL,
	"DDAY"	NUMBER		NULL
);

COMMENT ON COLUMN "INFO"."MID" IS 'ID';

COMMENT ON COLUMN "INFO"."RECRUIT_FIELD" IS '채용분야 세분류 코드';

CREATE TABLE "RFField" (
	"JOBSCD"	VARCHAR2(20)		NOT NULL,
	"JOBSCAT"	VARCHAR2(100)		NOT NULL
);

COMMENT ON COLUMN "RFField"."JOBSCD" IS '채용분야 대분류 코드';

COMMENT ON COLUMN "RFField"."JOBSCAT" IS '채용분야 대분류';

CREATE TABLE "RTField" (
	"JOBSSCD"	VARCHAR2(50)		NOT NULL,
	"JOBSSCAT"	VARCHAR2(100)		NOT NULL
);

COMMENT ON COLUMN "RTField"."JOBSSCD" IS '채용분야 소분류 코드';

COMMENT ON COLUMN "RTField"."JOBSSCAT" IS '채용분야 소분류';

CREATE TABLE "RSField" (
	"JOBSMCD"	VARCHAR2(20)		NOT NULL,
	"JOBSMCAT"	VARCHAR2(100)		NOT NULL
);

COMMENT ON COLUMN "RSField"."JOBSMCD" IS '채용분야 중분류 코드';

COMMENT ON COLUMN "RSField"."JOBSMCAT" IS '채용분야 중분류';

CREATE TABLE "RFIELD" (
	"RECRUIT_FIELD"	VARCHAR2(20)		NOT NULL,
	"FIELD_TITLE"	VARCHAR2(100)		NOT NULL
);

COMMENT ON COLUMN "RFIELD"."RECRUIT_FIELD" IS '채용분야 세분류 코드';

COMMENT ON COLUMN "RFIELD"."FIELD_TITLE" IS '채용분야 세분류';

CREATE TABLE "CHAT_MESSAGE" (
	"ROOM_ID"	VARCHAR2(200)		NOT NULL,
	"WRITER"	VARCHAR2(20)		NOT NULL,
	"MESSAGE"	VARCHAR2(1000)		NULL,
	"TIMESTAMP"	TIMESTAMP		NULL
);

ALTER TABLE "MEMBER" ADD CONSTRAINT "PK_MEMBER" PRIMARY KEY (
	"MID"
);

ALTER TABLE "PERSON" ADD CONSTRAINT "PK_PERSON" PRIMARY KEY (
	"MID"
);

ALTER TABLE "BUSINESS" ADD CONSTRAINT "PK_BUSINESS" PRIMARY KEY (
	"MID"
);

ALTER TABLE "BUSINESSFORM" ADD CONSTRAINT "PK_BUSINESSFORM" PRIMARY KEY (
	"BFORM"
);

ALTER TABLE "SCRAP" ADD CONSTRAINT "PK_SCRAP" PRIMARY KEY (
	"JID",
	"MID"
);

ALTER TABLE "BOARD" ADD CONSTRAINT "PK_BOARD" PRIMARY KEY (
	"BNO"
);

ALTER TABLE "COMMENT" ADD CONSTRAINT "PK_COMMENT" PRIMARY KEY (
	"CNO",
	"BNO"
);

ALTER TABLE "BRD_LIKE" ADD CONSTRAINT "PK_BRD_LIKE" PRIMARY KEY (
	"LIKE_NO",
	"BNO",
	"MID"
);

ALTER TABLE "CHAT" ADD CONSTRAINT "PK_CHAT" PRIMARY KEY (
	"ROOM_ID",
	"WRITER"
);

ALTER TABLE "RESUME_WRITE" ADD CONSTRAINT "PK_RESUME_WRITE" PRIMARY KEY (
	"MID"
);

ALTER TABLE "INFO" ADD CONSTRAINT "PK_INFO" PRIMARY KEY (
	"JID"
);

ALTER TABLE "RFField" ADD CONSTRAINT "PK_RFFIELD" PRIMARY KEY (
	"JOBSCD"
);

ALTER TABLE "RTField" ADD CONSTRAINT "PK_RTFIELD" PRIMARY KEY (
	"JOBSSCD"
);

ALTER TABLE "RSField" ADD CONSTRAINT "PK_RSFIELD" PRIMARY KEY (
	"JOBSMCD"
);

ALTER TABLE "RFIELD" ADD CONSTRAINT "PK_RFIELD" PRIMARY KEY (
	"RECRUIT_FIELD"
);

ALTER TABLE "PERSON" ADD CONSTRAINT "FK_MEMBER_TO_PERSON_1" FOREIGN KEY (
	"MID"
)
REFERENCES "MEMBER" (
	"MID"
);

ALTER TABLE "BUSINESS" ADD CONSTRAINT "FK_MEMBER_TO_BUSINESS_1" FOREIGN KEY (
	"MID"
)
REFERENCES "MEMBER" (
	"MID"
);

ALTER TABLE "BUSINESS" ADD CONSTRAINT "FK_BUSINESSFORM_TO_BUSINESS_1" FOREIGN KEY (
	"BFORM"
)
REFERENCES "BUSINESSFORM" (
	"BFORM"
);

ALTER TABLE "SCRAP" ADD CONSTRAINT "FK_INFO_TO_SCRAP_1" FOREIGN KEY (
	"JID"
)
REFERENCES "INFO" (
	"JID"
);

ALTER TABLE "SCRAP" ADD CONSTRAINT "FK_PERSON_TO_SCRAP_1" FOREIGN KEY (
	"MID"
)
REFERENCES "PERSON" (
	"MID"
);

ALTER TABLE "BOARD" ADD CONSTRAINT "FK_MEMBER_TO_BOARD_1" FOREIGN KEY (
	"MID"
)
REFERENCES "MEMBER" (
	"MID"
);

ALTER TABLE "COMMENT" ADD CONSTRAINT "FK_BOARD_TO_COMMENT_1" FOREIGN KEY (
	"BNO"
)
REFERENCES "BOARD" (
	"BNO"
);

ALTER TABLE "COMMENT" ADD CONSTRAINT "FK_MEMBER_TO_COMMENT_1" FOREIGN KEY (
	"MID"
)
REFERENCES "MEMBER" (
	"MID"
);

ALTER TABLE "BRD_LIKE" ADD CONSTRAINT "FK_BOARD_TO_BRD_LIKE_1" FOREIGN KEY (
	"BNO"
)
REFERENCES "BOARD" (
	"BNO"
);

ALTER TABLE "BRD_LIKE" ADD CONSTRAINT "FK_MEMBER_TO_BRD_LIKE_1" FOREIGN KEY (
	"MID"
)
REFERENCES "MEMBER" (
	"MID"
);

ALTER TABLE "CHAT" ADD CONSTRAINT "FK_MEMBER_TO_CHAT_1" FOREIGN KEY (
	"WRITER"
)
REFERENCES "MEMBER" (
	"MID"
);

ALTER TABLE "RESUME_WRITE" ADD CONSTRAINT "FK_PERSON_TO_RESUME_WRITE_1" FOREIGN KEY (
	"MID"
)
REFERENCES "PERSON" (
	"MID"
);

ALTER TABLE "INFO" ADD CONSTRAINT "FK_BUSINESS_TO_INFO_1" FOREIGN KEY (
	"MID"
)
REFERENCES "BUSINESS" (
	"MID"
);

ALTER TABLE "INFO" ADD CONSTRAINT "FK_RFIELD_TO_INFO_1" FOREIGN KEY (
	"RECRUIT_FIELD"
)
REFERENCES "RFIELD" (
	"RECRUIT_FIELD"
);

ALTER TABLE "CHAT_MESSAGE" ADD CONSTRAINT "FK_CHAT_TO_CHAT_MESSAGE_1" FOREIGN KEY (
    "ROOM_ID",
    "WRITER"
) REFERENCES "CHAT" ("ROOM_ID", "WRITER");

INSERT INTO MEMBER (mid,mpw,mtype) VALUES ('admin', 'admin', 1 );
COMMIT;