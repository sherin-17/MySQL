create database hrmanagement;
use hrmanagement;

create table managers(
manager_id int primary key,
first_name varchar(20) not null,
last_name varchar(20) not null,
dob date not null,
age int check (age>18),
last_update date not null,
gender varchar(10) not null,
department varchar(50) not null,
salary decimal(10,2) not null
);

insert into managers(manager_id, first_name, last_name, dob, age, last_update, gender, department, salary)
values  ( 1, 'John', 'henn', '1990-01-01', 32, '2022-01-01', 'Male', 'IT', 30000),
  (2, 'Aaliya', 'thomas', '1992-02-02', 30, '2022-02-02', 'Female', 'HR', 25000),
  (3, 'alen', 'John', '1985-03-03', 37, '2022-03-03', 'Male', 'Marketing', 35000),
  (4, 'krishna', 'priya', '1995-04-04', 27, '2022-04-04', 'Female', 'Finance', 28000),
  (5, 'David', 'jo', '1980-05-05', 42, '2022-05-05', 'Male', 'IT', 32000),
  (6, 'Sara', 'kuriyan', '1991-06-06', 31, '2022-06-06', 'Female', 'HR', 26000),
  (7, 'Kevin', 'mathew', '1982-07-07', 40, '2022-07-07', 'Male', 'Marketing', 33000),
  (8, 'Isha', 'alex', '1993-08-08', 29, '2022-08-08', 'Female', 'Finance', 29000),
  (9, 'Adhi', 'Kumar', '1978-09-09', 44, '2022-09-09', 'Male', 'IT', 31000),
  (10, 'Rena', 'Jose', '1994-10-10', 28, '2022-10-10', 'Female', 'HR',28000);
  
select *from managers;

select first_name, last_name, dob from managers where manager_id=1;

select first_name, last_name, salary *12 as annual_income from managers;

select *from managers where first_name <> 'Aaliya';

select *from managers where department= 'IT' and salary >25000;

select *from managers where salary between 10000 and 35000;


