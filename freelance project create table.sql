--use VINNY
--1st Table
CREATE TABLE prac_cx (
  customer_id INT PRIMARY KEY,
  name VARCHAR(100),
  email VARCHAR(100),
  phone VARCHAR(20),
  signup_date VARCHAR(20) -- use VARCHAR to hold inconsistent date formats
);

-- Insert customers (50 rows) with some dirty data and duplicates
INSERT INTO prac_cx (customer_id, name, email, phone, signup_date) VALUES
(1, 'John Doe', 'john.doe@example.com', '555-0100', '2023/01/15'),
(2, 'Jane Smith', NULL, '555-0101', '15-02-2023'),
(3, 'Bob Johnson', 'bob.johnson@', NULL, '2023/05/22'),
(4, 'Alice Williams', 'alice.williams@example.com', '555-0110', '2023/03/30'),
(5, 'Eve Davis', 'eve.davis@example.com', '555-0111', '04/15/2023'),
(6, 'Michael Brown', 'michael.brown@example', '555-0112', '2023-07-01'),
(7, 'Chris Miller', 'chris.miller@example.com', '555-0113', '2023-08-09'),
(8, 'Patricia Wilson', 'patricia.wilson@example.com', '555-0114', NULL),
(9, 'David Moore', 'davidmoore@example.com', '555-0115', '03-08-2023'),
(10, 'Laura Taylor', NULL, '555-0116', '2023/06/21'),
(11, 'Sarah Anderson', 'sarah.anderson@example.com', NULL, '2023-04-18'),
(12, 'James Thomas', 'james.thomas@example.com', '555-0120', '2023/02/28'),
(13, 'Linda Jackson', 'linda.jackson@example.com', '555-0121', '05-05-2023'),
(14, 'Robert White', NULL, '555-0122', '2023.06.12'),
(15, 'Jennifer Harris', 'jennifer.harris@example.com', '555-0123', '2023-07-19'),
(16, 'William Martin', 'william.martin@example', '555-0124', '2023/06/30'),
(17, 'Elizabeth Thompson', 'elizabeth.thompson@example.com', '555-0125', '2023-05-11'),
(18, 'Charles Garcia', 'charles.garcia@example.com', NULL, '2023-04-21'),
(19, 'Karen Martinez', NULL, '555-0127', '2023/07/07'),
(20, 'Joseph Robinson', 'joseph.robinson@example.com', '555-0128', '07-15-2023'),
(21, 'Nancy Clark', 'nancy.clark@example,com', '555-0129', '2023/07/25'),
(22, 'Thomas Rodriguez', 'thomas.rodriguez@example.com', '555-0130', '2023-04-29'),
(23, 'Barbara Lewis', 'barbara.lewis@example.com', NULL, '2023-03-04'),
(24, 'Paul Lee', 'paul.lee@example.com', '555-0132', '2023-05-16'),
(25, 'Sandra Walker', 'sandra.walker@example.com', '555-0133', '2023/06/10'),
(26, 'Mark Hall', NULL, '555-0134', '2023-07-02'),
(27, 'Donna Allen', 'donna.allen@example.com', '555-0135', '2023-06-28'),
(28, 'Steven Young', 'steven.young@example.com', '555-0136', '2023/08/05'),
(29, 'George Hernandez', 'george.hernandez@example.com', NULL, '2023-07-15'),
(30, 'Michelle King', 'michelle.king@example.', '555-0138', '2023-06-23'),
(31, 'Kenneth Wright', 'kenneth.wright@example.com', '555-0139', '2023-05-30'),
(32, 'Donna Scott', 'donna.scott@example.com', '555-0140', '15-06-2023'),
(33, 'Elizabeth Green', NULL, '555-0141', '2023/07/08'),
(34, 'Christopher Adams', 'chris.adams@example.com', '555-0142', NULL),
(35, 'Jessica Baker', 'jessica.baker@example.com', '555-0143', '2023-06-25'),
(36, 'Larry Gonzalez', 'larry.gonzalez@example.com', '555-0144', '2023/05/13'),
(37, 'Jennifer Nelson', 'jennifer.nelson@example.com', '555-0145', '03-07-2023'),
(38, 'Betty Carter', 'betty.carter@example.com', NULL, '2023/04/27'),
(39, 'Frank Mitchell', 'frank.mitchell@example.com', '555-0147', '2023-07-01'),
(40, 'Carol Perez', 'carol.perez@', '555-0148', '2023-07-03'),
(41, 'Jonathan Roberts', 'jonathan.roberts@example.com', '555-0149', '2023/06/19'),
(42, 'Michelle Turner', NULL, '555-0150', '2023-05-22'),
(43, 'Rachel Phillips', 'rachel.phillips@example.com', '555-0151', '2023-07-09'),
(44, 'Gary Campbell', 'gary.campbell@example.com', '555-0152', '2023/07/11'),
(45, 'Amy Parker', 'amy.parker@example.com', NULL, '2023-07-12'),
(46, 'Eric Evans', 'eric.evans@example.com', '555-0154', '2023-06-15'),
(47, 'Angela Edwards', 'angela.edwards@example.com', '555-0155', '2023/07/06'),
(48, 'Brandon Collins', 'brandon.collins@example.com', '555-0156', NULL),
(49, 'Stephanie Stewart', 'stephanie.stewart@example.com', '555-0157', '2023-07-04'),
(50, 'Justin Morris', 'justin.morris@example.com', '555-0158', '07-03-2023'),
(53, 'Unknown Customer 1', NULL, NULL, '2023/07/20'),
(54, 'Unknown Customer 2', NULL, NULL, '2023-07-21'),
(55, 'Unknown Customer 3', NULL, NULL, '15-07-2023'),
(56, 'Unknown Customer 4', NULL, NULL, NULL);

