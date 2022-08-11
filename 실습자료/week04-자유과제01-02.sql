-- (week04-��������01-02.sql)

DROP TABLE ���� purge;
DROP TABLE ������� purge;
DROP TABLE ��� purge;
DROP TABLE ���� purge;
DROP TABLE �л� purge;
DROP TABLE �а� purge;
DROP TABLE ���� purge;


-- ����(������ȣ, �̸�, �����о�)
CREATE TABLE ����
(
	������ȣ             CHAR(3) NOT NULL ,
	�̸�                 VARCHAR(20) ,
	�����о�             VARCHAR(30) ,
    PRIMARY KEY (������ȣ)
);


-- �а�(�а���, ��ȭ��ȣ, �繫����ġ, �а���, �Ӹ�����)
CREATE TABLE �а�
(
	�а���               VARCHAR(30) NOT NULL ,
	��ȭ��ȣ             CHAR(13) ,
	�繫����ġ          VARCHAR(50) ,
	�а���               CHAR(3) NOT NULL ,
	�Ӹ�����             CHAR(7) ,
    PRIMARY KEY (�а���) ,
    FOREIGN KEY (�а���) REFERENCES ���� (������ȣ)
);
CREATE UNIQUE INDEX XPK�а� ON �а�
(�а���   ASC);


-- �л�(�й�, �̸�, �ּ�, ����, �������, �а���, ��������, ���ð�)
CREATE TABLE �л�
(
	�й�                 CHAR(10) NOT NULL ,
	�̸�                 VARCHAR(20) ,
	�ּ�                 VARCHAR(50) ,
	����                 INT ,
	�������             VARCHAR(10) ,
	�а���               VARCHAR(30) NOT NULL ,
	��������             CHAR(3) ,
	���ð�             VARCHAR(20) ,
    PRIMARY KEY (�й�) ,
    FOREIGN KEY (�а���) REFERENCES �а� (�а���) ,
    FOREIGN KEY (��������) REFERENCES ���� (������ȣ) ON DELETE SET NULL
);
CREATE UNIQUE INDEX XPK�л� ON �л�
(�й�   ASC);


-- ����(�����ȣ, �����, ���񰳿�, ��米��)
CREATE TABLE ����
(
	�����ȣ             CHAR(4) NOT NULL ,
	�����               VARCHAR(30) ,
	���񰳿�             VARCHAR(100) ,
	��米��             CHAR(3) NOT NULL ,
    PRIMARY KEY (�����ȣ) ,
    FOREIGN KEY (��米��) REFERENCES ���� (������ȣ)
);
CREATE UNIQUE INDEX XPK���� ON ����
(�����ȣ   ASC);


-- ���(�й�, �����ȣ)
CREATE TABLE ���
(
	�й�                 CHAR(10) NOT NULL ,
	�����ȣ             CHAR(4) NOT NULL ,
    PRIMARY KEY (�й�,�����ȣ) ,
    FOREIGN KEY (�й�) REFERENCES �л� (�й�) ,
    FOREIGN KEY (�����ȣ) REFERENCES ���� (�����ȣ)
);
CREATE UNIQUE INDEX XPK��� ON ���
(�й�   ASC,�����ȣ   ASC);


-- �������(�����������, �������)
CREATE TABLE �������
(
	�����������         CHAR(3) NOT NULL ,
	�������             VARCHAR(100) NOT NULL ,
    PRIMARY KEY (�������,�����������) ,
    FOREIGN KEY (�����������) REFERENCES ���� (������ȣ)
);
CREATE UNIQUE INDEX XPK������� ON �������
(�������   ASC,�����������   ASC);


-- ����(�����ȣ, ���ǹ�ȣ)
CREATE TABLE ����
(
	�����ȣ             CHAR(4) NOT NULL ,
	���ǹ�ȣ             INT NOT NULL ,
    PRIMARY KEY (���ǹ�ȣ,�����ȣ) ,
    FOREIGN KEY (�����ȣ) REFERENCES ���� (�����ȣ)
);
CREATE UNIQUE INDEX XPK���� ON ����
(���ǹ�ȣ   ASC,�����ȣ   ASC);


