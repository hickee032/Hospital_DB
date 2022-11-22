--뷰

--1. 진료과별 의사, 간호사, 환자 이름 보기 - 김성혜

--2. 진료과별 진료 기록 보기-지영훈

--3. 진료과별 외래 환자 수, 입원 환자 수 보기-한정은

--4. 특정 날짜 사이 입원한 환자

SET SERVEROUTPUT ON 
--프로시저
CREATE OR REPLACE PROCEDURE HP_DATE_PROC(
P_A IN DATE,
P_B IN DATE)
IS
P_PANO HP_T.HP_NO%TYPE;
P_NAME PAT_T.PAT_NAME%TYPE;
P_IN_DATE HP_T.IN_DATE%TYPE;
P_OUT_DATE HP_T.OUT_DATE%TYPE;
BEGIN 
FOR HP_DATE_BUF IN (SELECT HP_PANO,P_NAME,IN_DATE,OUT_DATE
    INTO P_PANO,P_NAME,P_IN_DATE,P_OUT_DATE
    FROM HP_T H
    WHERE P_A < IN_DATE AND IN_DATE < P_B)
    loop
    DBMS_OUTPUT.PUT_LINE('환자번호 :'||HP_DATE_BUF.HP_PANO);
    DBMS_OUTPUT.PUT_LINE('환자이름 :'||HP_DATE_BUF.P_NAME);
    DBMS_OUTPUT.PUT_LINE('입원날짜 :'||HP_DATE_BUF.IN_DATE);
    DBMS_OUTPUT.PUT_LINE('퇴원날짜 :'||HP_DATE_BUF.OUT_DATE);    
 end loop;
END;
/
EXECUTE HP_DATE_PROC('21/01/01','21/12/12');




