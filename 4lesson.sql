-- CREATE TABLE students(
-- 	id SERIAL PRIMARY KEY,
-- 	full_name VARCHAR(100) NOT NULL,
-- 	group_name VARCHAR (50) NOT NULL, 
-- 	city VARCHAR (100)
-- );

-- CREATE TABLE teachers(
-- 	id SERIAL PRIMARY KEY,
-- 	full_name VARCHAR (100) NOT NULL, 
-- 	subject_area VARCHAR(100) NOT NULL
-- );

-- CREATE TABLE courses (
-- 	id SERIAL PRIMARY KEY,
-- 	title VARCHAR (100) NOT NULL,
-- 	teacher_id INTEGER REFERENCES teachers (id)
-- );
	
-- CREATE TABLE enrollments(
-- 	id SERIAL PRIMARY KEY, 
-- 	student_id INTEGER REFERENCES students (id), 
-- 	course_id INTEGER REFERENCES courses(id),
-- 	enrolled_at DATE NOT NULl
-- );

-- CREATE TABLE grades(
-- 	id SERIAL PRIMARY KEY,
-- 	enrollment_id INTEGER REFERENCES enrollments(id),
-- 	grade INTEGER CHECK (grade >=0 AND grade<=100),
-- 	comment TEXT
-- );

-- -- 1. Преподаватели
-- INSERT INTO teachers (full_name, subject_area AS subject_area) VALUES
-- ('Алиев Данияр Ерланович', 'Backend Development'),
-- ('Смагулова Айдана Муратовна', 'Frontend Development'),
-- ('Ким Артем Викторович', 'Databases'),
-- ('Омарова Жанна Сериковна', 'Data Science'),
-- ('Нурпеисов Тимур Асхатович', 'Mobile Development');


-- -- 2. Студенты
-- INSERT INTO students (full_name, group_name, city) VALUES
-- ('Иванов Алексей', 'IT-101', 'Алматы'),
-- ('Серикова Аружан', 'IT-101', 'Астана'),
-- ('Касымов Нуржан', 'IT-102', 'Шымкент'),
-- ('Петрова Мария', 'IT-102', 'Алматы'),
-- ('Ахметов Дамир', 'IT-103', 'Караганда'),
-- ('Садыкова Мадина', 'IT-103', 'Актобе'),
-- ('Цой Виктор', 'IT-104', 'Алматы'),
-- ('Ермекова Айгерим', 'IT-104', 'Тараз'),
-- ('Мухамедов Руслан', 'IT-105', 'Астана'),
-- ('Абдрахманова Диана', 'IT-105', 'Павлодар');


-- -- 3. Курсы
-- INSERT INTO courses (title, teacher_id) VALUES
-- ('PostgreSQL и базы данных', 3),
-- ('HTML, CSS и JavaScript', 2),
-- ('Node.js и Express', 1),
-- ('Python для анализа данных', 4),
-- ('React Native разработка', 5),
-- ('REST API разработка', 1);


-- -- 4. Записи студентов на курсы
-- INSERT INTO enrollments (student_id, course_id, enrolled_at) VALUES
-- (1, 1, '2026-02-01'),
-- (1, 2, '2026-02-03'),
-- (2, 1, '2026-02-01'),
-- (2, 4, '2026-02-05'),
-- (3, 3, '2026-02-07'),
-- (3, 6, '2026-02-08'),
-- (4, 2, '2026-02-03'),
-- (4, 5, '2026-02-10'),
-- (5, 1, '2026-02-01'),
-- (5, 3, '2026-02-07'),
-- (6, 4, '2026-02-05'),
-- (6, 5, '2026-02-10'),
-- (7, 2, '2026-02-03'),
-- (7, 6, '2026-02-08'),
-- (8, 1, '2026-02-01'),
-- (8, 4, '2026-02-05'),
-- (9, 3, '2026-02-07'),
-- (9, 5, '2026-02-10'),
-- (10, 2, '2026-02-03'),
-- (10, 6, '2026-02-08');

