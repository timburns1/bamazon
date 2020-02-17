

USE bamazon;

CREATE TABLE products
(
    item_id INT(4) NOT NULL,
    product_name VARCHAR(100) NOT NULL,
    department_name VARCHAR(100) NOT NULL,
    price DECIMAL(10,2) NOT NULL,
    stock_quantity INT(20) NOT NULL,
    PRIMARY KEY (item_id)
);

Select *
FROM products;

INSERT INTO products
    (item_id, product_name, department_name, price, stock_quantity)
VALUES
    (100, "airpods", "tech", 125.99, 20),
    (200, "airpods pro", "tech", 250.00, 10),
    (300, "levis 519", "bottoms", 59.99, 5),
    (400, "levis 510", "bottoms", 50.99, 10),
    (500, "guitar", "instruments", 300.00, 15),
    (600, "drums", "instruments", 12000, 19),
    (700, "eggs", "groceries", 3.99, 17),
    (800, "milk", "groceries", 2.50, 10),
    (900, "1 liter soda", "groceries", .99, 12)