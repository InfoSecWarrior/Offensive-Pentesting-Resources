-- hello.sql

-- Create the hello_table
CREATE TABLE hello_table (
    id INT PRIMARY KEY,
    message VARCHAR(255)
);

-- Insert a row with a hello message
INSERT INTO hello_table (id, message)
VALUES (1, 'Hello, World!');
