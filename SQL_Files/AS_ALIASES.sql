use maharashtra_company;
#-----------------------AS – Aliases-----------------------
# 16. Write a query to display emp_id as 'Employee ID' and salary as 'Monthly Salary'.
select emp_id as Employee_ID, salary as Monthly_Salary
from employee;

# 17. Write a query using CONCAT to show full_name (first_name + ' ' + last_name) with alias 'Full_Name'.
select concat(first_name,' ',last_name) as Full_Name
from employee;

# 18. Write a query to calculate annual salary (salary * 12) and alias it as 'Annual CTC'.
select salary*12 as Annual_CTC
from employee;

# 19. Write a query to alias the department table as 'd' and select dept_name from it.
select dept_name
from department as d;

# 20. Write a query to display the email column aliased as 'Corporate Email'.
select email as Corporate_Email
from employee;

# 21. Write a query to count employees per city and alias the count as 'Headcount'.
select city,count(*) as Headcount
from employee
group by city;

# 22. Write a query that uses a table alias for employee (e) and selects e.first_name and e.salary.
select e.first_name, e.salary
from employee as e;

# 23. Write a query to show average salary per department with the alias 'Avg Salary'.
select dept_id, avg(salary) as Avg_Salary
from employee
group by dept_id;

# 24. Write a query to use UPPER(first_name) with alias 'Name in Caps'.
select upper(first_name) as Name_in_caps
from employee;

# 25. Write a query to display DATEDIFF(CURDATE(), date_of_joining) aliased as 'Days Employed'
select datediff(curdate(),date_of_joining) as Days_Employed
from employee;