-- Intentional duplicate customers (same email and name)
INSERT INTO prac_cx (customer_id, name, email, phone, signup_date) VALUES
(51, 'John Doe', 'john.doe@example.com', '555-0100', '2023/01/15'),
(52, 'Jane Smith', NULL, '555-0101', '15-02-2023');

select * from prac_cx
--2nd Table
CREATE TABLE prac_pro (
  product_id INT PRIMARY KEY,
  name VARCHAR(100),
  category VARCHAR(50),
  price DECIMAL(5,2),
  in_stock INT
);
-- Insert products 
INSERT INTO prac_pro (product_id, name, category, price, in_stock) VALUES
(1, 'Slurpee 16oz', 'Drinks', 1.99, 50),
(2, 'Hot Dog', 'Food', 2.49, 30),
(3, 'Cigarettes Pack', 'Tobacco', 9.99, 100),
(4, 'Chocolate Bar', 'Snacks', 0.99, 75),
(5, 'Bottled Water 500ml', 'Drinks', 0.89, 200),
(6, 'Chips', 'Snacks', 1.29, 80),
(7, 'Energy Drink 250ml', 'Drinks', 2.49, 60),
(8, 'Gum Pack', 'Snacks', 0.69, 150),
(9, 'Coffee Medium', 'Drinks', 1.50, 40),
(10, 'Lottery Ticket', 'Services', 1.00, 1000);


--3rd Table
CREATE TABLE prac_ord (
  order_id INT PRIMARY KEY,
  customer_id INT,
  order_date VARCHAR(20), -- inconsistent date formats stored as text
  store_location VARCHAR(50),
  clean_order_date DATE, -- added for SQL Server version
  FOREIGN KEY (customer_id) REFERENCES prac_cx(customer_id)
);

