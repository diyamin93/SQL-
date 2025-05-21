CREATE DATABASE info;
USE info;
# creating tables here
CREATE TABLE stud (
student_id int primary key,
firstname varchar(20),
major varchar(20)
);
# to show table
DESCRIBE stud;
# ALTER COMMAND 
#Adding column
ALTER TABLE stud
 ADD COLUMN gpa INT;
# i can remove column too
ALTER TABLE stud
DROP COLUMN gpa;
#Rename column
ALTER TABLE stud
RENAME TO newstud;
#Change column
ALTER TABLE stud
CHANGE COLUMN major sub int ;
#to modify(data type  or constraint)
ALTER TABLE stud
MODIFY firstname int;


CREATE TABLE student (
student_id int primary key,
firstname varchar(20),
major varchar(20)
);


# inserting data into table(INSERT INTO TABLENAME VALUES();
 INSERT  INTO student (student_id, firstname, major) VALUES (1,'jack','biology');
 # to show table content
 SELECT* FROM student;
 INSERT  INTO student (student_id, firstname, major) VALUES (2,'kate','sociology');
 INSERT  INTO student (student_id, firstname, major) VALUES (3,'claire','english');
 INSERT  INTO student (student_id, firstname, major) VALUES (4,'jack','biology');
 INSERT  INTO student (student_id, firstname, major) VALUES (5,'mike','computer');
 
 #UPADTE IN TABLE
 UPDATE student 
 SET major = 'bio'
 WHERE major= 'biology';
 SET SQL_SAFE_UPDATES=0;
 
 UPDATE student
 SET major = 'geo'
 WHERE firstname ='jack';

#DELETE FROM TABLE
 DELETE FROM student
 WHERE major='computer';
 DELETE FROM student 
 WHERE firstname='jack';
 SELECT*FROM student;
 
 #CONSTRAINTS
 #not null # unique
 CREATE TABLE STU(
 id int unique
 );
 INSERT INTO STU VALUES(111);
 SELECT*FROM STU;
 # if we do  INSERT INTO stu VALUES(111); it shows error
 #default
 CREATE TABLE STUd(
 id int unique,
 major varchar(20) DEFAULT 'UNDECIDED'
  );
  INSERT INTO STUd VALUES(113,'bio');
  INSERT INTO STUd(id) VALUES(114);
  SELECT*FROM STUd;
  
  #USING ADD,MODIFY,CHANGE,DROP,ALTOGETHER
  ALTER TABLE student
  ADD COLUMN age INT NOT NULL DEFAULT 18;
  ALTER TABLE student 
  MODIFY COLUMN age varchar(2);
  ALTER TABLE student 
  CHANGE age stu_age int;
  ALTER TABLE student
   DROP COLUMN stu_age;
   
   #TRUNCATE (to delete table data )
   SELECT*  FROM student;
   TRUNCATE TABLE student ;
  
 
 
 
  
 
 
 
 
 