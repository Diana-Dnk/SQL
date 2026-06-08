-- CREATE TABLE students(
-- 	id SERIAL PRIMARY KEY,
-- 	name VARCHAR(100) NOT NULL,
-- 	email VARCHAR(150) UNIQUE NOT NULL,
-- 	age INTEGER,
-- 	group_name VARCHAR(50)
-- );

-- INSERT INTO students(name,email,age,group_name)
-- VALUES
-- ('Dias','dias@gmail.com',18,'IT-101')

-- SELECT * FROM students

-- INSERT INTO students(name,email,age,group_name)
-- VALUES
-- ('Amina','Amina@gmail.com',19,'IT-101'),
-- ('Diana','Diana@gmail.com',22,'IT-103'),
-- ('Olzhas','Olzhas@gmail.com',20,'IT-102'),
-- ('Marlen','Marlen@gmail.com',21,'IT-102'),
-- ('Kirill','Kirill@gmail.com',19,'IT-103');

-- SELECT * FROM students
-- WHERE id = 2

-- SELECT * FROM students
-- WHERE age>18

-- SELECT * FROM students 
-- WHERE age<20

-- SELECT * FROM students 
-- WHERE age!=18

-- SELECT * FROM students 
-- WHERE group_name = 'IT-101'

-- SELECT * FROM students 
-- WHERE group_name = 'IT-101' AND age>18

-- SELECT * FROM students 
-- WHERE age BETWEEN 18 AND 20

-- SELECT * FROM students 
-- WHERE name LIKE 'A%'

-- SELECT * FROM students
-- ORDER BY name desc
-- LIMIT 3
