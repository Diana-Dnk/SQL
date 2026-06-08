-- CREATE TABLE employees(
-- 	id SERIAL PRIMARY KEY,
-- 	full_name VARCHAR (100) NOT NULL,
-- 	position VARCHAR (100) NOT NULL,
-- 	department VARCHAR (100) NOT NULL,
-- 	city VARCHAR (100) NOT NULL,
-- 	age INTEGER NOT NULL,
-- 	salary INTEGER NOT NULL,
-- 	exp_years INTEGER NOT NULL,
-- 	is_active BOOLEAN DEFAULT TRUE
-- )

-- INSERT INTO employees 
-- (full_name, position, department, city, salary, age, exp_years, is_active)
-- VALUES
-- ('Aruzhan Sadykova', 'Frontend Developer', 'IT', 'Almaty', 450000, 24, 2, true),
-- ('Dias Omarov', 'Backend Developer', 'IT', 'Astana', 550000, 27, 4, true),
-- ('Madi Zhetibergen', 'Fullstack Developer', 'IT', 'Almaty', 700000, 28, 5, true),
-- ('Amina Tulegenova', 'HR Manager', 'HR', 'Almaty', 350000, 30, 6, true),
-- ('Nursultan Karimov', 'Recruiter', 'HR', 'Shymkent', 280000, 25, 2, true),
-- ('Dana Mukasheva', 'Accountant', 'Finance', 'Astana', 400000, 35, 9, true),
-- ('Aliya Serikova', 'Financial Analyst', 'Finance', 'Almaty', 600000, 32, 7, true),
-- ('Timur Akhmetov', 'Sales Manager', 'Sales', 'Almaty', 300000, 26, 3, true),
-- ('Rauan Iskakov', 'Sales Lead', 'Sales', 'Astana', 500000, 31, 6, true),
-- ('Madina Ermekova', 'Marketing Specialist', 'Marketing', 'Almaty', 320000, 23, 1, true),
-- ('Alisher Nurbekov', 'SMM Manager', 'Marketing', 'Shymkent', 270000, 22, 1, true),
-- ('Zhanar Kairatkyzy', 'Project Manager', 'Management', 'Astana', 650000, 34, 8, true),
-- ('Erlan Bektasov', 'CEO', 'Management', 'Almaty', 1200000, 40, 15, true),
-- ('Sanzhar Ilyasov', 'QA Engineer', 'IT', 'Almaty', 380000, 24, 2, true),
-- ('Kamila Nurpeisova', 'UI/UX Designer', 'Design', 'Almaty', 420000, 26, 3, true),
-- ('Azamat Tolegen', 'Graphic Designer', 'Design', 'Astana', 300000, 25, 2, true),
-- ('Yernar Kudaibergen', 'Office Manager', 'Administration', 'Almaty', 250000, 29, 4, true),
-- ('Saltanat Rakhimova', 'Lawyer', 'Legal', 'Astana', 580000, 33, 8, true),
-- ('Arman Zhaksylyk', 'Security Specialist', 'Security', 'Almaty', 260000, 38, 10, true),
-- ('Miras Kenzhebek', 'Intern Developer', 'IT', 'Almaty', 150000, 20, 0, true),
-- ('Diana Akhmetova', 'Business Analyst', 'Analytics', 'Astana', 520000, 29, 5, true),
-- ('Bekzat Saparov', 'Data Analyst', 'Analytics', 'Almaty', 480000, 27, 4, true),
-- ('Aigerim Ussenova', 'Customer Support', 'Support', 'Shymkent', 240000, 24, 2, true),
-- ('Yeldos Maratuly', 'Support Lead', 'Support', 'Almaty', 390000, 30, 5, true),
-- ('Karina Ospanova', 'Product Manager', 'Product', 'Astana', 750000, 31, 7, true);

-- SELECT * FROM employees

-- SELECT * FROM employees
-- WHERE id = 5

-- UPDATE employees
-- SET salary = 380000
-- WHERE id = 5

-- SELECT * FROM employees
-- WHERE id = 5

