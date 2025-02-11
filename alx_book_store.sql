/*Learning to wrok with databases by Creating a database for an online book store*/

CREATE TABLE Books(
    book_id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(130) NOT NULL,
    author_id INT
    price DOUBLE NOT NULL,
    publication_date DATE,
    FOREIGN KEY (author_id) REFERENCES Authors(author_id)
);

CREATE TABLE Authors(
    author_id INT AUTO_INCREMENT PRIMARY KEY,
    author_name VARCHAR(215) NOT NULL
);

CREATE TABLE Customers(
    customer_id INT AUTO_INCREMENT PRIMARY KEY
    customer_name VARCHAR(215) NOT NULL, 
    email VARCHAR(215) NOT NULL UNIQUE,
    address TEXT
);

CREATE TABLE Orders(
    Order_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);

CREATE TABLE Order_Details(
    orderdetail_id INT AUTO_INCREMENT PRIMARY KEY,
    Order_id INT,
    book_id INT,
    quantity DOUBLE,
    FOREIGN KEY (Order_id) REFERENCES Orders(Order_id),
    FOREIGN KEY (book_id) REFERENCES Books(book_id)
);