-- ����(������ȣ, �̸�, �����о�)
INSERT INTO ���� VALUES ('301','����ö','�����ͺ��̽�');
INSERT INTO ���� VALUES ('504','������','��Ƽ�̵��');
INSERT INTO ���� VALUES ('505','������','��Ʈ��ũ');
INSERT INTO ���� VALUES ('556','�̿���','���� �ΰ�����');

-- �а�(�а���, ��ȭ��ȣ, �繫����ġ, �а���, �Ӹ�����)
INSERT INTO �а� VALUES ('��ǻ�Ͱ��а�','031-1234-5678','E�� 3��','504','2007��');
INSERT INTO �а� VALUES ('���Ӱ��а�','031-1234-9876','E�� 4��','556','2006��');

-- �л�(�й�, �̸�, �ּ�, ����, �������, �а���, ��������, ���ð�)
INSERT INTO �л� VALUES ('2004150051','Ȳ����','��⵵ ����',25,'1985.3.22','��ǻ�Ͱ��а�','504','�� 6����');
INSERT INTO �л� VALUES ('2007150006','������','����� ��������',22,'1988.9.17','��ǻ�Ͱ��а�','301','�� 3����');
INSERT INTO �л� VALUES ('2005152033','�̹α�','��⵵ ������',24,'1986.4.30','��ǻ�Ͱ��а�','301','�� 2����');
INSERT INTO �л� VALUES ('2007130012','���ҿ�','����� ���ϱ�',22,'1988.7.13','���Ӱ��а�','556','�� 1����');

-- ����(�����ȣ, �����, ���񰳿�, ��米��)
INSERT INTO ���� VALUES ('0205','���α׷���','C ��� ��� ���α׷���','301');
INSERT INTO ���� VALUES ('0211','�����ͺ��̽�','�����ͺ��̽� ������ �ǽ� �� ����','301');
INSERT INTO ���� VALUES ('5029','���������','������ ���۰� ���õ� ��� ����� �Ұ�','505');

-- ���(�й�, �����ȣ)
INSERT INTO ��� VALUES ('2004150051','0205');
INSERT INTO ��� VALUES ('2004150051','0211');
INSERT INTO ��� VALUES ('2005152033','0211');
INSERT INTO ��� VALUES ('2007150006','5029');

-- �������(�����������, �������)
INSERT INTO ������� VALUES ('505','�񵿱� W-CDMA �ܸ��� �� ���� ����Ʈ����');
INSERT INTO ������� VALUES ('505','CDMA 1X �ܸ��� SMS ����Ʈ����');
INSERT INTO ������� VALUES ('556','ǥ�� �˻�(Surface Detect Inspection) �ý���');

-- ����(�����ȣ, ���ǹ�ȣ)
INSERT INTO ���� VALUES ('0205',1);
INSERT INTO ���� VALUES ('0211',3);
INSERT INTO ���� VALUES ('5029',1);


COMMIT;


COL �̸�       FOR a10;
COL �����о� FOR a20;

COL �а���    FOR a15;
COL �繫����ġ FOR a20;

COL �̸�       FOR a10;
COL �ּ�       FOR a20;
COL �а���    FOR a15;
COL ���ð� FOR a20;

COL �����    FOR a15;
COL ���񰳿� FOR a50;

COL ������� FOR a70;
COL ���ǹ�ȣ FOR 9;


-- ���̺� ��ȸ
SELECT * FROM ����;
SELECT * FROM �а�;
SELECT * FROM �л�;
SELECT * FROM ����;
SELECT * FROM ���;
SELECT * FROM �������;
SELECT * FROM ���� ;


SELECT * FROM ������� ORDER BY "�����������" ASC, "�������" DESC;
SELECT * FROM ���� ORDER BY "�����ȣ" ASC;
