#(1) Create a database named employee, then import data_science_team.csv proj_table.csv and emp_record_table.csv into the employee database from the given resource
Create database employee;
Use employee;
Create table data_science_team(
employee_id varchar(5),
first_name char(12),
last_name char(12),
gender char(1),
role char(50),
department char(20),
experience int unsigned,
country char(10),
continent char(25)
);

Create table proj_table(
project_id varchar(5),
project_name char(30),
domain char(15),
start_date varchar(10),
closure_date varchar(10),
dev_qtr varchar(2),
status char(10)
);

Create table emp_record_table(
employee_id varchar(5),
first_name char(12),
last_name char(12),
gender char(1),
role char(50),
department char(20),
experience int unsigned,
country char(10),
continent char(25),
salary int unsigned,
employee_rating int unsigned,
manager_id varchar(5),
project_id varchar(5)
);

Insert into data_science_team(employee_id, first_name, last_name, gender, role, department, experience, country, continent)
values
('E005', 'Eric', 'Hoffman', 'M', 'LEAD DATA SCIENTIST', 'FINANCE', 11, 'USA', 'NORTH AMERICA'),
('E010', 'William', 'Butler', 'M', 'LEAD DATA SCIENTIST', 'AUTOMOTIVE', 12, 'FRANCE', 'EUROPE'),
('E052', 'Dianna', 'Wilson', 'F', 'SENIOR DATA SCIENTIST', 'HEALTHCARE', 6, 'CANADA', 'NORTH AMERICA'),
('E057', 'Dorothy', 'Wilson', 'F', 'SENIOR DATA SCIENTIST', 'HEALTHCARE', 9, 'USA', 'NORTH AMERICA'),
('E204', 'Karene', 'Nowak', 'F', 'SENIOR DATA SCIENTIST', 'AUTOMOTIVE', 8, 'GERMANY', 'EUROPE'),
('E245', 'Nian', 'Zhen', 'M', 'SENIOR DATA SCIENTIST', 'RETAIL', 6, 'CHINA', 'ASIA'),
('E260', 'Roy', 'Collins', 'M', 'SENIOR DATA SCIENTIST', 'RETAIL', 7, 'INDIA', 'ASIA'),
('E403', 'Steve', 'Hoffman', 'M', 'ASSOCIATE DATA SCIENTIST', 'FINANCE', 4, 'USA', 'NORTH AMERICA'),
('E478', 'David', 'Smith', 'M', 'ASSOCIATE DATA SCIENTIST', 'RETAIL', 3, 'COLOMBIA', 'SOUTH AMERICA'),
('E505', 'Chad', 'Wilson', 'M', 'ASSOCIATE DATA SCIENTIST', 'HEALTHCARE', 5, 'CANADA', 'NORTH AMERICA'),
('E532', 'Claire', 'Brennan', 'F', 'ASSOCIATE DATA SCIENTIST', 'AUTOMOTIVE', 3, 'GERMANY', 'EUROPE'),
('E620', 'Katrina', 'Allen', 'F', 'JUNIOR DATA SCIENTIST', 'RETAIL', 2, 'INDIA', 'ASIA'),
('E640', 'Jenifer', 'Jhones', 'F', 'JUNIOR DATA SCIENTIST', 'RETAIL', 1, 'COLOMBIA', 'SOUTH AMERICA');

Insert into proj_table(project_id, project_name, domain, start_date, closure_date, dev_qtr, status)
values
('P103', 'Drug Discovery', 'HEALTHCARE', '2021-04-06', '2021-06-20', 'Q1', 'DONE'),
('P105', 'Fraud Detection', 'FINANCE', '2021-04-11', '2021-06-25', 'Q1', 'DONE'),
('P109', 'Market Basket Analysis', 'RETAIL', '2021-04-12', '2021-06-30', 'Q1', 'DELAYED'),
('P204', 'Supply Chain Management', 'AUTOMOTIVE', '2021-07-15', '2021-09-28', 'Q2', 'WIP'),
('P302', 'Early Detection of Lung Cancer', 'HEALTHCARE', '2021-10-08', '2021-12-18', 'Q3', 'YTS'),
('P406', 'Customer Sentiment Analysis', 'RETAIL', '2021-07-09', '2021-09-24', 'Q2', 'WIP');

