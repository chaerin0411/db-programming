drop table �μ� purge;

/* �μ�(�μ��ڵ�, �μ���, ��ġ) */

-- �μ� ���̺� ����
CREATE TABLE �μ� (
  �μ��ڵ�  char(3) NOT NULL,
  �μ���     char(9),
  ��ġ        char(6),
  PRIMARY KEY(�μ��ڵ�)
);

-- �μ� ������ �Է�
insert into �μ� values('AA', '�ѹ���', '����');
insert into �μ� values('BB', '������', '����');
insert into �μ� values('CC', '��ȹ��', '����');
select * from �μ�;