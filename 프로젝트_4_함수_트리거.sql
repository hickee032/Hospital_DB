--함수, 프로시저, 트리거

--가장 먼저 실행
SET SERVEROUTPUT ON  

--함수, 프로시저, 트리거, 삭제
drop function random_call;
drop function random_pr;
drop function random_rr;

--함수----------------------------------------------------------------------------------------------------------------------------------------------------


--프로시저----------------------------------------------------------------------------------------------------------------------------------------------------

--트리거----------------------------------------------------------------------------------------------------------------------------------------------------
--2. 예약 입력시 이름, 연락처 불일치 시 의사 랜덤 넣기
CREATE OR REPLACE TRIGGER RE_INPUT_RANDOM
AFTER INSERT ON RES_T
FOR EACH ROW
BEGIN


   





-- 진료테이블에 입원이 입력 될시 입원 테이블에 자동추가

--insert into ds_t values('DS003','21/01/17','녹내장수술','D026','P040','입원'); 
--insert into hp_t values('HP002','P015','D021','N313','21/03/02','21/03/17'); 

CREATE OR REPLACE TRIGGER ds_insert
AFTER INSERT

END;
/

create or replace function HP_NUM
return varchar2
is
   SET f_num number := (SELECT COUNT(*)+1 FROM HP_T);
   f_char varchar2(10) := 'HP'||TO_CHAR(F_NUM,'FM000');    
begin
return f_char;        
end; 
/







--뷰
--1. 진료과별 의사, 간호사, 환자 이름 보기

--2. 진료과별 진료 기록 보기

--3. 진료과별 외래 환자 수, 입원 환자 수 보기

--4. 퇴원일이 일주일 남은 환자 이름 보기




--1. 예약 입력시 이름, 연락처 일치 시 담당의사 넣기
--2. 예약 입력시 이름, 연락처 불일치 시 의사 랜덤 넣기





--2. 입원 테이블에서 환자 이름 검색 시
--퇴원일이 미정입니다.
--퇴원일이 0일 남았습니다. 





--1. 보호자 이름, 관계, 번호
--2. 의사 연봉 (직급에 따라 연봉 입력 제한 기능)
--3. 입원실 (특정 입원실에서 입원하고 있는 환자 이름 보기)
--4. 입원료 (입원 날짜에 따라 입원실 등급에 따라 계산)




--데이터 추가 함수------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

--의사, 간호사 주민등록번호
create or replace function random_rr
return varchar2
is
f_rr varchar2(50);   
f_year number := trunc(DBMS_random.value(70,90));
f_month number := trunc(DBMS_random.value(1,12));
f_day number := trunc(DBMS_random.value(01,30));
f_fr number := trunc(DBMS_random.value(1,2));
f_se number := trunc(DBMS_random.value(100000,999999));
begin
f_rr := to_char(f_year)||to_char(f_month,'FM00')||to_char(f_day,'FM00')||'-'||to_char(f_fr)||to_char(f_se);       
return f_rr;        
end; 
/

--환자 주민등록번호
create or replace function random_pr
return varchar2
is
f_rr varchar2(50);   
f_year number := trunc(DBMS_random.value(70,95));
f_month number := trunc(DBMS_random.value(1,12));
f_day number := trunc(DBMS_random.value(01,30));
f_fr number := trunc(DBMS_random.value(1,2));
f_se number := trunc(DBMS_random.value(100000,999999));
begin
f_rr := to_char(f_year)||to_char(f_month,'FM00')||to_char(f_day,'FM00')||'-'||to_char(f_fr)||to_char(f_se);       
return f_rr;        
end; 
/

--전화번호 생성 --변경됨
create or replace function random_call
return varchar2
is
f_call varchar2(50);   
f_first varchar2(3) := '010';
f_second number := trunc(DBMS_random.value(0001,9999));
f_third number := trunc(DBMS_random.value(0001,9999));
begin
f_call := f_first||to_char(f_second,'FM0000')||to_char(f_third,'FM0000');       
return f_call;        
end; 
/--의사, 간호사 주민등록번호
create or replace function random_rr
return varchar2
is
f_rr varchar2(50);   
f_year number := trunc(DBMS_random.value(70,90));
f_month number := trunc(DBMS_random.value(1,12));
f_day number := trunc(DBMS_random.value(01,30));
f_fr number := trunc(DBMS_random.value(1,2));
f_se number := trunc(DBMS_random.value(100000,999999));
begin
f_rr := to_char(f_year)||to_char(f_month,'FM00')||to_char(f_day,'FM00')||'-'||to_char(f_fr)||to_char(f_se);       
return f_rr;        
end; 
/

--환자 주민등록번호
create or replace function random_pr
return varchar2
is
f_rr varchar2(50);   
f_year number := trunc(DBMS_random.value(70,95));
f_month number := trunc(DBMS_random.value(1,12));
f_day number := trunc(DBMS_random.value(01,30));
f_fr number := trunc(DBMS_random.value(1,2));
f_se number := trunc(DBMS_random.value(100000,999999));
begin
f_rr := to_char(f_year)||to_char(f_month,'FM00')||to_char(f_day,'FM00')||'-'||to_char(f_fr)||to_char(f_se);       
return f_rr;        
end; 
/

--전화번호 생성 --변경됨
create or replace function random_call
return varchar2
is
f_call varchar2(50);   
f_first varchar2(3) := '010';
f_second number := trunc(DBMS_random.value(0001,9999));
f_third number := trunc(DBMS_random.value(0001,9999));
begin
f_call := f_first||to_char(f_second,'FM0000')||to_char(f_third,'FM0000');       
return f_call;        
end; 
/
