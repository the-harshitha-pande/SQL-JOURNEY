--DATA DEFINATION LANGUAGE COMMANDS
--DDL COMMAND- CREATE
--create new table with id person_name birth_date and phone
create table persons(id int NOT NULL, person_name varchar(50) NOT NULL, birth_date date, phone varchar(15) NOT NULL, constraint pk_persons primary key(id))
--check the command 
select * from persons

--DDL COMMAND- ALTER
--add a new column called email to person table
alter table persons add email varchar(50) NOT NULL 
--check
select * from persons

--remove the column phone from persons table
alter table persons drop column phone 

--DDL COMMAND- DROP
--suppose there is a table n you want to remove table and data in it also to be deleted
drop table persons

--DATA MANUPULATION LANGUAGE COMMANDS
--DML COMMAND- INSERT (using values)
--insert new customers to customers table
insert into customers(id, first_name, country, score)
values(6,'Anna', ' USA', NULL),
      (7,'sam', NULL, 100)
--check
select * from customers

--INSERT(using select )
--insert data from 'customers' into ' persons'
insert into persons(id, person_name, birth_date, phone) select id,first_name,null,'unknown' from customers 
--check
select * from persons

--DML COMMAND- UPDATE
--change the score of the customer with id6 to 0
update customers set score =0 where id =6
--check
select * from customers

--change the score of the customer with id 7 to 0 and update the country 'uk'
update customers set score=0, country = 'UK' where id=7 
--check
select * from customers

--update all customers with a null score by setting new score=0 ( imaging 100s of customer n updating 1 at each time of them - really time consuming)
update customers set score=0 where score is NULL
--check
select * from customers where score is NULL

--DML COMMAND- DELETE(but table still exists- only selected columns can be deleted)
--delete all customers with id> 5
delete from customers where id > 5
--check
select * from customers
--(TRUNCATE- making whole table empty with one command with good speed. But the table still exists)

--COMPARISION OPERATOR
--retrive all customers from Gremany
select * from customers where country = 'germany'

--retrive all customers not from Gremany
select * from customers where country != 'germany'

--retrive customers with score greater than 500
select * from customers where score > 500

--retrive all customer with score 500 or greater
select * from customers where score >= 500

--retrive all customer with less then 500 score
select * from customers where score < 500

--retrive all customers with score 500 or less
select * from customers where score <= 500

--LOGICAL OPERATORS
--AND- all conditions muct be true
--retrive all customers who are from USA AND have score greater then 500
select * from customers where country= 'usa' AND score > 500

--OR- atleast one condition is true
--retrive all customers who are either from USA or have score greater then 500
select * from customers where country= 'usa' OR score > 500

--NOT- (reverse)excludes matching values
--retrive all customers with score not less then 500
select * from customers where NOT score < 500

--RANGE OPERATOR
--BETWEEN- check if value is in range or no
--retrive customers whose range of score is between 100-500
select * from customers where score BETWEEN 100 AND 500
--another method 
select * from customers where score >= 100 AND score <= 500

--MEMBERSHIP OPERATOR
--IN - check if value is existed in list 
--retrive all customers from either germany or usa
select * from customers where country IN('germany', 'usa')
--another method
select * from customers where country = 'germany' OR country ='usa'

--NOT IN-
select * from customers where country NOT IN('germany', 'usa')

--SEARCH OPERATOR
--LIKE- search for pattern in text
--find all customers whose name starts with 'M'
select * from customers where first_name LIKE 'M%'

--find all customers whose name contains 'r'
select * from customers where first_name LIKE '%r%'

--find all customers whose name contains 'r' in 3rs position
select * from customers where first_name LIKE '__r%'


