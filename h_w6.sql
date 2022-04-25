select * from customer where country = 'Canada';

select country from customer;

select count(*) from orders;

select max(total_amount) from orders;

select sum(total_amount) from orders;

select sum(total_amount) from orders where order_date = '12/04/2014';

select round(avg(total_amount)) from orders;

select id as customer_id,first_name as customer_first_name, average_amount from customer c join(select customer_id,round( avg(total_amount)) as average_amount from orders  group by customer_id) as o on c.id=o.customer_id order by average_amount desc;

select first_name, country from customer where country in('Brazil','Spain');

select * from orders where order_date between '2013-01-05' and '2014-04-06' and total_amount < 100;

select * from customer where country in('Spain', 'Sweden', 'Germany', 'France') order by country;

select country, count(*) from supplier group by country;

select first_name from customer where first_name like 'Jo%';

select first_name from customer where first_name like '____a';

select country, count(*) as amount_of_customer from customer group by country;

select country, count(*) as amount_of_customer from customer group by country order by count(*) desc;

select id as customer_id, first_name as customers_first_name, sum_of_all_orders, amount_of_orders from customer cus join(
select customer_id, sum(total_amount) as sum_of_all_orders, count(total_amount) as amount_of_orders from orders group by customer_id) as o on
cus.id = o.customer_id order by sum_of_all_orders desc;

select id as customer_id, first_name as customers_first_name, sum_of_all_orders, amount_of_orders from customer cus join(
select customer_id, sum(total_amount) as sum_of_all_orders, count(total_amount > 10) as amount_of_orders from orders group by customer_id) as o on
cus.id = o.customer_id where amount_of_orders > 20 order by amount_of_orders;

