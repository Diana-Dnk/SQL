-- CREATE TABLE categories(
--  id SERIAL PRIMARY KEY,
--  name VARCHAR(100) NOT NULL UNIQUE
-- );
-- CREATE TABLE books(
--  id SERIAL PRIMARY KEY,
--  title VARCHAR(150) NOT NULL,
--  price NUMERIC(10,2) NOT NULL,
--  stock INT NOT NULL DEFAULT 0,
--  category_id INT REFERENCES categories(id)
-- );
-- CREATE TABLE authors(
--  id SERIAL PRIMARY KEY,
--  full_name VARCHAR(100) NOT NULL
-- );
-- CREATE TABLE book_authors(
--  book_id INT REFERENCES books(id),
--  author_id INT REFERENCES authors(id),
--  PRIMARY KEY (book_id, author_id)
-- );
-- CREATE TABLE customers(
--  id SERIAL PRIMARY KEY,
--  full_name VARCHAR(100) NOT NULL,
--  phone VARCHAR(20),
--  email VARCHAR(100) UNIQUE
-- );
-- CREATE TABLE orders(
--  id SERIAL PRIMARY KEY,
--  customers_id INT REFERENCES customers(id),
--  order_date DATE NOT NULL DEFAULT CURRENT_DATE
-- );
-- CREATE TABLE orders_items(
--  id SERIAL PRIMARY KEY,
--  order_id INT REFERENCES orders(id),
--  book_id INT REFERENCES books(id),
--  quantity INT NOT NULL,
--  price_at_moment NUMERIC(10,2) NOT NULL
-- );

-- ДАННЫЕ

-- INSERT INTO categories (name) VALUES
-- ('Программирование'),
-- ('Бизнес'),
-- ('Психология'),
-- ('Финансы'),
-- ('Художественная литература');

-- INSERT INTO books (title, price, stock, category_id) VALUES
-- ('SQL для начинающих', 4500, 10, 1),
-- ('Python быстро', 5200, 7, 1),
-- ('Основы бизнеса', 3900, 5, 2),
-- ('Маркетинг 101', 4200, 8, 2),
-- ('Психология общения', 3500, 12, 3),
-- ('Финансовая грамотность', 4800, 6, 4),
-- ('Инвестиции просто', 6000, 4, 4),
-- ('Роман о жизни', 3000, 9, 5),
-- ('JavaScript практика', 5500, 3, 1),
-- ('Думай и богатей', 3700, 11, 4);

-- INSERT INTO authors (full_name) VALUES
-- ('Иван Петров'),
-- ('Анна Смирнова'),
-- ('Олег Иванов'),
-- ('Мария Ким'),
-- ('Дмитрий Соколов'),
-- ('Елена Орлова');

-- INSERT INTO book_authors (book_id, author_id) VALUES
-- (1, 1),
-- (2, 1),
-- (3, 2),
-- (4, 2),
-- (5, 3),
-- (6, 4),
-- (7, 4),
-- (8, 5),
-- (9, 1),
-- (10, 6);

-- INSERT INTO customers (full_name, phone, email) VALUES
-- ('Алия Нуржанова', '87011111111', 'aliya@mail.com'),
-- ('Диас Ахметов', '87012222222', 'dias@mail.com'),
-- ('Мадина Сейсенова', '87013333333', 'madina@mail.com'),
-- ('Ержан Касымов', '87014444444', 'erzhan@mail.com'),
-- ('Айгерим Омарова', '87015555555', 'aigerim@mail.com'),
-- ('Руслан Тулеуов', '87016666666', 'ruslan@mail.com'),
-- ('Дана Муратова', '87017777777', 'dana@mail.com'),
-- ('Никита Волков', '87018888888', 'nikita@mail.com');

-- INSERT INTO orders (customers_id, order_date) VALUES
-- (1, '2026-06-01'),
-- (2, '2026-06-02'),
-- (3, '2026-06-03'),
-- (1, '2026-06-04'),
-- (4, '2026-06-05'),
-- (5, '2026-06-06'),
-- (6, '2026-06-07'),
-- (2, '2026-06-08'),
-- (7, '2026-06-09'),
-- (3, '2026-06-10');

-- INSERT INTO orders_items (order_id, book_id, quantity, price_at_moment) VALUES
-- (1, 1, 1, 4500),
-- (1, 2, 2, 5200),
-- (2, 3, 1, 3900),
-- (2, 6, 1, 4800),
-- (3, 5, 2, 3500),
-- (3, 8, 1, 3000),
-- (4, 7, 1, 6000),
-- (4, 10, 2, 3700),
-- (5, 1, 1, 4500),
-- (5, 9, 1, 5500),
-- (6, 4, 2, 4200),
-- (6, 6, 1, 4800),
-- (7, 2, 1, 5200),
-- (7, 7, 2, 6000),
-- (8, 3, 1, 3900),
-- (8, 5, 1, 3500),
-- (9, 8, 2, 3000),
-- (10, 10, 1, 3700);


-- SELECT b.title, b.price, b.stock, c.name AS category_name
-- FROM books b
-- JOIN categories c ON b.category_id = c.id;


-- SELECT b.title, c.name AS category_name, b.price
-- FROM books b
-- JOIN categories c ON b.category_id = c.id
-- WHERE c.name = 'Программирование';


