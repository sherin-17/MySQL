alter table persons add dob date;

update persons set dob = '1985-06-12' where id = 1;
update persons set dob = '1990-01-04' where id = 2;
update persons set dob = '1994-10-01' where id = 3;
update persons set dob = '1991-03-20' where id = 4;
update persons set dob = '1989-07-29' where id = 5;
update persons set dob = '1993-12-08' where id = 6;
update persons set dob = '1987-10-18' where id = 7;
update persons set dob = '1992-04-30' where id = 8;
update persons set dob = '1988-05-16' where id = 9;
update persons set dob = '1983-09-24' where id = 10;

select * from persons;

create function calculate_age(dob date)
returns INT
deterministic
begin
return timesstampdiff(year,dob,curdate());
end;

select id,fname,lname,dob,calculate_age(dob) as age from persons;

select country_name, length(country_name) as name_length from country;

select country_name, left(country_name, 3) as 'first three characters' from country;

select upper(country_name) as uppercase,lower(country_name) as lowercase from country;