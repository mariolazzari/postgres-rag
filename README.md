# Leveraging PostgreSQL with RAG

## What is Retrieval-Augmented Generation

- Revolutionary and trasnsformative AI approach
- Integrates external knowledge
- Enhances contextual responses

## Postgres essential

### Setup

```sh
sudo sh -c 'echo "deb http://apt.postgresql.org/pub/repos/apt $(lsb_release -cs)-pgdg main" > /etc/apt/sources.list.d/pgdg.list'
wget -qO- https://www.postgresql.org/media/keys/ACCC4CF8.asc | sudo tee /etc/apt/trusted.gpg.d/pgdg.asc &>/dev/null
sudo apt update
sudo apt install postgresql postgresql-client -y
sudo systemctl status postgresql

sudo -u postgres psql -c "ALTER USER postgres PASSWORD 'newpassword';"

psql --version
```

### Tables and data

```sql
CREATE DATABASE rag;

CREATE TABLE employees ( 
id SERIAL PRIMARY KEY, 
name VARCHAR(100), 
position VARCHAR(50), 
salary NUMERIC 
);


INSERT INTO employees (name, position, salary) VALUES 
('Alice Johnson', 'Manager', 75000), 
('Bob Smith', 'Developer', 60000), 
('Charlie Brown', 'Analyst', 50000);

SELECT * FROM employees;

UPDATE employees SET salary = 80000 WHERE name = 'Alice Johnson';

SELECT * FROM employees WHERE name = 'Alice Johnson';

DELETE FROM employees WHERE name = 'Charlie Brown';
```

### Queries

```sql
SELECT * FROM employees WHERE name = 'Alice Johnson';

SELECT name, position FROM employees;

SELECT * FROM employees WHERE salary > 50000;

SELECT * FROM employees ORDER BY salary ASC;

SELECT * FROM employees ORDER BY salary DESC;

SELECT COUNT(*) FROM employees;

SELECT DISTINCT position FROM employees;

SELECT * FROM employees WHERE name LIKE 'A%';

SELECT * FROM employees WHERE hire_date IS NULL;
```

## Retrieval-Augmented Generation

### Vanna AI