-- UPDATE employees
-- SET position = 'Middle Frontend Developer'
-- WHERE id = 1

-- SELECT * FROM employees
-- WHERE id = 1

-- UPDATE employees
-- SET 
-- 	position = 'Senior Backend Developer',
-- 	salary = 750000
-- 	WHERE id = 2

-- SELECT * FROM employees
-- WHERE id = 2

-- UPDATE employees
-- SET salary = salary +50000
-- WHERE department = 'IT'

-- SELECT full_name,department,salary,position FROM employees
-- WHERE department = 'IT'
-- ORDER BY salary DESC

-- UPDATE employees
-- SET salary = salary - 20000
-- WHERE position = 'Intern Developer'
-- SELECT full_name,department,salary,position FROM employees
-- WHERE position = 'Intern Developer'

-- UPDATE employees
-- SET department = 'Product'
-- WHERE position = 'UI/UX Designer'

-- SELECT full_name,department,salary,position FROM employees
-- WHERE position = 'UI/UX Designer'

-- UPDATE employees
-- SET salary = salary + 40000
-- WHERE department = 'Sales' AND exp_years > 5


-- SELECT * FROM  employees
-- WHERE department = 'Sales' 

-- UPDATE employees
-- SET salary = salary + 20000
-- WHERE exp_years BETWEEN 1 AND 3

-- DELETE FROM employees
-- WHERE id = 20

-- SELECT * FROM  employees
-- WHERE id = 20 

-- DELETE FROM employees
-- WHERE salary < 200000

-- DELETE FROM employees
-- WHERE position LIKE '%Intern%'

-- UPDATE employees
-- SET is_active = false 
-- WHERE id = 10;

-- SELECT *FROM  employees
-- WHERE id = 10


-- SELECT COUNT (*)
-- FROM employees

-- SELECT COUNT (*) AS total_employees
-- FROM employees


-- SELECT COUNT (*) AS active_employees
-- FROM employees
-- WHERE is_active = TRUE

-- SELECT COUNT (*) AS it_employees
-- FROM employees
-- WHERE department = 'IT'


-- SELECT SUM (salary) AS total_salary
-- FROM employees

-- SELECT SUM (salary) AS design_total_salary
-- FROM employees
-- WHERE department = 'Design'

-- SELECT AVG (salary) AS average_salary
-- FROM employees

-- SELECT ROUND (AVG(salary):: numeric,2) AS average_salary
-- FROM employees

-- SELECT MIN (age) AS youngest_employees
-- FROM employees

-- SELECT MAX (exp_years) AS max_exp
-- FROM employees

-- SELECT 
-- 	COUNT (*) AS total_employees,
-- 	SUM (salary) AS total_salary,
-- 	ROUND (AVG(salary):: numeric,2) AS average_salary,
-- 	MIN (salary) AS min_salary,
-- 	MAX (salary) AS max_salary
-- FROM employees


-- SELECT department, COUNT(*) AS employees_count
-- FROM employees
-- GROUP BY department

-- SELECT department, SUM(salary) AS total_salary
-- FROM employees
-- GROUP BY department
-- ORDER BY total_salary DESC

--1)Посчитать общее количество сотрудников
-- SELECT COUNT (*)
-- FROM employees

--2)Посчитать количество активных сотрудников.
-- SELECT COUNT (*) AS active_employees
-- FROM employees
-- WHERE is_active = TRUE

--3)Найти общую сумму зарплат всех сотрудников.
-- SELECT SUM (salary) AS total
-- FROM employees

--4)Найти среднюю зарплату по компании.
-- SELECT ROUND (AVG(salary):: numeric,2) AS avg_salary
-- FROM employees

-- 5)Найти минимальную зарплату
-- SELECT MIN (salary) AS min_salary
-- FROM employees

--6) Найти максимальную зарплату.
-- SELECT MAX (salary) AS max_salary
-- FROM employees

--7) Найти самого молодого сотрудника по возрасту
-- SELECT MIN (age) AS youngest_employees
-- FROM employees

--8) Найти максимальный опыт работы
-- SELECT MAX (exp_years) AS max_exp
-- FROM employees



	