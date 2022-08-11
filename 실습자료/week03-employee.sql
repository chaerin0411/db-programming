drop table employee purge;

 create table employee (
  empno char(3) NOT NULL ,
  ename varchar(12) ,
  dept varchar(18) ,
  tel char(4) ,
  salary int ,
  PRIMARY KEY(empno)
);

 -- employee(empno, ename, dept, tel, salary)
insert into employee values('100', '�����', '����', '1241', 200);
insert into employee values('101', 'ȫ����', '��ȹ', '5621', 200);
insert into employee values('102', '�̸���', '����', '5251', 250);
insert into employee values('103', '�質��', '����', '1231', 300);

select * from employee;

/*
EMPNO  ENAME      DEPT     TEL      SALARY
------ ---------- -------- -------- ------
100    �����     ����     1241        200
101    ȫ����     ��ȹ     5621        200
102    �̸���     ����     5251        250
103    �質��     ����     1231        300
*/

-- desc employee

-- COL ename FOR a10
-- COL salary FOR 9999
-- COL dept FOR a8

commit;

-- employee (empno, ename, dept, tel, salary)
-- QUIZ. �����ο� ���� ��� ����� �̸��� ��ȭ��ȣ�� ��ȸ�϶�
SELECT      ename, tel
FROM        employee
WHERE       dept = '����';