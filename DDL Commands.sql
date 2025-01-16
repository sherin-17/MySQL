create database school;
use school;

create table student(
rollno INT,
name VARCHAR(20),
marks INT,
grade CHAR(1)
);

DESC student;

insert into student (rollno, name, marks, grade)
values
(1, 'ayisha' , 83.25, 'A'),
(2, 'liya' ,90.00, 'A'),
(3, 'sherin' ,95.00, 'A'),
(4, 'riha' ,78.50, 'B'),
(5, 'hala' ,75.25, 'B');

select * from student;

alter table student
add contact VARCHAR(20);

alter table student 
drop column grade;

rename table student to classten;

DESC classten;

truncate table classten;

drop table classten;
