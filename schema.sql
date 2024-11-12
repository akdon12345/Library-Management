-- Step 1: Create the Library Management database
CREATE DATABASE IF NOT EXISTS LibraryDB;
USE LibraryDB;

-- Step 2: Create the Books table
CREATE TABLE IF NOT EXISTS Books (
    book_id VARCHAR(10) PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    author VARCHAR(255) NOT NULL,
    is_issued BOOLEAN DEFAULT FALSE
);

-- Step 3: Create the Members table
CREATE TABLE IF NOT EXISTS Members (
    member_id VARCHAR(10) PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    join_date DATE -- Date will be specified during insertion
);

-- Step 4: Create the Users table (for admin and regular users)
CREATE TABLE IF NOT EXISTS Users (
    user_id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50) NOT NULL UNIQUE,
    user_password VARCHAR(255) NOT NULL,
    role ENUM('admin', 'user') NOT NULL
);

-- Step 5: Create the Transactions table (to track book issues and returns)
CREATE TABLE IF NOT EXISTS Transactions (
    transaction_id INT AUTO_INCREMENT PRIMARY KEY,
    book_id VARCHAR(10),
    member_id VARCHAR(10),
    issue_date DATE,
    return_date DATE,
    FOREIGN KEY (book_id) REFERENCES Books(book_id),
    FOREIGN KEY (member_id) REFERENCES Members(member_id)
);

-- Step 6: Insert sample books into the Books table
INSERT INTO Books (book_id, title, author) VALUES
('B001', 'Java Programming', 'John Doe'),
('B002', 'Data Structures', 'Jane Smith');

-- Step 7: Insert sample members into the Members table
-- Specify join_date manually
INSERT INTO Members (member_id, name, join_date) VALUES
('M001', 'Alice', '2024-01-15'),
('M002', 'Bob', '2024-01-20');

-- Step 8: Insert sample users into the Users table (admin and regular user)
-- Passwords are stored as plain text here for simplicity; use hashing in production
INSERT INTO Users (username, user_password, role) VALUES
('admin_user', 'admin_password', 'admin'),
('regular_user', 'user_password', 'user');


-- DROP DATABASE IF EXISTS LibraryDB;
