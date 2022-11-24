--�Լ�, ���ν���, Ʈ����

--���� ���� ����
SET SERVEROUTPUT ON  

--�Լ�, ���ν���, Ʈ����, ����
drop function random_call;
drop function random_pr;
drop function random_rr;

--�Լ�----------------------------------------------------------------------------------------------------------------------------------------------------


--���ν���----------------------------------------------------------------------------------------------------------------------------------------------------

--Ʈ����----------------------------------------------------------------------------------------------------------------------------------------------------
--2. ���� �Է½� �̸�, ����ó ����ġ �� �ǻ� ���� �ֱ�
CREATE OR REPLACE TRIGGER RE_INPUT_RANDOM
AFTER INSERT ON RES_T
FOR EACH ROW
BEGIN


   





-- �������̺� �Կ��� �Է� �ɽ� �Կ� ���̺� �ڵ��߰�

--insert into ds_t values('DS003','21/01/17','�쳻�����','D026','P040','�Կ�'); 
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







--��
--1. ������� �ǻ�, ��ȣ��, ȯ�� �̸� ����

--2. ������� ���� ��� ����

--3. ������� �ܷ� ȯ�� ��, �Կ� ȯ�� �� ����

--4. ������� ������ ���� ȯ�� �̸� ����




--1. ���� �Է½� �̸�, ����ó ��ġ �� ����ǻ� �ֱ�
--2. ���� �Է½� �̸�, ����ó ����ġ �� �ǻ� ���� �ֱ�





--2. �Կ� ���̺��� ȯ�� �̸� �˻� ��
--������� �����Դϴ�.
--������� 0�� ���ҽ��ϴ�. 





--1. ��ȣ�� �̸�, ����, ��ȣ
--2. �ǻ� ���� (���޿� ���� ���� �Է� ���� ���)
--3. �Կ��� (Ư�� �Կ��ǿ��� �Կ��ϰ� �ִ� ȯ�� �̸� ����)
--4. �Կ��� (�Կ� ��¥�� ���� �Կ��� ��޿� ���� ���)




--������ �߰� �Լ�------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

--�ǻ�, ��ȣ�� �ֹε�Ϲ�ȣ
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

--ȯ�� �ֹε�Ϲ�ȣ
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

--��ȭ��ȣ ���� --�����
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
/--�ǻ�, ��ȣ�� �ֹε�Ϲ�ȣ
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

--ȯ�� �ֹε�Ϲ�ȣ
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

--��ȭ��ȣ ���� --�����
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