Insert into emp_record_table(employee_id, first_name, last_name, gender, role, department, experience, country, continent, salary, employee_rating, manager_id, project_id)
values
('E001', 'Arthur', 'Black', 'M', 'PRESIDENT', 'ALL', 20, 'USA', 'NORTH AMERICA', 16500, 5, NULL, NULL),
('E005', 'Eric', 'Hoffman', 'M', 'LEAD DATA SCIENTIST', 'FINANCE', 11, 'USA', 'NORTH AMERICA', 8500, 3, 'E103', 'P105'),
('E010', 'William', 'Butler', 'M', 'LEAD DATA SCIENTIST', 'AUTOMOTIVE', 12, 'FRANCE', 'EUROPE', 9000, 2, 'E428', 'P204'),
('E052', 'Dianna', 'Wilson', 'F', 'SENIOR DATA SCIENTIST', 'HEALTHCARE', 6, 'CANADA', 'NORTH AMERICA', 5500, 5, 'E083', 'P103'),
('E057', 'Dorothy', 'Wilson', 'F', 'SENIOR DATA SCIENTIST', 'HEALTHCARE', 9, 'USA', 'NORTH AMERICA', 7700, 1, 'E083', 'P302'),
('E083', 'Patrick', 'Voltz', 'M', 'MANAGER', 'HEALTHCARE', 15, 'USA', 'NORTH AMERICA', 9500, 5, 'E001', NULL),
('E103', 'Emily', 'Grove', 'F', 'MANAGER', 'FINANCE', 14, 'CANADA', 'NORTH AMERICA', 10500, 4, 'E001', NULL),
('E204', 'Karene', 'Nowak', 'F', 'SENIOR DATA SCIENTIST', 'AUTOMOTIVE', 8, 'GERMANY', 'EUROPE', 7500, 5, 'E428', 'P204'),
('E245', 'Nian', 'Zhen', 'M', 'SENIOR DATA SCIENTIST', 'RETAIL', 6, 'CHINA', 'ASIA', 6500, 2, 'E583', 'P109'),
('E260', 'Roy', 'Collins', 'M', 'SENIOR DATA SCIENTIST', 'RETAIL', 7, 'INDIA', 'ASIA', 7000, 3, 'E583', 'NA'),
('E403', 'Steve', 'Hoffman', 'M', 'ASSOCIATE DATA SCIENTIST', 'FINANCE', 4, 'USA', 'NORTH AMERICA', 5000, 3, 'E103', 'P105'),
('E428', 'Pete', 'Allen', 'M', 'MANAGER', 'AUTOMOTIVE', 14, 'GERMANY', 'EUROPE', 11000, 4, 'E001', NULL),
('E478', 'David', 'Smith', 'M', 'ASSOCIATE DATA SCIENTIST', 'RETAIL', 3, 'COLOMBIA', 'SOUTH AMERICA', 4000, 4, 'E583', 'P109'),
('E505', 'Chad', 'Wilson', 'M', 'ASSOCIATE DATA SCIENTIST', 'HEALTHCARE', 5, 'CANADA', 'NORTH AMERICA', 5000, 2, 'E083', 'P103'),
('E532', 'Claire', 'Brennan', 'F', 'ASSOCIATE DATA SCIENTIST', 'AUTOMOTIVE', 3, 'GERMANY', 'EUROPE', 4300, 1, 'E428', 'P204'),
('E583', 'Janet', 'Hale', 'F', 'MANAGER', 'RETAIL', 14, 'COLOMBIA', 'SOUTH AMERICA', 10000, 2, 'E001', NULL),
('E612', 'Tracy', 'Norris', 'F', 'MANAGER', 'RETAIL', 13, 'INDIA', 'ASIA', 8500, 4, 'E001', NULL),
('E620', 'Katrina', 'Allen', 'F', 'JUNIOR DATA SCIENTIST', 'RETAIL', 2, 'INDIA', 'ASIA', 3000, 1, 'E612', 'P406'),
('E640', 'Jenifer', 'Jhones', 'F', 'JUNIOR DATA SCIENTIST', 'RETAIL', 1, 'COLOMBIA', 'SOUTH AMERICA', 2800, 4, 'E612', 'P406');

Select * from proj_table;

#(2) Create an ER diagram for the given employee database
-- steps are: database -> reverse engineer -> follow prompt 

#(3) Write a query to fetch EMP_ID, FIRST_NAME, LAST_NAME, GENDER, and DEPARTMENT from the employee record table, and make a list of employees and details of their department
SELECT employee_id, concat(first_name, ' ', last_name) as full_name, gender, department 
FROM emp_record_table
Order by department, full_name;

#(4) Write a query to fetch EMP_ID, FIRST_NAME, LAST_NAME, GENDER, DEPARTMENT, and EMP_RATING if the EMP_RATING is:  less than two, greater than four, between two and four
Select employee_id, concat(first_name, ' ', last_name) as full_name, gender, department, employee_rating
From emp_record_table
Where employee_rating <2 or employee_rating > 4 or (employee_rating between 2 and 4);

#(5) Write a query to concatenate the FIRST_NAME and the LAST_NAME of employees in the Finance department from the employee table and then give the resultant column alias as NAME
Select concat(first_name, ' ', last_name) as Name
From emp_record_table
Order by department = 'Finance';

#(6) Write a query to list only those employees who have someone reporting to them. Also, show the number of reporters (including the President)
SELECT manager.employee_id, concat (manager.first_name, ' ', manager.last_name) as full_name, COUNT(report.employee_id) AS num_reporters
FROM emp_record_table AS manager
JOIN emp_record_table AS report ON manager.employee_id = report.manager_id
GROUP BY manager.employee_id, manager.first_name, manager.last_name
HAVING COUNT(report.employee_id) > 0;

