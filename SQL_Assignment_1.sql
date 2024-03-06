-- (1) Write a SQL statement to find the total purchase amount of all orders. 17541.18
	select sum(purch_amt) as Total_Purchase_Amount from orders

-- (2) Write a SQL statement to find the average purchase amount of all orders. 1461.765
	select avg(purch_amt) as Average_Purchase_Amount from orders

-- (3) Write a SQL statement to find the number of salesmen currently listing for all of their customers.
	select count(distinct(salesman_id)) as Number_of_Salesman from customer

-- (4) Write a SQL statement to know how many customers have listed their names.
	select count(customer_id) as Number_of_Customers from customer

-- (5) Write a SQL statement to find the number of customers who get at least a gradation for his/her performance.
	select count(customer_id) as No_of_Customer_get_graduation from customer where grade is not null

-- (6) Write a SQL statement to get the maximum purchase amount of all the orders.
	select max(purch_amt) as Maximum_Purchase_Amount from orders

-- (7) Write a SQL statement to get the minimum purchase amount of all the orders.
	select min(purch_amt) as Maximum_Purchase_Amount from orders

-- (8) Write a SQL statement which selects the highest grade for each of the cities of the customers.
	select city, max(grade) as Maximum_Graduation from customer group by city

-- (9) Write a SQL statement to find the highest purchase amount ordered by each customer with their ID and highest purchase amount.
	select customer_id, max(purch_amt) as Highest_Purchase_Amount from orders group by customer_id

-- (10) Write a SQL statement to find the highest purchase amount ordered by each customer on a particular date with their ID, order date, and highest purchase amount.
	select customer_id, ord_date as Order_Date, max(purch_amt) as Highest_Purchase_Amount from orders group by ord_date, customer_id

-- (11) Write a SQL statement to find the highest purchase amount on a date '2012-08-17' for each salesman with their ID.
	select salesman_id, max(purch_amt) as Highest_Purchase_Amount from orders where ord_date='2012-08-17' group by salesman_id

-- (12) Write a SQL statement to find the highest purchase amount with their ID and order date, for only those customers who have the highest purchase amount in a day is more than 2000.
	select customer_id, ord_date as Order_Date, max(purch_amt) as Highest_Purchase_Amount from orders where purch_amt > 2000 group by ord_date, customer_id

-- (13) Write a SQL statement to find the highest purchase amount with their ID and order date, for those customers who have a higher purchase amount in a day is within the range 2000 and 6000.
	select customer_id, ord_date as Order_Date, max(purch_amt) as Highest_Purchase_Amount from orders where purch_amt between 2000 and 6000 group by ord_date, customer_id

-- (14) Write a SQL statement to find the highest purchase amount with their ID and order date, for only those customers who have a higher purchase amount in a day is within the list 2000, 3000, 5760, and 6000.
	select customer_id, ord_date as Order_Date, max(purch_amt) as Highest_Purchase_Amount from orders group by ord_date, customer_id HAVING max(purch_amt) IN (2000, 3000, 5760, 6000);

-- (15) Write a SQL statement to find the highest purchase amount with their ID, for only those customers whose ID is within the range 3002 and 3007.
	select customer_id, max(purch_amt) as Highest_Purchase_Amount from orders where customer_id between 3002 and 3007 group by customer_id

-- (16) Write a SQL statement to display customer details (ID and purchase amount) whose IDs are within the range 3002 and 3007 and highest purchase amount is more than 1000.
	select customer_id, max(purch_amt) as Highest_Purchase_Amount from orders where customer_id between 3002 and 3007 group by customer_id having max(purch_amt) > 1000

-- (17) Write a SQL statement to find the highest purchase amount with their ID, for only those salesmen whose ID is within the range 5003 and 5008.
	select salesman_id, max(purch_amt) as Highest_Purchase_Amount from orders where salesman_id between 5003 and 5008 group by salesman_id

-- (18) Write a SQL statement that counts all orders for a date August 17th, 2012.
	select count(ord_no) as No_of_orders from orders where ord_date='2012-08-17'

-- (19) Write a SQL statement that counts the number of salesmen for whom a city is specified. Note that there may be spaces or no spaces in the city column if no city is specified.
	select count(salesman_id) as No_of_Salesman from salesman where TRIM(city) <> ''

-- (20) Write a query that counts the number of salesmen with their order date and ID registering orders for each day.
	select ord_date, salesman_id, count(*) as No_of_Orders from orders group by ord_date, salesman_id

-- (21) Write a SQL query to calculate the average price of all the products.
	select avg(PRO_PRICE) as Average_Price_of_Products from item_mast

-- (22) Write a SQL query to find the number of products with a price more than or equal to Rs.350.
	select count(*) as No_of_Products from item_mast where PRO_PRICE > 350

-- (23) Write a SQL query to display the average price of each company's products, along with their code.
	select PRO_COM, avg(PRO_PRICE) as Average_Price_of_Products from item_mast group by PRO_COM

-- (24) Write a query in SQL to find the sum of the allotment amount of all departments.
	select sum(DPT_ALLOTMENT) as Sum_of_Allotment from emp_department

-- (25) Write a query in SQL to find the number of employees in each department along with the department code.
	select EMP_DEPT, count(EMP_IDNO) as No_of_Employee_In_Dept from emp_details group by EMP_DEPT