-- Insert orders (50 rows) with varied and inconsistent date formats and valid customer_id
INSERT INTO prac_ord (order_id, customer_id, order_date, store_location) VALUES
(1, 1, '2024/05/01', 'Downtown'),
(2, 2, '2024-05-02', 'Airport'),
(3, 3, '03-05-2024', 'Mall'),
(4, 4, '2024/05/04', 'Downtown'),
(5, 5, '05-06-2024', 'Suburban'),
(6, 6, '2024-06-15', 'Airport'),
(7, 7, '15/07/2024', 'Downtown'),
(8, 8, '2024/07/20', 'Mall'),
(9, 9, '2024-07-25', 'Suburban'),
(10, 10, '26-07-2024', 'Airport'),
(11, 11, '2024/08/01', 'Downtown'),
(12, 12, '2024-08-03', 'Mall'),
(13, 13, '04-08-2024', 'Suburban'),
(14, 14, '2024/08/06', 'Airport'),
(15, 15, '07-08-2024', 'Downtown'),
(16, 16, '2024/08/09', 'Mall'),
(17, 17, '10-08-2024', 'Suburban'),
(18, 18, '2024/08/11', 'Airport'),
(19, 19, '12-08-2024', 'Downtown'),
(20, 20, '2024/08/13', 'Mall'),
(21, 21, '14-08-2024', 'Suburban'),
(22, 22, '2024/08/15', 'Airport'),
(23, 23, '2024/08/17', 'Downtown'),
(24, 24, '18-08-2024', 'Mall'),
(25, 25, '2024/08/19', 'Suburban'),
(26, 26, '20/08/2024', 'Airport'),
(27, 27, '2024/08/21', 'Downtown'),
(28, 28, '22-08-2024', 'Mall'),
(29, 29, '2024/08/23', 'Suburban'),
(30, 30, '24/08/2024', 'Airport'),
(31, 31, '2024/08/25', 'Downtown'),
(32, 32, '26-08-2024', 'Mall'),
(33, 33, '2024/08/27', 'Suburban'),
(34, 34, '28/08/2024', 'Airport'),
(35, 35, '2024/08/29', 'Downtown'),
(36, 36, '30-08-2024', 'Mall'),
(37, 37, '2024/08/31', 'Suburban'),
(38, 38, '01/09/2024', 'Airport'),
(39, 39, '2024/09/02', 'Downtown'),
(40, 40, '03-09-2024', 'Mall'),
(41, 41, '2024/09/04', 'Suburban'),
(42, 42, '05/09/2024', 'Airport'),
(43, 43, '2024/09/06', 'Downtown'),
(44, 44, '07-09-2024', 'Mall'),
(45, 45, '2024/09/08', 'Suburban'),
(46, 46, '09/09/2024', 'Airport'),
(47, 47, '2024/09/10', 'Downtown'),
(48, 48, '11-09-2024', 'Mall'),
(49, 49, '2024/09/12', 'Suburban'),
(50, 50, '13/09/2024', 'Airport'),
(51, 53, '2024/09/15', 'Downtown'),
(52, 54, '15-09-2024', 'Mall'),
(53, 55, '2024-09-16', 'Airport'),
(54, 56, '16/09/2024', 'Suburban'),
(55, 45, '13/09/2024', 'Airport'),
(56, 45, '14/09/2024', 'Airport'),
(57, 45, '14/09/2024', 'Airport'),
(61, 40, '20/09/2024', 'Airport'),
(62, 25, '21/09/2024', 'University'),
(63, 22, '2024/09/22', 'Downtown'),
(64, 20, '23/09/2024', 'University'),
(65, 7,  '2024/09/24', 'University'),
(66, 35, '2024-09-25', 'Airport'),
(67, 5,  '2024/09/26', 'Mall'),
(68, 56, '2024/09/27', 'Mall'),
(69, 26, '28/09/2024', 'Downtown'),
(70, 7,  '29/09/2024', 'Mall'),
(71, 8, '2024/09/30', 'City Center'),
(72, 17, '2024-10-01', 'Industrial Park'),
(73, 44, '01-10-2024', 'City Center'),
(74, 21, '2024/10/01', 'Industrial Park');