#(7) Write a query to list down all the employees from the healthcare and finance departments using union. Take data from the employee record table
SELECT employee_id, concat(first_name, ' ', last_name) as full_name, gender, role, department, experience, country, continent, salary, employee_rating, manager_id, project_id
FROM emp_record_table
WHERE department = 'HEALTHCARE'
UNION
SELECT employee_id, concat(first_name, ' ', last_name) as full_name, gender, role, department, experience, country, continent, salary, employee_rating, manager_id, project_id
FROM emp_record_table
WHERE department = 'FINANCE';

#(8) Write a query to list down employee details such as EMP_ID, FIRST_NAME, LAST_NAME, ROLE, DEPARTMENT, and EMP_RATING grouped by dept. Also include the respective employee rating along with the max emp rating for the department.
Select employee_id, concat(first_name, ' ', last_name) as full_name, role, department, employee_rating
From emp_record_table
where (department, employee_rating) In (
Select department, max(employee_rating)
From emp_record_table
group by department
);
 
#(9) Write a query to calculate the minimum and the maximum salary of the employees in each role. Take data from the employee record table
Select department, min(salary) as min_salary, max(salary) as max_salary
From emp_record_table
Group by department;

#(10) Write a query to assign ranks to each employee based on their experience. Take data from the employee record table
SELECT employee_id, concat (first_name, ' ', last_name) as full_name, experience,
       RANK() OVER (ORDER BY experience DESC) AS experience_rank
FROM emp_record_table;

#(11) Write a query to create a view that displays employees in various countries whose salary is more than six thousand. Take data from the employee record table
Create view highest_salary_employees as 
Select employee_id, concat(first_name, ' ',last_name) as full_name, gender, department, country, salary
From emp_record_table
Where salary > 6000;

Select * from highest_salary_employees;

# (12) Write a nested query to find employees with experience of more than ten years. Take data from the employee record table
Select employee_id, concat(first_name, ' ', last_name) as full_name, experience
From emp_record_table
Where experience > 10;

#(13) Write a query to create a stored procedure to retrieve the details of the employees whose experience is more than three years. Take data from the employee record table
DELIMITER //

CREATE PROCEDURE GetEmployeesWithExperience()
BEGIN
    SELECT employee_id, concat(first_name, ' ', last_name) as full_name, gender, role, department, experience, country, continent, salary, employee_rating, manager_id, project_id
    FROM emp_record_table
    WHERE experience > 3;
END //

DELIMITER ;

Call GetEmployeesWithExperience();

#(14) Write a query using stored functions in the project table to check whether the job profile assigned to each employee in the data science team matches the organization’s set standard. 
-- The standard being:
-- For an employee with experience less than or equal to 2 years assign 'JUNIOR DATA SCIENTIST',

-- For an employee with the experience of 2 to 5 years assign 'ASSOCIATE DATA SCIENTIST',

-- For an employee with the experience of 5 to 10 years assign 'SENIOR DATA SCIENTIST',

-- For an employee with the experience of 10 to 12 years assign 'LEAD DATA SCIENTIST',

-- For an employee with the experience of 12 to 16 years assign 'MANAGER'.

DELIMITER //

CREATE FUNCTION GetStandardRole(experience INT)
RETURNS VARCHAR(30)
DETERMINISTIC
BEGIN
    DECLARE role VARCHAR(30);

    IF experience <= 2 THEN
        SET role = 'JUNIOR DATA SCIENTIST';
    ELSEIF experience > 2 AND experience <= 5 THEN
        SET role = 'ASSOCIATE DATA SCIENTIST';
    ELSEIF experience > 5 AND experience <= 10 THEN
        SET role = 'SENIOR DATA SCIENTIST';
    ELSEIF experience > 10 AND experience <= 12 THEN
        SET role = 'LEAD DATA SCIENTIST';
    ELSEIF experience > 12 AND experience <= 16 THEN
        SET role = 'MANAGER';
    ELSE
        SET role = 'UNASSIGNED';
    END IF;

    RETURN role;
END //

DELIMITER ;

SELECT employee_id, 
       first_name, 
       last_name, 
       experience, 
       GetStandardRole(experience) AS role
FROM emp_record_table;

#(15) Create an index to improve the cost and performance of the query to find the employee whose FIRST_NAME is ‘Eric’ in the employee table after checking the execution plan
EXPLAIN SELECT * FROM emp_record_table WHERE first_name = 'Eric';
CREATE INDEX idx_first_name ON emp_record_table (first_name);
SHOW INDEX FROM emp_record_table WHERE Key_name = 'idx_first_name';

#(16) Write a query to calculate the bonus for all the employees, based on their ratings and salaries (Use the formula: 5% of salary * employee rating)
Select employee_id, concat(first_name, ' ', last_name) as full_name, salary, employee_rating, (0.05 * salary * employee_rating) as Bonus
From emp_record_table;

#(17) Write a query to calculate the average salary distribution based on the continent and country. Take data from the employee record table
Select continent, country, avg(salary) as avg_salary
from emp_record_table
Group by continent, country;