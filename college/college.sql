PRAGMA foreign_keys = ON;

DROP TABLE IF EXISTS Student;
DROP TABLE IF EXISTS Professor;
DROP TABLE IF EXISTS Course;
DROP TABLE IF EXISTS Test;

CREATE TABLE Student
(	"number"	varchar2(5)	 not null,
 	name	varchar2(50) not null,
 	CONSTRAINT Student_PK PRIMARY KEY ("number")
);

INSERT INTO Student VALUES ('100','João');
INSERT INTO Student VALUES ('110','Manuel');
INSERT INTO Student VALUES ('120','Rui');
INSERT INTO Student VALUES ('130','Abel');
INSERT INTO Student VALUES ('140','Fernando');
INSERT INTO Student VALUES ('150','Ismael');

CREATE TABLE Professor
(	acronym	varchar2(5)	not null,
 	name	varchar2(50)	not null,
 	CONSTRAINT Professor_PK PRIMARY KEY (acronym)
);

INSERT INTO Professor VALUES ('ECO','Eugénio');
INSERT INTO Professor VALUES ('FNF','Fernando');
INSERT INTO Professor VALUES ('JLS','João');

CREATE TABLE Course
(	code	varchar2(5)	not null,
 	name	varchar2(50)	not null,
    programme	varchar2(10)	not null,
    coordinator	varchar2(5)	REFERENCES Professor(acronym),
 	CONSTRAINT Unit_PK PRIMARY KEY (code)
);

INSERT INTO Course VALUES ('TS1','Systems Theory 1','IS','FNF');
INSERT INTO Course VALUES ('BD','Databases','IS','ECO');
INSERT INTO Course VALUES ('EIA','Algorithms and Information Structures','IS','ECO');
INSERT INTO Course VALUES ('EP','Power Electronics','AC','JLS');
INSERT INTO Course VALUES ('IE','Electrical Installations','AC','JLS');

CREATE TABLE Test
(	"number"	varchar2(5)	REFERENCES Student("number"),
 	code	varchar2(50) REFERENCES Course(code),
    "date"	date,
    grade	number(2) check (grade>=0 AND grade<=20),
 	CONSTRAINT Test_PK PRIMARY KEY ("number", code, "date")
);

INSERT INTO Test VALUES ('100','TS1','92-02-11',8);
INSERT INTO Test VALUES ('100','TS1','93-02-02',11);
INSERT INTO Test VALUES ('100','BD','93-02-04',17);
INSERT INTO Test VALUES ('100','EIA','92-01-29',16);
INSERT INTO Test VALUES ('100','EIA','93-02-02',13);
INSERT INTO Test VALUES ('110','EP','92-01-30',12);
INSERT INTO Test VALUES ('110','IE','92-02-05',10);
INSERT INTO Test VALUES ('110','IE','93-02-01',14);
INSERT INTO Test VALUES ('120','TS1','93-01-31',15);
INSERT INTO Test VALUES ('120','EP','93-02-04',13);
INSERT INTO Test VALUES ('130','BD','93-02-04',12);
INSERT INTO Test VALUES ('130','EIA','93-02-02',7);
INSERT INTO Test VALUES ('130','TS1','92-02-11',8);
INSERT INTO Test VALUES ('140','TS1','93-01-31',10);
INSERT INTO Test VALUES ('140','TS1','92-02-11',13);
INSERT INTO Test VALUES ('140','EIA','93-02-02',11);
INSERT INTO Test VALUES ('150','TS1','92-02-11',10);
INSERT INTO Test VALUES ('150','EP','93-02-02',11);
INSERT INTO Test VALUES ('150','BD','93-02-04',17);
INSERT INTO Test VALUES ('150','EIA','92-01-29',16);
INSERT INTO Test VALUES ('150','IE','93-02-02',13);
