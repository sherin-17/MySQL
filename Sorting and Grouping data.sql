create database world_population;
use world_population;

create table country(
id int primary key,
country_name varchar(50),
population int,
area int
);

create table persons(
id int primary key,
fname varchar(50),
lname varchar(50),
population int,
rating decimal(2.2),
country_id int,
country_name varchar(50)
);

insert into country(id, country_name, population, area)
values (1, 'USA', 331002651, 9833520),
  (2, 'Canada', 37742154, 9984670),
  (3, 'UK', 67081000, 243610),
  (4, 'India', 1380004385, 3287590),
  (5, 'Australia', 25887600, 7692024),
  (6, 'Germany', 83149300, 357021),
  (7, 'France', 65273511, 643801),
  (8, 'Italy', 60359557, 301338),
  (9, 'China', 1443496281, 9596961),
  (10,'Japan', 127103388, 377944);
  
  insert into persons(id, fname, lname, population, rating, country_id, country_name)
  values (101,'alen', 'thomas', 331002651, 4.5, 1, 'UK'),
  (102, 'alex', 'mathew', 37742154, 4.2, 2, 'India'),
  (103, 'aden', 'Johnson', 67081000, 4.8, 3, 'USA'),
  (104, 'Ann', 'maria', 1380004385, 4.1, 4, 'Canada'),
  (105, 'reena', 'francis', 25887600, 4.6, 5, 'Australia'),
  (106, 'yadhu', 'krishna', 83149300, 4.3, 6, 'China'),
  (107, 'rayan', 'malik', 65273511, 4.9, 7, 'France'),
  (108, 'kripa', 'priya', 60359557, 4.4, 8, 'Italy'),
  (109, 'liya', 'jose', 1443496281, 4.7, 9, 'Finland'),
  (110, 'reha', 'manu', 127103388, 4.0, 10, 'Japan');
  
  select *from country;
  
  select *from persons;
  
select left(country_name,3)  from country;

select concat(fname,' ', lname) full_name from persons;

select count(DISTINCT country_name)'unique countries' from persons;

select max(population) from country;

select min(population) from persons;

 insert into persons(id, fname, lname, population, rating, country_id, country_name)
  values (111,'Rex', 'null', 331002651, 4.5, 1, 'Germany'),
  (112, 'nada', 'null', 37742154, 4.2, 2, 'India');
select *from persons;
select count(lname) count_lname from persons;

select count(*) from persons;

select population from country limit 3;

select *from country order by rand() limit 3;

select *from persons order by rating desc;

select country_name, sum(population)  totalpopulation from persons group by country_name;

select country_name, sum(population)  from persons group by country_name having sum(population)>50000;

select count(*), country_name, avg(rating) from persons group by country_name having count(*)>=2 order by avg(rating);






  
  
