--  MORE QUERIES

-- Find all employee's id's and names who were born after 1969
select emp_id, first_name, last_name from employee where birth_day >= '1970-01-01';

-- Find all female employees at branch 2
select * from employee where branch_id = 2 and sex = 'F';

-- Find all employees who are female & born after 1969 or who make over 80000
select * from employee where (birth_day >= '1970-01-01' and sex = 'F') or salary > 80000;

-- Find all employees born between 1970 and 1975
select * from employee where (birth_day <= '1975-01-01' and birth_day>= '1970-01-01');

-- Find all employees named Jim, Michael, Johnny or David
select * from employee where first_name in ('Jim', 'Michael', 'Johnny', 'David');

-- FUNCTIONS
-- Find the number of employees
select count(emp_id) from employee;
select count(super_id) from employee;

-- Find the number of female employees born after 1970
select count(emp_id) from employee where sex = 'F' and birth_day > '1971-01-01'; 

-- Find the average of all employee's salaries
select avg(salary) from employee;
select avg(salary) from employee where sex = 'M'; -- Male 

-- Find the sum of all employee's salaries
select sum(salary) from employee;

-- Find out how many males and females there are
select count(sex), sex from employee group by sex;

-- Find the total sales of each salesman
select sum(total_sales) , emp_id from works_with group by client_id;

-- Find the total amount of money spent by each client
select sum(total_sales), client_id from works_with group by client_id;