create database worldpopulation;
use worldpopulation;

select * from persons; 
select * from country;

select country_name, count(*) no_persons from persons group by country_name;

select country_name, count(*) no_persons from persons group by country_name order by count(*)desc;

select country_name, avg(rating) from persons group by country_name having avg(rating)>3.0;

select country_name, rating from persons where rating= (select rating from persons where country_name= 'USA');

select country_name, population from country where population >(select avg(population) from country);

create database product;
use product;

create table customer( 
    Customer_Id INT PRIMARY KEY,
    First_name VARCHAR(30) NOT NULL,
    Last_name VARCHAR(30) NOT NULL,
    Email VARCHAR(50) UNIQUE NOT NULL,
    Phone_no VARCHAR(15) NOT NULL,
    Address TEXT,
    City VARCHAR(50),
    State VARCHAR(50),
    Zip_code VARCHAR(10),
    Country VARCHAR(50) NOT NULL
    );
    
desc customer;
    
insert into customer (first_name, last_name, email, phone_no, address, city, state, zip_code, country)
values ('Yadhu','Krishna', 'yadhukrishna@gmail.com, 1234567890, '123 main street','Palakkad','Kerala','987654','India'),
('Alex','jose', 'alexjose@gmail.com, 9876543210, '333 MG road','Kozhikode''Kerala','678123','India'),
('divya','rajan', 'divyarajan@gmail.com, 8765432190, 'Flat 4B HN Street','Malappuram','Kerala','8765432','India'),
('rudhra','veena', 'rudhraveena@gmail.com, 7865432190, '44 payyoli','Palakkad','Kerala','675432','India'),
('Albin','christy', 'albinchristy@gmail.com, 7654321789, 'Flat 13A kochi','Ernakulam','Kerala','789654','India');

select  from customer;

create view customer_info as select concat(First_name," ", Last_name) Fullname,Email from customer;

select * from customer_info;

create view US_customers as select* from customer where country ='USA';

select * from US_customers;

create view customer_details as select concat (first_name,' ',last_name) full name,email,phone_no,state from customer;

select *from customer_details;

update Customer_details set Phone_no=9900876541 where state='California';

select * from Customer_details;

set sql_safe_updates=0;

select State,count(*) customer_count from customer group by state having count(*)>5;

select state, count(*) customer_count from customer_details group by state;

select * from customer_details order by state;

