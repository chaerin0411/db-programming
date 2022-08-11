
/* ================ week11-�а��л�2.sql ================ */

-- 2) ����(CASCADE)�� ���
-- �а�2(�а��ڵ�, �а���)
-- �л�2(�й�, �̸�, �а��ڵ�)

drop table �л�2;
drop table �а�2;

CREATE TABLE �а�2 (
    �а��ڵ� char(4) NOT NULL ,
    �а��� varchar(30) ,
    CONSTRAINT pk_�а�2_�а��ڵ� PRIMARY KEY(�а��ڵ�)
);

CREATE TABLE �л�2 (
    �й� char(3) NOT NULL ,
    �̸� varchar(10) ,
    �а��ڵ� char(4) ,
    CONSTRAINT pk_�л�2_�й� PRIMARY KEY(�й�) ,
    CONSTRAINT fk_�л�2_�а��ڵ� FOREIGN KEY (�а��ڵ�) 
    REFERENCES �а�2(�а��ڵ�) /* 2���̴� �� ����� ���� */
    ON DELETE CASCADE /* ���� ���� */
);

insert into �а�2 values('1001','��ǻ���а�');
insert into �а�2 values('2001','ü���а�');

insert into �л�2 values('501','������','1001');
insert into �л�2 values('401','�迬��','2001');
insert into �л�2 values('402','��̶�','2001');
insert into �л�2 values('502','�߽ż�','1001');

select * from �а�2;
select * from �л�2;


-- 2) ����(CASCADE)�� ��� (oracle�� ���) --> update�� ������, delete�� ����
--���� (������?) : ON DELETE CASCADE�� �߱� ������ ���� �Ұ�
UPDATE �а�2
SET �а��ڵ� = 'A001'
WHERE �а��ڵ� = '1001';

--��������? : �θ� ���̺��� ���ڵ� �����Ʊ� ������ �ڽ� ���̺� ���ڵ嵵 ����
DELETE 
FROM �а�2
WHERE �а��ڵ� = '2001';

select * from �а�2;
select * from �л�2;

/* =============================================== */