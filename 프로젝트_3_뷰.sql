--뷰
--권한 부여
grant create view to project;

--1. 진료과별 의사, 간호사, 환자 이름 보기 - 김성혜

create or replace view v_mndoc as
select dep.m_name 진료과, d.doc_name 의사이름 ,n.nur_name 간호사이름 from medi_dep_t dep, doc_t d, nur_t n 
where dep.m_no = d.m_no and substr(d.doc_no,2) in (substr(n.nur_no,2)-300);

select * from v_mndoc;

--2. 진료과별 진료 기록 보기-지영훈

--3. 진료과별 외래 환자 수, 입원 환자 수 보기- 한정은

--4. 특정 날짜 사이 입원한 환자

--뷰
select pa.pat_name from pat_t pa,hp_t hp 
where hp.hp_pano = pa.pat_no and hp.in_date > '21/01/01' and hp.in_date < '21/12/12';

create or replace view v_date as
select pa.pat_name 환자이름,hp.hr_no 입원실,hp.in_date 입원일 from pat_t pa,hp_t hp 
where hp.hp_pano = pa.pat_no and hp.in_date > '21/01/01' and hp.in_date < '21/12/12'
order by hp.in_date;

select *from v_date;

--프로시저
SET SERVEROUTPUT ON 
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




