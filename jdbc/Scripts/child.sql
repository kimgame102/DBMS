CREATE SEQUENCE SEQ_CHILD;

CREATE TABLE TBL_CHILD(
   ID NUMBER CONSTRAINT PK_CHILD PRIMARY KEY,
   CHILD_NAME VARCHAR2(255) NOT NULL,
   CHILD_AGE NUMBER NOT NULL,
   CHILD_GENDER NUMBER DEFAULT 3,
   PARENT_ID NUMBER,
   CONSTRAINT FK_CHILD_PARENT FOREIGN KEY(PARENT_ID)
   REFERENCES TBL_PARENT(ID)
);