-- -- 5. Оценки
-- INSERT INTO grades (enrollment_id, grade, comment) VALUES
-- (1, 85, 'Хорошо понимает основы SQL'),
-- (2, 78, 'Есть ошибки в JavaScript, но прогресс хороший'),
-- (3, 92, 'Отличная работа с SELECT и JOIN'),
-- (4, 88, 'Хорошо справляется с анализом данных'),
-- (5, 74, 'Нужно повторить маршруты Express'),
-- (6, 81, 'Понимает структуру REST API'),
-- (7, 90, 'Уверенно работает с DOM'),
-- (8, 69, 'Нужно больше практики с компонентами'),
-- (9, 95, 'Отлично понял связи между таблицами'),
-- (10, 83, 'Хорошо работает с backend-логикой'),
-- (11, 77, 'Есть понимание pandas, но нужна практика'),
-- (12, 72, 'Нужно повторить навигацию в мобильном приложении'),
-- (13, 86, 'Хорошая работа с событиями в JavaScript'),
-- (14, 80, 'Понимает принципы API'),
-- (15, 91, 'Отлично пишет SQL-запросы'),
-- (16, 84, 'Хорошо справляется с Python-задачами'),
-- (17, 73, 'Нужно улучшить работу с middleware'),
-- (18, 79, 'Есть прогресс в React Native'),
-- (19, 87, 'Хорошо понимает frontend-основы'),
-- (20, 82, 'Уверенно работает с endpoint-ами');

-- INNER JOIN
-- SELECT courses.title AS course,
-- 	      teachers.full_name AS teacher FROM courses
-- INNER JOIN teachers ON courses.teacher_id=teachers.id

-- LEFT JOIN 
-- SELECT courses.title AS course,
-- 	   teachers.full_name AS teacher FROM courses
-- LEFT JOIN teachers ON courses.teacher_id=teachers.id


-- 1 задание
-- SELECT students.full_name AS student,
-- 	      courses.title AS course FROM enrollments
-- INNER JOIN students ON enrollments.student_id=students.id
-- INNER JOIN courses ON enrollments.course_id=courses.id

-- 2 задание
-- SELECT students.full_name AS student,
-- 	   courses.title AS course FROM students 
-- LEFT JOIN enrollments ON students.id = enrollments.student_id
-- LEFT JOIN courses ON enrollments.course_id=courses.id

-- 3 задание
-- SELECT students.full_name,students.group_name FORM students
-- LEST JOIN enrollments ON students.id=enrollments.student_id
-- WHERE enrollments.id IS NULL


-- 1. Вывести студентов, их группы и оценки по курсам
-- SELECT 
--     students.full_name AS student,
--     students.group_name,
--     courses.title AS course,
--     grades.grade
-- FROM students
-- INNER JOIN enrollments 
--     ON students.id = enrollments.student_id
-- INNER JOIN courses 
--     ON enrollments.course_id = courses.id
-- INNER JOIN grades 
--     ON enrollments.id = grades.enrollment_id;

-- 2. Вывести курсы и преподавателей, которые их ведут
-- Нужно показать:
-- название курса, имя преподавателя, направление преподавателя
-- SELECT 
--     courses.title AS course,
--     teachers.full_name AS teacher,
--     teachers.subject_area AS subject
-- FROM courses
-- INNER JOIN teachers ON courses.teacher_id = teachers.id;

-- 3. Вывести всех преподавателей и курсы, которые они ведут
-- Если преподаватель не ведет курс, он тоже долженотображаться-
-- Нужно показать:-
-- имя преподавателя, название курса-
-- SELECT teachers.full_name AS teacher,
-- courses.title AS course FROM teachers
-- LEFT JOIN courses ON courses.teacher_id = teachers.id;

-- 4. Вывести студентов, которые получили оценку выше 80 Нужно показать:-
-- имя студента, название курса, оценку, комментарий-
-- SELECT students.full_name AS student,
-- courses.title AS course,
-- grades.grade AS grade,
-- grades.comment AS comm
-- FROM students
-- INNER JOIN enrollments ON enrollments.student_id = students.id
-- INNER JOIN courses ON courses.id = enrollments.course_id
-- INNER JOIN grades ON grades.enrollment_id = enrollments.id
-- WHERE grades.grade > 80


-- SELECT students.full_name AS student,
-- courses.title AS course,
-- teachers.full_name AS teacher,
-- enrollments.enrolled_at
-- FROM enrollments
-- INNER JOIN students ON enrollments.student_id=students.id
-- INNER JOIN  courses ON enrollments.course_id=courses.id
-- INNER JOIN teachers on courses.teacher_id=teachers.id


-- SELECT students.full_name AS student,
-- courses.title AS course,
-- enrollments.enrolled_at FROM enrollments
-- INNER JOIN students ON enrollments.student_id=students.id
-- INNER JOIN courses ON enrollments.course_id=courses.id



