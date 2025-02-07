use worldpopulation;

CREATE TABLE Worker (
    Worker_Id INT PRIMARY KEY,
    FirstName CHAR(20),
    LastName CHAR(20),
    Salary INT,
    Joining_Date DATETIME,
    Department CHAR(20)
);

INSERT INTO Worker (Worker_Id, FirstName, LastName, Salary, JoiningDate, Department) 
VALUES (1, 'Liya', 'jose', 30000, '2023-01-20', 'IT'),
(2, 'abin', 'Mathew', 50000, '2023-06-10', 'finance'),
(3, 'nada', 'shakkir', 35000, '2022-08-10', 'hr'),
(4, 'krishna', 'kripa', 38000, '2023-06-13', 'IT'),
(5, 'ramya', 'haridas', 60000, '2020-09-19', 'marketing'),
(6, 'nayana', 'krishna', 65000, '2022-06-01', 'finance'),
(7, 'divya', 'manu', 50000, '2023-06-26', 'IT'),
(8, 'alex', 'paul', 45000, '2021-08-20', 'Sales'),
(9, 'rekha', 'nair', 55000, '2023-07-01', 'HR'),
(10, 'nila', 'varma', 35000, '2022-06-04', 'sales');

select * from worker;

delimiter # 
create procedure add_workers(IN id int,IN first_name Varchar(20),IN last_name Varchar(20),IN salary int,IN joinDate DATETIME,IN
department CHAR(25))
begin
 INSERT INTO Worker (Worker_Id, FirstName, LastName, Salary, JoiningDate, Department) VALUES
 (id, first_name, last_name, salary, joinDate, department);
end #
delimiter ;

call add_workers(11,'diya','francis',28000,'2022-07-20','FINANCE');
select * from worker;


delimiter # 
create procedure get_workerById(IN id int ,OUT p_salary int)
begin
	select salary into p_salary from worker where worker_id=id;
end #
delimiter ;

call get_workerById(2,@res);
select @res p_salary;


delimiter # 
create procedure update_workerById(IN id int ,IN dept varchar(20))
begin
	update worker set Department = dept where worker_id=id;
end #
delimiter ;

call update_workerById(2,'Sales');
select * from worker;

delimiter #
create procedure worker_count(IN dept varchar(20),OUT p_workerCount int)
begin
	select count(*) into p_workerCount from worker where Department=dept;
end #
delimiter ;

call worker_count('Finance',@res);
select @res worker_count;


delimiter #
create procedure worker_avgSalary(IN dept varchar(20),OUT p_avgSalary int)
begin
	select avg(Salary) into p_avgSalary from worker where Department=dept;
end #
delimiter ;

call worker_avgSalary('IT',@res);
select @res worker_avgSalary;
