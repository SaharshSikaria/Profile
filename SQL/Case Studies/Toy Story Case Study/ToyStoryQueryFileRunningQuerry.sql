-- Performing some Business related Querries

-- Inserting New Entries
Insert into customers values
(495,'Diecast Collectables','Franco','Valarie','Boston','MA','51003','USA','1188',85100),
(496,'Kelly\'s Gift Shop','Snowden','Tony','Auckland  ','NULL','NULL','New Zealand','1612',110000);

-- It was a decesion made by the management that the office in Paris will only be our sales office and all the 
-- employees there would be given the job designation - 'Sales Rep"
UPDATE Employees 
SET jobTitle = 'Sales Rep'
Where officeCode = 4;

-- It was decided by the management that we will no longer sell miniatures of Boats.
Delete from Productlines
where productline = 'Boats' ; 

-- To perform calculations easily, we decided to convert the quantity ordered variable to int from varchar
ALTER TABLE orderdetails
MODIFY COLUMN quantityOrdered INT;

-- Enlisting all the Sales Rep
Select firstName, lastName, jobTitle from employees where jobtitle = 'Sales Rep';

-- Total Number of employees
Select count(*) as Total_Number_of_Employees from employees;

-- Number of Customers from Australia
Select count(*) as Australia_Customers_Count from customers where country = 'Australia';

-- calculate the sum of quantity that is in stock for the product vendor 'Red Start Diecast' and the product line 'Vintage Cars'.
select quantityInStock, productVendor, productLine from products
where productVendor = 'Red Start Diecast' and productLine = 'Vintage Cars';

-- Finding the number of products whoose product code starts with S18 and their unit price is greater than 150.
select count(*) as Number_of_Such_Products from orderdetails where productCode like 'S18%' and priceEach > 150;

-- Top 3 Countries with maximum number of customers
select country, count(customerNumber) as Country_Wise_Customers from customers
group by country
order by Country_Wise_Customers desc limit 3;

-- Find out the average credit limit that the company allows for the customers of Singapore
select country, avg(creditLimit) as Avg_credit_limit from customers
where country= 'Singapore';

-- What is the total amount due from 'Euro+ Shopping Channel'
select customerNumber, sum(amount) as total_amount from payments
where customerNumber = (
select customerNumber from customers
where customerName= 'Euro+ Shopping Channel');

-- Which month received the maximum amoun of payment and what was the amount?
select month(paymentDate) as payment_month, sum(amount) as amount_sum
from payments
group by payment_month
order by amount_sum desc limit 1;

-- What is the shipped date of the maximum quantity that was ordered for the product name '1968 Ford Mustang'?
select shippedDate from orders
where orderNumber = 
(
	select orderNumber
	from 
    (
		select quantityOrdered, orderNumber from orderdetails
		where productCode = 
        (
			select productCode
			from products
			where productName = '1968 Ford Mustang'
		)
	) max_order_no
	where quantityOrdered = 
    (
		select max(quantityOrdered)
		from orderdetails
		where productCode = 
		(
			select productCode
            from products
			where productName = '1968 Ford Mustang'
		)
	)
);

-- What is the average value of the credit limit that corresponds to the customers who have been contacted by the employees from the 'Tokyo' office?
select avg(creditLimit) from customers c inner join employees e on c.salesRepEmployeeNumber = e.employeeNumber
where officeCode = 
(
 select officeCode
 from offices
 where office_city = 'Tokyo'
 );
 
 -- Find the customer that did the least business in terms of payment amount.
select customerName, customerNumber, sum(amount) as sum_amount 
from payments p left join customers c using(customerNumber)
group by customerNumber
order by sum_amount asc
limit 5;

-- In which office does the employee with the job title 'VP Marketing' work?
select office_city
from employees left join offices using(officeCode)
where jobTitle = 'VP Marketing';