--4th Table
CREATE TABLE prac_ord_items (
  order_item_id INT PRIMARY KEY,
  order_id INT,
  product_id INT,
  quantity INT,
  FOREIGN KEY (order_id) REFERENCES prac_ord(order_id),
  FOREIGN KEY (product_id) REFERENCES prac_pro(product_id)
);
-- Insert order_items (94 rows) — multiple rows per order (randomized quantities)
INSERT INTO prac_ord_items (order_item_id, order_id, product_id, quantity) VALUES
(1, 1, 1, 2),
(2, 1, 4, 1),
(3, 2, 3, 1),
(4, 2, 5, 2),
(5, 3, 2, 1),
(6, 3, 6, 3),
(7, 4, 1, 1),
(8, 4, 7, 2),
(9, 5, 8, 4),
(10, 5, 9, 1),
(11, 6, 10, 1),
(12, 6, 1, 1),
(13, 7, 5, 2),
(14, 7, 2, 1),
(15, 8, 3, 1),
(16, 8, 4, 2),
(17, 9, 7, 3),
(18, 9, 6, 2),
(19, 10, 1, 1),
(20, 10, 9, 1),
(21, 11, 8, 1),
(22, 11, 5, 3),
(23, 12, 2, 1),
(24, 12, 4, 2),
(25, 13, 6, 2),
(26, 13, 3, 1),
(27, 14, 7, 1),
(28, 14, 8, 1),
(29, 15, 10, 2),
(30, 15, 1, 1),
(31, 16, 5, 4),
(32, 16, 9, 1),
(33, 17, 6, 3),
(34, 17, 2, 2),
(35, 18, 4, 1),
(36, 18, 3, 1),
(37, 19, 1, 2),
(38, 19, 7, 1),
(39, 20, 8, 2),
(40, 20, 5, 1),
(41, 21, 6, 1),
(42, 21, 9, 3),
(43, 22, 4, 1),
(44, 22, 2, 2),
(45, 23, 9, 1),
(46, 23, 1, 2),
(47, 24, 3, 2),
(48, 24, 7, 1),
(49, 25, 5, 1),
(50, 25, 8, 3),
(51, 26, 6, 2),
(52, 26, 2, 1),
(53, 27, 1, 1),
(54, 27, 4, 2),
(55, 28, 7, 1),
(56, 28, 3, 1),
(57, 29, 8, 3),
(58, 29, 9, 1),
(59, 30, 5, 2),
(60, 30, 6, 1),
(61, 31, 2, 2),
(62, 31, 1, 1),
(63, 32, 4, 1),
(64, 32, 7, 2),
(65, 33, 3, 1),
(66, 33, 8, 3),
(67, 34, 9, 1),
(68, 34, 5, 2),
(69, 35, 1, 1),
(70, 35, 6, 1),
(71, 36, 7, 2),
(72, 36, 2, 1),
(73, 37, 3, 2),
(74, 37, 4, 1),
(75, 38, 5, 4),
(76, 38, 8, 1),
(77, 39, 1, 1),
(78, 39, 2, 3),
(79, 40, 9, 1),
(80, 40, 6, 2),
(81, 41, 7, 1),
(82, 41, 3, 1),
(83, 42, 4, 2),
(84, 42, 5, 1),
(85, 43, 8, 3),
(86, 43, 1, 1),
(87, 44, 2, 2),
(88, 44, 9, 1),
(89, 45, 3, 1),
(90, 45, 7, 2),
(91, 46, 6, 1),
(92, 46, 4, 1),
(93, 47, 5, 3),
(94, 48, 1, 1),
(95, 51, 1, 2),  -- Slurpee 16oz
(96, 51, 4, 1),  -- Chocolate Bar
(97, 52, 3, 1),  -- Cigarettes Pack
(98, 53, 5, 2),  -- Bottled Water 500ml
(99, 54, 2, 1),  -- Hot Dog
(100,55, 4, 4),  -- Chocolate Bar
(101,56, 10,1),  -- Chewing Gum
(102,57, 1, 3),  -- Slurpee 16oz
(103, 61, 1, 2),  -- Slurpee 16oz
(104, 61, 4, 1),  -- Chocolate Bar
(105, 62, 5, 3),  -- Bottled Water 500ml
(106, 63, 2, 1),  -- Hot Dog
(107, 63, 7, 1),  -- Energy Drink 250ml
(108, 64, 9, 2),  -- Coffee Medium
(109, 65, 3, 1),  -- Cigarettes Pack
(110, 66, 8, 2),  -- Gum Pack
(111, 67, 6, 4),  -- Chips
(112, 67, 10, 1), -- Lottery Ticket
(113, 68, 4, 1),  -- Chocolate Bar
(114, 69, 1, 1),  -- Slurpee 16oz
(115, 70, 5, 2),  -- Bottled Water 500ml
(116, 70, 2, 1),  -- Hot Dog
(117, 71, 3, 1),  -- Cigarettes Pack
(118, 71, 2, 2),  -- Hot Dog
(119, 72, 6, 3),  -- Chips
(120, 72, 5, 1),  -- Bottled Water 500ml
(121, 73, 9, 1),  -- Coffee Medium
(122, 73, 4, 2),  -- Chocolate Bar
(123, 74, 1, 1);  -- Slurpee 16oz



