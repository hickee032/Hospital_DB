--��

--1. ������� �ǻ�, ��ȣ��, ȯ�� �̸� ���� - �輺��

--2. ������� ���� ��� ����-������

--3. ������� �ܷ� ȯ�� ��, �Կ� ȯ�� �� ����-������

--4. Ư�� ��¥ ���� �Կ��� ȯ��

SET SERVEROUTPUT ON 
--���ν���
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




