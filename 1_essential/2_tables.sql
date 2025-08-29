-- CREATE DATABASE rag;
CREATE TABLE
    employees (
        id SERIAL PRIMARY KEY,
        name VARCHAR(100),
        position VARCHAR(50),
        salary NUMERIC
    );

INSERT INTO
    employees (name, position, salary)
VALUES
    ('Alice Johnson', 'Manager', 75000),
    ('Bob Smith', 'Developer', 60000),
    ('Charlie Brown', 'Analyst', 50000);

SELECT
    *
FROM
    employees;

UPDATE employees
SET
    salary = 80000
WHERE
    name = 'Alice Johnson';

SELECT
    *
FROM
    employees
WHERE
    name = 'Alice Johnson';

DELETE FROM employees
WHERE
    name = 'Charlie Brown';