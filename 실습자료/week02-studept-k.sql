/* �а�, �л� ���̺� */
-- (studept-k.sql)

-- �а�(�а���ȣ, �а���)
-- �л�(��ȣ, �̸�, �г�, �й�, �а���ȣ)

DROP TABLE �л�;
DROP TABLE �а�;

CREATE TABLE �а� (
	�а���ȣ	int	NOT NULL,
	�а���	varchar(50),
	PRIMARY KEY(�а���ȣ)
);

CREATE TABLE �л� (
	��ȣ	int	NOT NULL,
	�̸�	varchar(12),
	�г�	int,
	�й�	char(2),
	�а���ȣ	int,
	PRIMARY KEY(��ȣ),
	FOREIGN KEY (�а���ȣ) REFERENCES �а�(�а���ȣ)
);

-- �а�(�а���ȣ, �а���)
INSERT INTO �а� VALUES(1, '��ǻ�ͼ���Ʈ������а�');
INSERT INTO �а� VALUES(2, '��ǻ���������а�');
INSERT INTO �а� VALUES(3, '������Ű��а�');

-- �л�(��ȣ, �̸�, �г�, �й�, �а���ȣ)
INSERT INTO �л� VALUES(1, '������', 1, 'YB', 1);
INSERT INTO �л� VALUES(2, '������', 1, 'YA', 1);
INSERT INTO �л� VALUES(3, '������', 2, 'J1', 2);
INSERT INTO �л� VALUES(4, '�����', 1, 'YB', 1);
INSERT INTO �л� VALUES(5, '��öȣ', 2, 'Y1', 2);

COMMIT;

-- text���� ���̺��� ������ ��� '�а���'�� �ʹ� ��� ������ 30�ڸ� �����޶�� ���
COL �а��� FORMAT a30

SELECT * FROM �а�;
SELECT * FROM �л�;