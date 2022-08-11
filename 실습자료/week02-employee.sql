/* employee ���̺� */
-- (employee.sql)

-- employee(empno, ename, dept, tel, salary)

DROP TABLE employee;

CREATE TABLE employee (
	empno	int	NOT NULL,
	ename	varchar(20),
	dept	varchar(10),
	tel	int,
	salary	int,
	PRIMARY KEY(empno)
);

-- employee(empno, ename, dept, tel, salary)
INSERT INTO employee VALUES(100,'�����','����',1241,200);
INSERT INTO employee VALUES(101,'ȫ����','��ȹ',5621,200);
INSERT INTO employee VALUES(102,'�̸���','����',5251,250);
INSERT INTO employee VALUES(103,'������','����',1231,300);

COMMIT;

-- text���� ���̺��� ������ ��� 'ename'�� �ʹ� ��� ������ 3�ڸ� �����޶�� ���
COL ename FORMAT a3

SELECT * FROM employee;