
-- week03-patient.sql
DROP TABLE ȯ�� PURGE;
DROP TABLE ���� PURGE;

-- ����(�����ڵ�, ������, ����)
CREATE TABLE ���� (
	�����ڵ�             CHAR(4) NOT NULL ,
	������               VARCHAR(30) NULL ,
	����                 VARCHAR(50) NULL ,
	PRIMARY KEY (�����ڵ�)
);

-- ȯ��(ȯ�ڹ�ȣ, �̸�, �����ڵ�, ����)
CREATE TABLE ȯ�� (
	ȯ�ڹ�ȣ             CHAR(5) NOT NULL ,
	�̸�                 VARCHAR(18) NULL ,
	�����ڵ�             CHAR(4) NULL ,
	����                 INT NULL ,
	PRIMARY KEY (ȯ�ڹ�ȣ) ,
	FOREIGN KEY (�����ڵ�) REFERENCES ����(�����ڵ�)
);

-- ����(�����ڵ�, ������, ����)
insert into ���� values ('A01','������','��������');
insert into ���� values ('A02','�ݷ���','����');
insert into ���� values ('A03','�������','�߿�');
insert into ���� values ('A04','��ƼǪ��','�߿�');

-- ȯ��(ȯ�ڹ�ȣ, �̸�, �����ڵ�, ����)
insert into ȯ�� values ('P1001','��ö��','A01',30);
insert into ȯ�� values ('P1002','�����','A03',29);
insert into ȯ�� values ('P1003','�ӿ���','A01',50);
insert into ȯ�� values ('Q1001','���ѳ�','A04',40);

/*
desc ����
desc ȯ��

COL ������ FOR a10
COL ���� FOR a15
COL �̸� FOR a8
COL ���� FOR 999
*/

select * from ����;
select * from ȯ��;

-- 5) ������ �߿��� �����ڵ�� ������, ������ ��ȸ�϶�
SELECT �����ڵ�, ������, ����
FROM ����
WHERE ���� = '�߿�';

-- 6) ������� �̸��� ȯ�ڹ�ȣ, ���̸� ��ȸ�϶�
SELECT ȯ�ڹ�ȣ, �̸�, ����
FROM ȯ��
WHERE �̸� = '�����';
