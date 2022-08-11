-- (erwin 73 �ڵ�����)
-- (week04-book.sql)

DROP TABLE book purge;

-- book(bookid, bookname, publisher, price)
CREATE TABLE book
(
	bookid               INT NOT NULL ,
	bookname             VARCHAR(50) NULL ,
	publisher            VARCHAR(30) NULL ,
	price                INT NULL 
);

CREATE UNIQUE INDEX XPKbook ON book
(bookid   ASC);

ALTER TABLE book
	ADD CONSTRAINT  XPKbook PRIMARY KEY (bookid);

-- book(bookid, bookname, publisher, price)
insert into book values(1,'�౸�� ����','�½�����',7000);
insert into book values(2,'�౸ �ƴ� ����','������',13000);
insert into book values(3,'�౸�� ����','���ѹ̵��',22000);
insert into book values(4,'���� ���̺�','���ѹ̵��',36000);
insert into book values(5,'�ǰ� ����','�½�����',8000);

desc book;

-- ���� ��ɾ�
COL bookid FORMAT 99
COL bookname FORMAT a20
COL publisher FORMAT a20
COL price FORMAT 999999

-- ������ ��ȸ
select * from book;