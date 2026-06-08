-- one-to-one
-- CREATE users
-- 	id SERIAL PRIMARY KEY,
-- 	email VARCHAR(100) UNIQUE
-- );
-- CREATE TABLE user_profiles(
-- 	id SERIAL PRIMERY KEY,
-- 	user_id INT UNIQUE PREFERCENCES users (id),
-- 	full_name VARCHAR(100),
-- 	bio TEXT
-- )

-- one-to-many
-- CREATE customers
-- 	id SERIAL PRIMARY KEY,
-- 	name VARCHAR(100) UNIQUE
-- );
-- CREATE TABLE order(
-- 	id SERIAL PRIMERY KEY,
-- 	customers_id INT  PREFERCENCES customers (id),
-- 	order_date DATE
-- )


-- CREATE TABLE order_items(
-- 	id SERIAL PRIMERY KEY,
-- 	order_id INT  PREFERCENCES orders (id),
-- 	product_id INT  PREFERCENCES products (id),
--  quantity INT
-- )

-- CREATE TABLE products(
-- 	id SERIAL PRIMERY KEY,
-- 	products_name TEXT,
--  price INTEGER,
-- 	description TEXT
-- )








-- -- JOIN
-- CREATE TABLE customers(
--  id SERIAL PRIMARY KEY,
--  name VARCHAR(100) NOT NULL,
--  phone VARCHAR(30),
--  city VARCHAR(100)
-- );
-- CREATE TABLE categories(
--  id SERIAL PRIMARY KEY,
--  title VARCHAR(100) NOT NULL
-- );
-- CREATE TABLE products(
--  id SERIAL PRIMARY KEY,
--  title VARCHAR(100) NOT NULL,
--  price NUMERIC(10,2) NOT NULL,
--  category_id INT REFERENCES categories(id)
-- );
-- CREATE TABLE orders(
--  id SERIAL PRIMARY KEY,
--  customer_id INT REFERENCES customers(id),
--  order_date DATE NOT NULL,
--  status VARCHAR(50)
-- );
-- CREATE TABLE order_items(
--  id SERIAL PRIMARY KEY,
--  order_id INT REFERENCES orders(id),
--  product_id INT REFERENCES products(id),
--  quantity INT NOT NULL
-- );

-- =========================
-- CUSTOMERS
-- =========================
-- INSERT INTO customers (name, phone, city) VALUES
-- ('Алихан', '+7 701 111 22 33', 'Алматы'),
-- ('Мария', '+7 702 222 33 44', 'Астана'),
-- ('Ержан', '+7 705 333 44 55', 'Шымкент'),
-- ('Аружан', '+7 747 444 55 66', 'Алматы'),
-- ('Дмитрий', '+7 777 555 66 77', 'Караганда'),
-- ('Салтанат', '+7 708 666 77 88', 'Актобе'),
-- ('Никита', '+7 707 777 88 99', 'Алматы'),
-- ('Айгерим', '+7 771 888 99 00', 'Павлодар'),
-- ('Роман', '+7 700 123 45 67', 'Костанай'),
-- ('Ислам', '+7 701 987 65 43', 'Тараз');


-- -- =========================
-- -- CATEGORIES
-- -- =========================
-- INSERT INTO categories (title) VALUES
-- ('Смартфоны'),
-- ('Ноутбуки'),
-- ('Наушники'),
-- ('Мониторы'),
-- ('Клавиатуры'),
-- ('Мышки'),
-- ('Планшеты'),
-- ('Аксессуары');


-- -- =========================
-- -- PRODUCTS
-- -- =========================
-- INSERT INTO products (title, price, category_id) VALUES
-- ('iPhone 15', 499990.00, 1),
-- ('Samsung Galaxy S24', 459990.00, 1),
-- ('MacBook Air M2', 699990.00, 2),
-- ('Lenovo IdeaPad 3', 289990.00, 2),
-- ('AirPods Pro 2', 129990.00, 3),
-- ('Sony WH-1000XM5', 189990.00, 3),
-- ('LG UltraGear 27', 159990.00, 4),
-- ('AOC 24B2XH', 79990.00, 4),
-- ('Logitech K380', 24990.00, 5),
-- ('Logitech MX Master 3S', 54990.00, 6);


-- -- =========================
-- -- ORDERS
-- -- =========================
-- INSERT INTO orders (customer_id, order_date, status) VALUES
-- (1, '2026-05-01', 'Оплачен'),
-- (2, '2026-05-02', 'В обработке'),
-- (3, '2026-05-03', 'Доставлен'),
-- (4, '2026-05-04', 'Отменен'),
-- (5, '2026-05-05', 'Оплачен'),
-- (6, '2026-05-06', 'Доставлен'),
-- (7, '2026-05-07', 'В обработке'),
-- (8, '2026-05-08', 'Оплачен'),
-- (9, '2026-05-09', 'Доставлен'),
-- (10, '2026-05-10', 'В обработке');


-- -- =========================
-- -- ORDER_ITEMS
-- -- =========================
-- INSERT INTO order_items (order_id, product_id, quantity) VALUES
-- (1, 1, 1),
-- (1, 5, 1),

-- (2, 3, 1),
-- (2, 9, 2),

-- (3, 2, 1),
-- (3, 10, 1),

-- (4, 6, 1),

-- (5, 4, 1),
-- (5, 8, 1),

-- (6, 7, 2),

-- (7, 5, 2),
-- (7, 9, 1),

-- (8, 1, 1),
-- (8, 10, 1),

-- (9, 3, 1),
-- (9, 6, 1),

-- (10, 2, 1),
-- (10, 8, 2);


-- SELECT * FROM orders 
-- JOIN customers ON orders.customer_id=customers.id

-- SELECT orders.id, customers.id, orders.order_date, orders.status
-- FROM orders
-- INNER JOIN customers ON orders.customer_id = customers.id

-- SELECT o.id,c.name,o.order_date
-- FROM orders AS o
-- INNER JOIN customers AS c ON o.customers_id=c.id;
-- SELECT o.id, c.name, o.order_date
-- FROM orders o
-- INNER JOIN customers c ON o.customer_id = c.id

-- SELECT o.id, c.name, o.order_date
-- FROM orders o
-- INNER JOIN customers c ON o.customer_id = c.id
-- WHERE c.name='Алихан'

-- SELECT o.id, c.name, o.order_date, o.status
-- FROM orders o
-- JOIN customers c ON o.customer_id = c.id
-- WHERE o.status = 'Оплачен'



-- SELECT
--   o.id AS order_id,
--   c.name AS customer_name,
--   p.title AS product_title,
--   oi.quantity,
--   p.price,
--   oi.quantity * p.price AS total_price
-- FROM orders o
-- JOIN customers c ON o.customer_id = c.id
-- JOIN order_items oi ON o.id = oi.order_id
-- JOIN products p ON oi.product_id = p.id