--5th Table
CREATE TABLE prac_returns (
  return_id INT PRIMARY KEY,
  order_item_id INT,
  return_date VARCHAR(20),
  reason VARCHAR(255),
  FOREIGN KEY (order_item_id) REFERENCES prac_ord_items(order_item_id)
);
-- Insert returns (5 rows) with some dirty data on return_date and reason
INSERT INTO prac_returns (return_id, order_item_id, return_date, reason) VALUES
(1, 2, '2024/05/05', 'Damaged packaging'),
(2, 15, '2024-06-18', 'Wrong item'),
(3, 44, NULL, 'Expired'),
(4, 70, '18-07-2024', NULL),
(5, 93, '2024/08/10', 'Customer changed mind');



select * from prac_cx
select * from prac_ord
select * from prac_ord_items
select * from prac_pro
select * from prac_returns

--1st requirement 
--rewrite the phone to '000-0000'
select * from prac_cx
where phone is null and email is  not  null
update  prac_cx
set phone = '000-0000'
where phone is null and email is not null

select *,
coalesce(phone,'000-0000') as phone
from prac_cx
where phone is null and email is not null

--2nd requirement
-- change null mail id to no_mail@no_mail.com
select * from prac_cx
where email is null and phone is not null
update prac_cx
set email = 'no_mail@no_mail.com'
where email is null and phone is not null

-- 3rd requirement
-- Until then, no need to make any changes to those specific records
-- (No action needed, just viewing)
select * from prac_cx
where phone is null and email is null

--4th requirement 
-- check for duplicate customer_id 
select customer_id,
count(customer_id) as cx_count
from prac_cx
group by customer_id
having count(customer_id)>1

select customer_id from prac_cx

--5th requirement 
-- fix inconsistent date in the table and fill up clean date 
UPDATE prac_ord
SET clean_order_date = 
CASE
    WHEN order_date LIKE '[0-9][0-9][0-9][0-9]/[0-9][0-9]/[0-9][0-9]' THEN TRY_CONVERT(DATE, order_date, 111) -- YYYY/MM/DD
    WHEN order_date LIKE '[0-9][0-9][0-9][0-9]-[0-9][0-9]-[0-9][0-9]' THEN TRY_CONVERT(DATE, order_date, 120) -- YYYY-MM-DD
    WHEN order_date LIKE '[0-9][0-9]-[0-9][0-9]-[0-9][0-9][0-9][0-9]' THEN TRY_CONVERT(DATE, order_date, 105) -- DD-MM-YYYY
    WHEN order_date LIKE '[0-9][0-9]/[0-9][0-9]/[0-9][0-9][0-9][0-9]' THEN TRY_CONVERT(DATE, order_date, 103) -- DD/MM/YYYY
    ELSE NULL
