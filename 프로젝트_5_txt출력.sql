
-- drop directory project_dir; --���丮 ���� (������ �α��� �ʼ�)
-- dump ����
create directory PROJECT_DIR as 'D:\\'; --���丮 ��� ����,���� (������ �α��� �ʼ�)
grant read, write on directory PROJECT_DIR to team3; --���丮�� ������ �ο� (������ �α��� �ʼ�)

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE OR REPLACE VIEW chart_view as
select rownum ��Ʈ��ȣ,ds.ds_no �����ȣ, ds.doc_no �ǻ��ȣ,dc.doc_name �ǻ��̸�, ds.pa_no ȯ�ڹ�ȣ, pa.pat_name ȯ���̸�, ds.ds_note �Ұ�
from ds_t ds, pat_t pa, doc_t dc where ds.doc_no = dc.doc_no and  ds.pa_no = pa.pat_no;

select * from chart_view;

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- ȯ�� �Ѹ��� ���� ������Ʈ ���� ���
CREATE OR REPLACE PROCEDURE ds_WFile_name(fname varchar2,pname varchar2) IS
    v_output UTL_FILE.FILE_TYPE;
    v_result VARCHAR2(4000);
    CURSOR sql_cur IS
    SELECT �����ȣ, �ǻ��̸�, ȯ���̸�, �Ұ�
    FROM chart_view
    where ȯ���̸� = pname;
    BEGIN
     v_output := UTL_FILE.FOPEN('PROJECT_DIR', fname,'w',32767);
            DBMS_OUTPUT.PUT_LINE('�����ȣ'||'   '||'�ǻ��̸�'||'    '||'ȯ���̸�'||'    '||'�Ұ�');
        FOR v_cur IN sql_cur LOOP
            v_result := v_cur.�����ȣ||'  '||v_cur.�ǻ��̸�||'  '||v_cur.ȯ���̸�||'  '||v_cur.�Ұ�;
            DBMS_OUTPUT.PUT_LINE(v_cur.�����ȣ||'     '||v_cur.�ǻ��̸�||'     '||v_cur.ȯ���̸�||'   '||v_cur.�Ұ�);
            UTL_FILE.PUT_LINE(v_output, v_result);
        END LOOP;
        UTL_FILE.FCLOSE(v_output);
     EXCEPTION
        WHEN UTL_FILE.INVALID_PATH THEN
            DBMS_OUTPUT.PUT_LINE('�߸��� ���');
        WHEN UTL_FILE.INVALID_OPERATION THEN
            DBMS_OUTPUT.PUT_LINE('�߸��� ����');
            END;
/

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------
exec ds_WFile_NAME('jinho.txt','����ȣ');
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- ��ü ������Ʈ ���� ���
CREATE OR REPLACE PROCEDURE ds_WFile(fname varchar2) IS
    v_output    UTL_FILE.FILE_TYPE;
    v_result     VARCHAR2(4000);
    CURSOR   sql_cur IS
    SELECT    �����ȣ, �ǻ��̸�, ȯ���̸�, �Ұ�
    FROM      chart_view;
    BEGIN
     v_output := UTL_FILE.FOPEN('PROJECT_DIR', fname,'w',32767);
        FOR v_cur IN sql_cur LOOP
            v_result := v_cur.�����ȣ||' | '||v_cur.�ǻ��̸�||' | '||v_cur.ȯ���̸�||' | '||v_cur.�Ұ�;
            DBMS_OUTPUT.PUT_LINE(v_cur.�����ȣ||'      '||v_cur.�ǻ��̸�||'      '||v_cur.ȯ���̸�||'      '||v_cur.�Ұ�);
            UTL_FILE.PUT_LINE(v_output, v_result);
        END LOOP;
        UTL_FILE.FCLOSE(v_output);
     EXCEPTION
        WHEN UTL_FILE.INVALID_PATH THEN
            DBMS_OUTPUT.PUT_LINE('�߸��� ���');
        WHEN UTL_FILE.INVALID_OPERATION THEN
            DBMS_OUTPUT.PUT_LINE('�߸��� ����');
            END;
/
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------
exec ds_WFile('Chart.txt');
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------