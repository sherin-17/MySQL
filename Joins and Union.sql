use worldpopulation;

select * from persons;

select p.fnam, p.lname, c.country_namenfrom persons p inner join country c on p.country_id = c.id;

select c.country_name, p.fname,p.lname from country c left join person p on p.country_name =c.country_name;

select c.country_name, p.fname,p.lname from country c right join person p on p.country_name =c.country_name;

select distinct c.country_name from country c inner join persons p on p.country_name =c.country_name;

select c.country_name from country c inner join persons p on p.country_name =c.country_name;

select round(rating) from persons;