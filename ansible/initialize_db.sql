-- Create database
CREATE DATABASE testdb;

-- Connect to the newly created database
\c testdb;

-- Create user
CREATE USER ansible WITH PASSWORD 'ansible123';

-- Grant all privileges on the database to the user
GRANT ALL PRIVILEGES ON DATABASE testdb TO ansible;

-- Create table
CREATE TABLE IF NOT EXISTS example_table (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100)
);

-- Insert some data into the table
INSERT INTO example_table (name) VALUES ('John'), ('Doe'), ('Alice');

-- Grant SELECT permission to ansible user
GRANT SELECT ON TABLE example_table TO ansible;
