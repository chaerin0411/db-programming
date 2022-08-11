
/* ================ week11-�а��л�3.sql ================ */

-- 3) �� ������ ��ü(SET NULL) �� ���
-- �а�3(�а��ڵ�, �а���)
-- �л�3(�й�, �̸�, �а��ڵ�)

drop table �л�3;
drop table �а�3;

CREATE TABLE �а�3 (
    �а��ڵ� char(4) NOT NULL ,
    �а��� varchar(30) ,
    CONSTRAINT pk_�а�3_�а��ڵ� PRIMARY KEY(�а��ڵ�)
);

CREATE TABLE �л�3 (
    �й� char(3) NOT NULL ,
    �̸� varchar(10) ,
    �а��ڵ� char(4) ,
    CONSTRAINT pk_�л�3_�й� PRIMARY KEY(�й�) ,
    CONSTRAINT fk_�л�3_�а��ڵ� FOREIGN KEY (�а��ڵ�) 
    REFERENCES �а�3(�а��ڵ�)
    ON DELETE SET NULL
);

insert into �а�3 values('1001','��ǻ���а�');
insert into �а�3 values('2001','ü���а�');

insert into �л�3 values('501','������','1001');
insert into �л�3 values('401','�迬��','2001');
insert into �л�3 values('402','��̶�','2001');
insert into �л�3 values('502','�߽ż�','1001');

select * from �а�3;
select * from �л�3;


-- 3) �� ������ ��ü(SET NULL) �� ��� (oracle�� ���) --> update�� ������, delete�� ����
--���� (������?) : ON DELETE SET NULL�� �߱� ������ ���� �Ұ�
UPDATE �а�3
SET �а��ڵ� = 'A001'
WHERE �а��ڵ� = '1001';

-- ���� ����? (SET NULL ����) : ���� ����!
DELETE 
FROM �а�3
WHERE �а��ڵ� = '1001';

select * from �а�3;
select * from �л�3;

/* =============================================== */