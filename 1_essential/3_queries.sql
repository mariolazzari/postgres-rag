SELECT
    *
FROM
    employees
WHERE
    name = 'Alice Johnson';

SELECT
    name,
    position
FROM
    employees;

SELECT
    *
FROM
    employees
WHERE
    salary > 50000;

SELECT
    *
FROM
    employees
ORDER BY
    salary ASC;

SELECT
    *
FROM
    employees
ORDER BY
    salary DESC;

SELECT
    COUNT(*)
FROM
    employees;

SELECT DISTINCT
    position
FROM
    employees;

SELECT
    *
FROM
    employees
WHERE
    name LIKE 'A%';

SELECT
    *
FROM
    employees
WHERE
    hire_date IS NULL;