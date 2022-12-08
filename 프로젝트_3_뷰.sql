--��

--���� �ο�
grant create view to team3;

--1. ������� �ǻ�, ��ȣ��, ȯ�� �̸� ����
--1-1
--drop view m_d_p_see;
create or replace view m_d_p_see as 
select m.m_name "����� �̸�",  d.doc_name "�ǻ� �̸�", p.pat_name "ȯ�� �̸�"
from medi_dep_t m 
left outer join doc_t d 
on m.m_no=d.m_no 
left outer join pat_t p 
on d.doc_no=p.doc_no 
group by rollup(m.m_name, d.doc_name, p.pat_name) 
order by m.m_name, d.doc_name, p.pat_name;

select*from m_d_p_see;

--1-2
--drop view v_mndoc;
create or replace view v_mndoc as
select dep.m_name �����, d.doc_name �ǻ��̸� ,n.nur_name ��ȣ���̸� 
from medi_dep_t dep, doc_t d, nur_t n 
where dep.m_no = d.m_no 
and substr(d.doc_no,2) in (substr(n.nur_no,2)-300);

select * from v_mndoc;

--2. ����� �� ���� ��� ����-

--drop view MEDI_DS;

create or replace view MEDI_DS as
select m.M_NAME ������̸�, p.m_no �������ȣ,d.DOC_NO �ǻ��ȣ,  d.DS_DATE ���ᳯ¥,
d.DS_NOTE ���᳻��, d.PA_NO ȯ�ڹ�ȣ, d.DS_INOUT �Կ�or�ܷ�
from MEDI_DEP_T m, DS_T d, DOC_T p
where m.m_no = p.m_no and p.DOC_NO = d.DOC_NO -- (����� ��ȣ, �ǻ� ��ȣ
order by m.M_NAME;

-- ���
select * from MEDI_DS order by �������ȣ;
select * from MEDI_DS where ������̸� = '�Ǻΰ�';  
select * from MEDI_DS where ������̸� = '�Ҿư�';
select * from MEDI_DS where ������̸� = '�����ܰ�';
select * from MEDI_DS where ������̸� = 'ġ��';
select * from MEDI_DS where ������̸� = '�Ȱ�';


--3. ������� �ܷ� ȯ�� ��, �Կ� ȯ�� �� ����-------------------------------------------------------------------
--drop view v_medi;
create or replace view v_medi as SELECT m.m_name "����� �̸�", 
count(decode(p.pat_no , h.hp_pano, null, p.pat_no)) "�ܷ� ȯ�� ��", 
count(h.hp_no) "�Կ� ȯ�� ��"
          FROM medi_dep_t m
         right outer join doc_t d on m.m_no=d.m_no 
         right outer join pat_t p on d.doc_no=p.doc_no
         left outer join hp_t h on p.pat_no=h.hp_pano
         group by m.m_name;  

---------------------------------------------------------------------------------------------------------------------
select *from v_medi; 
select *from v_medi where v_medi."�ܷ� ȯ�� ��" =2;  
select *from v_medi where "����� �̸�" = '�Ȱ�';  
---------------------------------------------------------------------------------------------------------------------

--4. Ư�� ��¥ ���� �Կ��� ȯ��(��)


select pa.pat_name from pat_t pa,hp_t hp 
where hp.hp_pano = pa.pat_no and hp.in_date > '21/01/01' and hp.in_date < '21/12/12';
--drop view v_date;
create or replace view v_date as
select pa.pat_name ȯ���̸�,hp.hr_no �Կ���,hp.in_date �Կ��� from pat_t pa,hp_t hp 
where hp.hp_pano = pa.pat_no and hp.in_date > '21/01/01' and hp.in_date < '21/12/12'
order by hp.in_date;

select *from v_date;






