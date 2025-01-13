CREATE TABLE people (
    id SERIAL PRIMARY KEY,  
    name VARCHAR(100) NOT NULL,  
    age INT NOT NULL          
);

INSERT INTO people (name, age)
VALUES
    ('John Doe', 30),
    ('Jane Smith', 25),
    ('Michael Johnson', 45),
    ('Emily Davis', 34),
    ('James Brown', 60),
    ('Patricia Garcia', 22),
    ('David Martinez', 50),
    ('Sarah Wilson', 29),
    ('Daniel Moore', 41),
    ('Laura Lee', 36);
