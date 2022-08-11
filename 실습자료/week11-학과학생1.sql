
/* ================ week11-�а��л�1.sql ================ */

-- 1) ����(RECTRICT) �� ���
-- �а�(�а��ڵ�, �а���)
-- �л�(�й�, �̸�, �а��ڵ�)

drop table �л�;
drop table �а�;

CREATE TABLE �а� (
   �а��ڵ� char(4) NOT NULL ,
   �а��� varchar(30) ,
   CONSTRAINT pk_�а�_�а��ڵ� PRIMARY KEY(�а��ڵ�)
);

CREATE TABLE �л� (
   �й� char(3) NOT NULL ,
   �̸� varchar(10) ,
   �а��ڵ� char(4) ,
   CONSTRAINT pk_�л�_�й� PRIMARY KEY(�й�) ,
   CONSTRAINT fk_�л�_�а��ڵ� FOREIGN KEY (�а��ڵ�) 
   REFERENCES �а�(�а��ڵ�)
);

-- �а�(�а��ڵ�, �а���)
-- �л�(�й�, �̸�, �а��ڵ�)

insert into �а� values('1001','��ǻ���а�');
insert into �а� values('2001','ü���а�');

insert into �л� values('501','������','1001');
insert into �л� values('401','�迬��','2001');
insert into �л� values('402','��̶�','2001');
insert into �л� values('502','�߽ż�','1001');

COL �а��ڵ� FOR a8
COL �а��� FOR a10
COL �й� FOR a4
COL �̸� FOR a10

select * from �а�;
select * from �л�;


--1) ����(RECTRICT) �� ���
-- �迬�ư� ü���а����� ��ǻ���а��� ����
update �л�
set �а��ڵ�='1001' /* 3001�� �ٲٴ� ���� �Ұ���, �������Ἲ�������� ���� */
where �̸�='�迬��';

--���� (������?) : �̹� �л����̺��� �����ǰ� �ֱ� ����
UPDATE �а�
SET �а��ڵ� = 'A001'
WHERE �а��ڵ� = '1001';

--���� (������?) : �̹� �л����̺��� �����ǰ� �ֱ� ����
DELETE 
FROM �а�
WHERE �а��ڵ� = '2001';

/* =============================================== */