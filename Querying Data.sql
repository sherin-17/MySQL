create database world_population;
use world_population;

create table country(
id int primary key,
country_name varchar(50),
population decimal(10.2),
area decimal (10.2)
);

create table persons(
id int primary key,
fname varchar(50),
lname varchar(50),
population decimal(10.2),
rating decimal(2.2),
country_id int,
country_name varchar(50)
);

insert into country(id, country_name, population, area)
values (1, 'USA', 331002651.00, 9833520.00),
  (2, 'Canada', 37742154.00, 9984670.00),
  (3, 'UK', 67081000.00, 243610.00),
  (4, 'India', 1380004385.00, 3287590.00),
  (5, 'Australia', 25887600.00, 7692024.00),
  (6, 'Germany', 83149300.00, 357021.00),
  (7, 'France', 65273511.00, 643801.00),
  (8, 'Italy', 60359557.00, 301338.00),
  (9, 'China', 1443496281.00, 9596961.00),
  (10,'Japan', 127103388.00, 377944.00);
  
  insert into persons(id, fname, lname, population, rating, country_id, country_name)
  values (101,'alen', 'thomas', 331002651.00, 4.5, 1, 'UK'),
  (102, 'alex', 'mathew', 37742154.00, 4.2, 2, 'India'),
  (103, 'aden', 'Johnson', 67081000.00, 4.8, 3, 'USA'),
  (104, 'Ann', 'maria', 1380004385.00, 4.1, 4, 'Canada'),
  (105, 'reena', 'francis', 25887600.00, 4.6, 5, 'Australia'),
  (106, 'yadhu', 'krishna', 83149300.00, 4.3, 6, 'China'),
  (107, 'rayan', 'malik', 65273511.00, 4.9, 7, 'France'),
  (108, 'kripa', 'priya', 60359557.00, 4.4, 8, 'Italy'),
  (109, 'liya', 'jose', 1443496281.00, 4.7, 9, 'Finland'),
  (110, 'reha', 'manu', 127103388.00, 4.0, 10, 'Japan');
  
  select * from country;
  
  select * from persons;
 
 select distinct country_name from persons;
 
 select fname as firstname, lname as lastname from persons;
 
 select * from persons where rating > 4.0;
 
 select * from country where population > 1000000;
 
 select * from persons where country_name ='USA' or rating >4.5;
 
 select * from persons where country_name is null;
 
 select * from persons where country_name in ('USA','Canada','UK');
 
 select * from persons where country_name not in ('India','Australia');
 
 select * from country where population between 500000 and 2000000;
 
 select * from country where country_name not like 'C%';
  
  
  
  
  
  
