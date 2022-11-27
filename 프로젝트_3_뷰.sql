--��
--���� �ο�
grant create view to project;

--1. ������� �ǻ�, ��ȣ��, ȯ�� �̸� ���� - �輺��

create or replace view v_mndoc as
select dep.m_name �����, d.doc_name �ǻ��̸� ,n.nur_name ��ȣ���̸� from medi_dep_t dep, doc_t d, nur_t n 
where dep.m_no = d.m_no and substr(d.doc_no,2) in (substr(n.nur_no,2)-300);

select * from v_mndoc;

--2. ������� ���� ��� ����-������

--3. ������� �ܷ� ȯ�� ��, �Կ� ȯ�� �� ����- ������

--4. Ư�� ��¥ ���� �Կ��� ȯ��

--��
select pa.pat_name from pat_t pa,hp_t hp 
where hp.hp_pano = pa.pat_no and hp.in_date > '21/01/01' and hp.in_date < '21/12/12';

create or replace view v_date as
select pa.pat_name ȯ���̸�,hp.hr_no �Կ���,hp.in_date �Կ��� from pat_t pa,hp_t hp 
where hp.hp_pano = pa.pat_no and hp.in_date > '21/01/01' and hp.in_date < '21/12/12'
order by hp.in_date;

select *from v_date;

--���ν���
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
    DBMS_OUTPUT.PUT_LINE('ȯ�ڹ�ȣ :'||HP_DATE_BUF.HP_PANO);
    DBMS_OUTPUT.PUT_LINE('ȯ���̸� :'||HP_DATE_BUF.P_NAME);
    DBMS_OUTPUT.PUT_LINE('�Կ���¥ :'||HP_DATE_BUF.IN_DATE);
    DBMS_OUTPUT.PUT_LINE('�����¥ :'||HP_DATE_BUF.OUT_DATE);    
 end loop;
END;
/
EXECUTE HP_DATE_PROC('21/01/01','21/12/12');




