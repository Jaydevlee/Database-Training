CREATE TABLE tr_member(
    tr_mem_no NUMBER PRIMARY KEY,
    tr_mem_id VARCHAR2(20), 
    tr_mem_password VARCHAR2(20),
    tr_mem_name VARCHAR2(20),
    tr_mem_email VARCHAR2(20),
    tr_mem_phone VARCHAR2(20),
    tr_mem_level NUMBER
);

SELECT * FROM tr_member;
DESC TR_MEMBER;
CREATE SEQUENCE tr_member_seq
  START WITH 1
  INCREMENT BY 1
  NOCACHE;
  TRUNCATE TABLE tr_member;
  
ALTER TABLE tr_member modify tr_mem_phone NOT NULL;
ALTER TABLE tr_member modify tr_mem_phone VARCHAR2(30);