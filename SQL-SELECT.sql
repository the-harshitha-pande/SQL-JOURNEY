--sql select query
-- retrive all customer data
select * 
from customers

-- retrive all orders
select *
from orders

--sql select few columns(choose columns)
-- retrive each customer's name,country and score
select first_name,country,score from customers --order of col can be different

--sql where- filter you data
--retrive customers with a score not equal to 0
select * from customers where score != 0

--retrive customers from germany
select * from customers where country = 'germany'
select first_name,score from customers where country = 'germany'

--sql OrderBy - sorting data
--retrive all customers and sort result by higest score 1st
select * from customers Order By score desc

-- sort by lowest score
select * from customers order by score asc

--sql nested sorting 
--retrive all customers and sort result by country and then by higest score
select * from customers order by country asc, score desc --score 900 at end because table sorted with country asc before score

--sql group by -Aggregating the data
--find total score of each score
select country, sum(score) from customers group by country
-- add col name
select country , sum(Score) as Total_score from customers group by country

--find total score and total number of customers for each country
select country,sum(score) as Total_score , count(id) as total_customers from customers group by country

--sql having - technique 2 to filter the data(after using aggregation)
--find the average score for each country considering only customers with a score not equal to 0 and return only those countries with average score>430
select  country,avg(score) as avg_score from customers where score !=0 group by country having avg(score) > 430

--sql distinct - return unique list of all countries
select distinct country from customers

--sql top-
select top 3 * from customers order by score desc

--2 most recent record
select top 2 * from orders order by order_date desc