END

select * from prac_ord

--6th requirement
-- our insights 
-- give top 3 and bottom 3 product sold with store location 

--select * from prac_cx
--select * from prac_ord

select
a.store_location,
count(a.order_id) as order_count,
row_number()over(order by count(a.order_id)desc) as top_3,
row_number()over(order by count(a.order_id)asc) as bottom_5
from prac_ord as a
join prac_cx as b
on a.customer_id = b. customer_id
group by a.store_location

-- 7th requirement 
-- Top 3 best-selling products by quantity sold 
-- Bottom 2 products by overall sales value 

select * from prac_pro
select * from prac_ord_items

with t1 as (select a.product_id,a.name,
       sum(a.price) as sum_price,
	   sum(b.quantity) as sum_quantity,
	   row_number()over(order by sum(b.quantity)desc) as top_3_quantity,
	   row_number()over(order by sum(a.price)asc) as bottom_2_price
from prac_pro  a
join prac_ord_items b
on a.product_id = b.product_id
group by a.product_id,a.name)
select * from t1 
where top_3_quantity <=3 or bottom_2_price <=2

-- 8th requirement ---
-- return rate followup ---
SELECT ROUND(
(SELECT CAST(COUNT(order_item_id) AS FLOAT) FROM prac_returns) /
(SELECT CAST(COUNT(order_item_id) AS FLOAT) FROM prac_ord_items) * 100, 3
) AS return_rate;

-- 9th requirement 
-- product returned + cx name + location + product_name

SELECT
a.order_id,
c.name AS customer_name,
b.store_location,
d.name AS product_name,
r.reason
FROM prac_returns r
JOIN prac_ord_items a ON a.order_item_id = r.order_item_id
JOIN prac_ord b ON a.order_id = b.order_id
JOIN prac_cx c ON b.customer_id = c.customer_id
JOIN prac_pro d ON d.product_id = a.product_id

-- 10th Requirements 
-- Monthly reveneue trend 
SELECT
MONTH(clean_order_date) AS month_number,
store_location,
COUNT(order_id) AS total_orders,
ROW_NUMBER() OVER(PARTITION BY MONTH(clean_order_date) ORDER BY COUNT(order_id)) AS month_rn
FROM prac_ord
GROUP BY MONTH(clean_order_date), store_location
ORDER BY month_number

-- 11th requirement 
-- revenue by store_location + return count by store location
WITH t1 AS (
    SELECT 
    a.*,
    b.product_id AS pid,
    b.quantity,
    c.*
    FROM prac_ord a
    JOIN prac_ord_items b ON a.order_id = b.order_id
    JOIN prac_pro c ON b.product_id = c.product_id
),
t2 AS (
    SELECT 
    order_id,
    customer_id,
    store_location,
   pid AS product_id,
    name,
    quantity,
    price,
    quantity * price AS total_rev
    FROM t1
)
SELECT 
store_location,
SUM(total_rev) AS total_rev,
ROW_NUMBER() OVER(ORDER BY SUM(total_rev) DESC) AS rank_per_store
FROM t2
GROUP BY store_location;

-- return count by store location ---
WITH t1 AS (
    SELECT
        a.order_item_id AS order_item_id_items,
        a.order_id,
        a.product_id,
        a.quantity,
        b.return_id,
        b.order_item_id AS order_item_id_returns,
        c.store_location
        FROM prac_ord_items a
        JOIN prac_returns b ON a.order_item_id = b.order_item_id
        JOIN prac_ord c ON c.order_id = a.order_id
)
SELECT 
    store_location,
    COUNT(store_location) AS no_of_pro_ret,
    SUM(quantity) AS sum_qnt
FROM t1
GROUP BY store_location;































