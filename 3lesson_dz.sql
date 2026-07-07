-- CREATE TABLE students (
--     id SERIAL PRIMARY KEY,
--     name VARCHAR(100),
--     age INT,
--     city VARCHAR(100)
-- )

-- CREATE TABLE teachers (
--     id SERIAL PRIMARY KEY,
--     name VARCHAR(100),
--     subject VARCHAR(100)
-- )

-- CREATE TABLE courses (
--     id SERIAL PRIMARY KEY,
--     title VARCHAR(100),
--     teacher_id INT REFERENCES teachers(id)
-- )

-- CREATE TABLE enrollments (
--     id SERIAL PRIMARY KEY,
--     student_id INT REFERENCES students(id),
--     course_id INT REFERENCES courses(id),
--     enrolled_at DATE
-- )

-- INSERT INTO students (name, age, city) VALUES
-- ('Алия', 19, 'Алматы'),
-- ('Диана', 20, 'Астана'),
-- ('Руслан', 21, 'Алматы'),
-- ('Мадина', 22, 'Шымкент'),
-- ('Ержан', 20, 'Караганда');

-- INSERT INTO teachers (name, subject) VALUES
-- ('Айгуль Сериковна', 'SQL'),
-- ('Марат Нурланович', 'Python'),
-- ('Елена Викторовна', 'Web-разработка');

-- INSERT INTO courses (title, teacher_id) VALUES
-- ('Основы SQL', 1),
-- ('Базы данных', 1),
-- ('Python для начинающих', 2),
-- ('HTML и CSS', 3);

-- INSERT INTO enrollments (student_id, course_id, enrolled_at) VALUES
-- (1, 1, '2026-01-10'),
-- (1, 2, '2026-01-12'),
-- (2, 1, '2026-01-11'),
-- (3, 2, '2026-01-13'),
-- (3, 3, '2026-01-14'),
-- (4, 3, '2026-01-15'),
-- (5, 1, '2026-01-16'),
-- (5, 4, '2026-01-17');

-- SELECT students.name AS student_name, courses.title AS course_title
-- FROM students
-- JOIN enrollments ON students.id = enrollments.student_id
-- JOIN courses ON enrollments.course_id = courses.id

-- SELECT courses.title AS course_title, teachers.name AS teacher_name
-- FROM courses
-- JOIN teachers ON courses.teacher_id = teachers.id

-- SELECT students.name AS student_name, courses.title AS course_title
-- FROM students
-- JOIN enrollments ON students.id = enrollments.student_id
-- JOIN courses ON enrollments.course_id = courses.id
-- WHERE courses.title = 'Основы SQL'

-- SELECT courses.title AS course_title, COUNT(enrollments.student_id) AS student_count
-- FROM courses
-- LEFT JOIN enrollments ON courses.id = enrollments.course_id
-- GROUP BY courses.title

-- SELECT courses.title AS course_title
-- FROM courses
-- LEFT JOIN enrollments ON courses.id = enrollments.course_id
-- WHERE enrollments.student_id IS NULL

-- SELECT students.name AS student_name
-- FROM students
-- LEFT JOIN enrollments ON students.id = enrollments.student_id
-- WHERE enrollments.course_id IS NULL

-- SELECT teachers.name AS teacher_name, COUNT(courses.id) AS course_count
-- FROM teachers
-- LEFT JOIN courses ON teachers.id = courses.teacher_id
-- GROUP BY teachers.name

-- SELECT 
--     students.name AS student_name,
--     courses.title AS course_title,
--     teachers.name AS teacher_name
-- FROM students
-- JOIN enrollments ON students.id = enrollments.student_id
-- JOIN courses ON enrollments.course_id = courses.id
-- JOIN teachers ON courses.teacher_id = teachers.id

-- SELECT students.name AS student_name, COUNT(enrollments.course_id) AS course_count
-- FROM students
-- LEFT JOIN enrollments ON students.id = enrollments.student_id
-- GROUP BY students.name

-- SELECT students.name AS student_name, students.city, courses.title AS course_title
-- FROM students
-- JOIN enrollments ON students.id = enrollments.student_id
-- JOIN courses ON enrollments.course_id = courses.id
-- WHERE students.city = 'Алматы'
