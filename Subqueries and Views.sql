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
values ('Anu', 'jose', 'anujose@gmail.com', '1234567890', 'Flat 14B Aluva', 'Kochi', 'Kerala', '789654', 'India'),
('yadhu', 'krishna', 'yadhukrishna@gmail.com','7896543210', '123 SG street', 'Palakkad', 'Kerala', '8765432', 'India'),
('ann', 'maria', 'annmaria@gmail.com', '81234567890', '123 SM steet', 'Malappuram', 'Kerala', '567234', 'India'),
('Athulya', 'krishna', 'athulyakrishna@gmail.com', '678945312', 'Flat 3A ', 'Kozhikode', 'Kerala', '567899', 'India'),
('Anas', 'Muhammed', 'anasmuhammed@gmail.com', '6234567890', '13 Main street', 'palakkad', 'kerala', '654456', 'india'),


select  from customer;

create view customer_info as select concat(First_name," ", Last_name) Fullname,Email from customer;

select * from customer_info;

create view US_customers as select* from customer where country ='USA';

select * from US_customers;

create view customer_details as select concat (first_name,' ',last_name) full name,email,phone_no,state from customer;

select *from customer_details;

update Customer_details set Phone_no =9900876541 where state ='California';

select * from Customer_details;

set sql_safe_updates=0;

select State,count(*) customer_count from customer group by state having count(*)>5;

select state, count(*) customer_count from customer_details group by state;

select * from customer_details order by state;


