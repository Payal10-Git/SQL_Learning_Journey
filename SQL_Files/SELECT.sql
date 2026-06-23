#------------------------SELECT – BASIC RETRIEVAL------------------------
# 1. Write a query to retrieve all columns from the employee table.
select * 
from employee;

# 2. Write a query to select only first_name, last_name, and salary from the employee table.
select first_name, last_name, salary
from employee;

# 3. Write a query to display all records from the department table.
select *
from department;

# 4. Write a query to retrieve distinct cities from the employee table.
select distinct(city)
from employee;

# 5. Write a query to find all employees with a salary greater than 80000.
select *
from employee
where salary >80000;

# 6. Write a query to retrieve employees who belong to dept_id = 1.
select *
from employee
where dept_id = 1;

# 7. Write a query to list all female employees (gender = 'F').
select *
from employee
where gender = 'F';

# 8. Write a query to find employees whose salary is between 50000 and 75000.
select *
from employee
where salary between 50000 and 75000;

# 9. Write a query to retrieve employees whose first_name starts with 'A'.
select *
from employee 
where first_name like 'A%';

# 10. Write a query to list employees who joined the company after 2018-01-01.
select *
from employee 
where date_of_joining > '2018-01-01';

# 11. Write a query to find all employees whose designation contains the word 'Manager'.
select *
from employee 
where designation like '%Manager%';

# 12. Write a query to retrieve employees who are located in Pune or Mumbai.
select *
from employee 
where city in ('Pune','Mumbai');

# 13. Write a query to list employees sorted by salary in descending order.
select *
from employee
order by salary desc;

# 14. Write a query to display the top 10 highest-paid employees.
select *
from employee
order by salary desc
limit 10;

# 15. Write a query to count the total number of employees in the employee table
select count(*)
from employee;