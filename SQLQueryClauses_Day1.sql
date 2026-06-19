-- Retrive all customer data
select * from customers

-- Retrive all order data
select * from orders

--Retrive each customer's name , country,and score
select 
first_name,
country,
score
from customers

--Retrive customers with a score not equal to 0
select * from customers where score != 0 

--Retrive customers from Germany
select * from customers where country = 'Germany'

--Retrive customers from Germany selecting specific columns
select first_name, country from customers where country = 'Germany'

--Retrive all customers and sort the result by the higest score first
select * from customers order by score desc

--Retrive all customers and sort the result by the higest score Last
select * from customers order by score asc

--Retrive all customers and do listed sorting by country and then by higest scores
select * from customers order by country asc, score desc

--Finding the total score for each country
select country,sum(score) from customers group by country

--adding or manupulating the name for new column created by group by(only for this query , database dosnt change )
select country,sum(score) as total_score from customers group by country

--Finding total score and total number of customers for each country
select country,sum(score) as total_score, count(id) as total_customers from customers group by country

--Filter using having clause: 
select country,sum(score) from customers where score>400 group by country having sum(score)>800

--distinct selection of country- unique list of all country
select distinct country from customers

--select top 3 columns 
select top 3* from customers

--select top3 customers with higest scores
select top 3* from customers order by score desc

--Get the 2 must recent orders
select top 2* from orders order by order_date Desc

--Combined execution :
select distinct top 2 first_name, sum(score) from customers where country = 'usa' group by country, first_name having sum(score)>500 order by first_name asc