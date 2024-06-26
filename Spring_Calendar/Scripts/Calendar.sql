
-- [CALENDAR PROJECT] 캘린더 테이블 생성
CREATE TABLE CALENDAR (
	CAL_NO NUMBER PRIMARY KEY NOT NULL,
	CAL_CATEGORY VARCHAR2(50),
	CAL_TITLE VARCHAR2(200),
	CAL_CONTENT VARCHAR2(400),
	CAL_WRITER VARCHAR2(50),
	CAL_START DATE,
	CAL_END DATE,
	CAL_REGDATE DATE DEFAULT CURRENT_DATE,
	CAL_MODIFY DATE, 
	CAL_DELFLAG CHAR(1) DEFAULT 'N',
	CAL_BIGO VARCHAR2(100)
);


-- 일정 등록
INSERT INTO CALENDAR (CAL_NO, CAL_CATEGORY, CAL_TITLE, CAL_CONTENT, CAL_WRITER, CAL_START, CAL_END, CAL_DELFLAG)
SELECT NVL(MAX(CAL_NO) + 1, 0) AS CAL_NO, '공지사항', '테스트', '테스트중입니다', '관리자', '2024-06-14', '2024-06-14', 'N'
FROM CALENDAR;

-- 일정조회 (전체)
SELECT CAL_NO, CAL_CATEGORY, CAL_TITLE, CAL_CONTENT, CAL_WRITER, CAL_START, CAL_END, CAL_REGDATE, CAL_MODIFY, CAL_DELFLAG, CAL_BIGO
	FROM CALENDAR
	WHERE CAL_DELFLAG ='N';

-- 일정 조회 (상세)
SELECT CAL_NO, CAL_CATEGORY, CAL_TITLE, CAL_CONTENT, CAL_WRITER, CAL_START, CAL_END, CAL_REGDATE, CAL_MODIFY, CAL_DELFLAG, CAL_BIGO
	FROM CALENDAR
	WHERE CAL_NO = 1;

-- 일정 수정
UPDATE CALENDAR 
	SET CAL_CATEGORY='출장', CAL_TITLE = '출장으로 변경', CAL_CONTENT = '일정이 변경되었습니다', CAL_WRITER='하이', CAL_START='2024-06-15', CAL_END='2024-06-17', CAL_MODIFY=CURRENT_DATE, CAL_BIGO = ''
	WHERE CAL_NO = 1;

-- 일정 삭제
UPDATE CALENDAR
	SET CAL_DELFLAG = 'Y', CAL_MODIFY = CURRENT_DATE 
	WHERE CAL_NO = 1;
