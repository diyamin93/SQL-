# FOR MORE COMMANDS
CREATE DATABASE STU;
USE STU;
CREATE TABLE student (
rollno int primary key,
firstname varchar(20),
marks varchar(20),
grade varchar(20),
city varchar(20)
);
INSERT INTO student
(rollno, firstname, marks, grade, city) VALUES
(101,"joy",78,"C","PUNE"),
(102,"smith",93,"A","mumbai"),
(103,"diy",45,"B","delhi"),
(104,"grey",67,"F","delhi"),
(105,"dane",34,"D","delhi"),
(106,"roy",23,"B","delhi");

# selectively choosing
SELECT firstname,city FROM student;
# for unique
SELECT DISTINCT city FROM student;

# USING CLAUSES(APPLIYING CONDITIONS)
#WHERE
SELECT * FROM student WHERE marks>40;
SELECT * FROM student WHERE city = "delhi";

# USING OPERATORS
#(+,-,*,%) comparision(=,!=,>=,>,<)(logical= AND ,OR,NOT,IN,BETWEEN,ALL,LIKE,ANY)(Bitwise AND,Bitwise OR)
#using AND
SELECT * FROM student WHERE marks > 60 AND city="mumbai" ;
#using OR
SELECT * FROM student WHERE marks>40 OR grade = "B";
#IN
SELECT * FROM student WHERE city IN("delhi");
#NOT 
SELECT * FROM student WHERE city NOT IN ("delhi","mumbai");
#LIMIT
SELECT * FROM student WHERE marks >20 LIMIT 3;
#BETWEEN 
SELECT * FROM student WHERE marks BETWEEN 40 AND 70;
#LIKE
SELECT * FROM student WHERE city LIKE "d%";



#ORDER BY ASC,DESC
SELECT * FROM student 
ORDER BY city;

SELECT * FROM student 
ORDER BY marks DESC
LIMIT 3;

#HAVING (count the no of students in each city where max marks cross 70.
SELECT city , count(rollno)
FROM student
GROUP BY city
HAVING MAX(marks)> 70;
 #using all in one
 SELECT city 
FROM student
WHERE grade ="A"
GROUP BY city
HAVING MAX(marks)> 70
ORDER BY city DESC;
 











