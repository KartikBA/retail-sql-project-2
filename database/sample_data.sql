INSERT INTO customers (name, email, phone) VALUES
('Amit Sharma', 'amit@gmail.com', '9999999991'),
('Neha Verma', 'neha@gmail.com', '9999999992'),
('Rahul Singh', 'rahul@gmail.com', '9999999993');

INSERT INTO products (name, category, price, stock_quantity) VALUES
('Laptop', 'Electronics', 55000, 10),
('Shoes', 'Clothing', 2000, 50),
('Book', 'Books', 500, 100),
('Headphones', 'Electronics', 1500, 20);

INSERT INTO orders (customer_id, order_date, status, total_amount) VALUES
(1, NOW(), 'Delivered', 56500),
(2, NOW(), 'Pending', 2000);

INSERT INTO order_items (order_id, product_id, quantity, item_price) VALUES
(1, 1, 1, 55000),
(1, 4, 1, 1500),
(2, 2, 1, 2000);

INSERT INTO payments (order_id, payment_date, payment_amount, method) VALUES
(1, NOW(), 56500, 'UPI'),
(2, NOW(), 2000, 'Card');

INSERT INTO product_reviews (customer_id, product_id, rating, review_text, review_date) VALUES
(1, 1, 5, 'Great product', NOW()),
(2, 2, 4, 'Good quality', NOW());