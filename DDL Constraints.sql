create database sales;
use sales;

create table orders (
order_id int primary key not null,
customer_name varchar(20) not null, 
product_category varchar(50),
ordered_item varchar(100) not null,
contact_no varchar(15) unique not null
);

alter table orders
add order_quantity int;

rename table orders to sales_orders;


insert into sales_orders(order_id, customer_name, product_category, ordered_item, contact_no, order_quantity)
values (1, 'Eve Adams', 'electronics', 'laptop','9876543210', 2),
(2, 'Mathew Thomas', 'fashion', 'dress','1234567890', 1 ),
(3, 'Laya Prince', 'home goods', 'furniture','0234567891', 3 ),
(4, 'Alice christy', 'Beauty', 'Makeup','3214567890', 2 ),
(5, 'Adam joe', 'Sports', 'Basketball','7812340569', 1 ),
(6, 'Emily john', 'Toys', 'Doll','5432106789', 2 ),
(7, 'David jee', 'Books', 'Novel','6655432218', 1 ),
(8, 'sarah joseph', 'Music', 'Guitar','8866775544', 2 ),
(9, 'Melvin Laike', 'Art', 'Painting','9992231456', 1 ),
(10, 'Angel Maria', 'Appliances', 'Microwave','7774452414', 2 );

select * from sales orders;

select customer_name, ordered_item from sales_orders;

update sales_orders
set ordered_item = 'smart phone' where order_id = 1;

drop table sales_orders;








