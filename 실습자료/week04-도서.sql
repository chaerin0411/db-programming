-- (week04-����.sql)

DROP TABLE ���� purge;

-- ����(������ȣ, ������, ���ǻ�, ����)
CREATE TABLE ����
(
	������ȣ             INT NOT NULL ,
	������               VARCHAR(50) NULL ,
	���ǻ�               VARCHAR(30) NULL ,
	����                 INT , 
             PRIMARY KEY (������ȣ) 
);

CREATE UNIQUE INDEX XPK���� ON ����
(������ȣ   ASC);

ALTER TABLE ����
	ADD CONSTRAINT  XPK���� PRIMARY KEY (������ȣ);

INSERT INTO ���� VALUES(1,'�౸�� ����','�½�����',7000);
INSERT INTO ���� VALUES(2,'�౸ �ƴ� ����','������',13000);
INSERT INTO ���� VALUES(3,'�౸�� ����','���ѹ̵��',22000);
INSERT INTO ���� VALUES(4,'���� ���̺�','���ѹ̵��',36000);
INSERT INTO ���� VALUES(5,'�ǰ� ����','�½�����',8000);

-- ���� ��ɾ�
COL ������ȣ FOR 99
COL ������    FOR a30
COL ���ǻ�    FOR a20
COL ����       FOR 999999

-- ������ ��ȸ
SELECT * FROM ����;