-- SELECT b.title AS book_title, a.full_name AS author_name
-- FROM books b
-- JOIN book_authors ba ON b.id = ba.book_id
-- JOIN authors a ON ba.author_id = a.id;


-- SELECT o.id AS order_id, o.order_date, c.full_name, c.email
-- FROM orders o
-- JOIN customers c ON o.customers_id = c.id;


-- SELECT 
--     o.id AS order_id,
--     o.order_date,
--     c.full_name AS customer_name,
--     b.title AS book_title,
--     oi.quantity,
--     oi.price_at_moment
-- FROM orders_items oi
-- JOIN orders o ON oi.order_id = o.id
-- JOIN customers c ON o.customers_id = c.id
-- JOIN books b ON oi.book_id = b.id;


-- SELECT 
--     c.full_name AS customer_name,
--     b.title AS book_title,
--     oi.quantity
-- FROM orders_items oi
-- JOIN orders o ON oi.order_id = o.id
-- JOIN customers c ON o.customers_id = c.id
-- JOIN books b ON oi.book_id = b.id
-- WHERE oi.quantity > 1;


-- SELECT b.title, c.name AS category_name
-- FROM books b
-- LEFT JOIN categories c ON b.category_id = c.id;


-- SELECT b.title
-- FROM books b
-- LEFT JOIN orders_items oi ON b.id = oi.book_id
-- WHERE oi.book_id IS NULL;


-- SELECT c.full_name
-- FROM customers c
-- LEFT JOIN orders o ON c.id = o.customers_id
-- WHERE o.id IS NULL;


-- SELECT a.full_name AS author_name, b.title AS book_title
-- FROM authors a
-- LEFT JOIN book_authors ba ON a.id = ba.author_id
-- LEFT JOIN books b ON ba.book_id = b.id;


-- SELECT 
--     o.id AS order_id,
--     c.full_name AS customer_name,
--     SUM(oi.quantity * oi.price_at_moment) AS total_sum
-- FROM orders o
-- JOIN customers c ON o.customers_id = c.id
-- JOIN orders_items oi ON o.id = oi.order_id
-- GROUP BY o.id, c.full_name;


-- SELECT 
--     c.full_name AS customer_name,
--     COUNT(o.id) AS orders_count
-- FROM customers c
-- LEFT JOIN orders o ON c.id = o.customers_id
-- GROUP BY c.id, c.full_name;


-- SELECT 
--     b.title,
--     COALESCE(SUM(oi.quantity), 0) AS total_sold
-- FROM books b
-- LEFT JOIN orders_items oi ON b.id = oi.book_id
-- GROUP BY b.id, b.title;


-- SELECT 
--     b.title,
--     SUM(oi.quantity) AS total_sold
-- FROM books b
-- JOIN orders_items oi ON b.id = oi.book_id
-- GROUP BY b.id, b.title
-- ORDER BY total_sold DESC
-- LIMIT 3;


-- SELECT 
--     c.name AS category_name,
--     COALESCE(SUM(oi.quantity * oi.price_at_moment), 0) AS revenue
-- FROM categories c
-- LEFT JOIN books b ON c.id = b.category_id
-- LEFT JOIN orders_items oi ON b.id = oi.book_id
-- GROUP BY c.id, c.name
-- ORDER BY revenue DESC;


-- SELECT 
--     customer_name,
--     AVG(total_sum) AS average_check
-- FROM (
--     SELECT 
--         o.id AS order_id,
--         c.full_name AS customer_name,
--         SUM(oi.quantity * oi.price_at_moment) AS total_sum
--     FROM orders o
--     JOIN customers c ON o.customers_id = c.id
--     JOIN orders_items oi ON o.id = oi.order_id
--     GROUP BY o.id, c.full_name
-- ) AS order_totals
-- GROUP BY customer_name;


-- SELECT 
--     c.full_name AS customer_name,
--     SUM(oi.quantity * oi.price_at_moment) AS total_spent
-- FROM customers c
-- JOIN orders o ON c.id = o.customers_id
-- JOIN orders_items oi ON o.id = oi.order_id
-- GROUP BY c.id, c.full_name
-- ORDER BY total_spent DESC
-- LIMIT 1;


-- SELECT 
--     c.name AS category_name,
--     COUNT(b.id) AS books_count
-- FROM categories c
-- JOIN books b ON c.id = b.category_id
-- GROUP BY c.id, c.name
-- ORDER BY books_count DESC
-- LIMIT 1;


-- SELECT 
--     a.full_name AS author_name,
--     SUM(oi.quantity) AS sold_quantity
-- FROM authors a
-- JOIN book_authors ba ON a.id = ba.author_id
-- JOIN books b ON ba.book_id = b.id
-- JOIN orders_items oi ON b.id = oi.book_id
-- GROUP BY a.id, a.full_name
-- HAVING SUM(oi.quantity) > 0;


-- SELECT 
--     o.id AS order_id,
--     o.order_date,
--     c.full_name AS customer_name,
--     COUNT(DISTINCT oi.book_id) AS different_books_count,
--     SUM(oi.quantity) AS total_quantity,
--     SUM(oi.quantity * oi.price_at_moment) AS total_sum
-- FROM orders o
-- JOIN customers c ON o.customers_id = c.id
-- JOIN orders_items oi ON o.id = oi.order_id
-- GROUP BY o.id, o.order_date, c.full_name
-- ORDER BY o.id;
