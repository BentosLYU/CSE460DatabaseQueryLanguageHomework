 CREATE TABLE student(
 	sno varchar(10) PRIMARY KEY, 
 	name varchar(20), 
 	dept varchar(10));

 CREATE TABLE course(
 	cno varchar(5) PRIMARY KEY, 
 	dept varchar(10));

 CREATE TABLE enroll(
 	cno varchar(5) REFERENCES course(cno), 
 	sno varchar(10) REFERENCES student(sno), 
 	grade numeric(3,2), 
 	PRIMARY KEY (cno, sno));
