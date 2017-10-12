-- In your script, use DISTINCT to find the unique titles in the titles table. Your results should look like:
SELECT DISTINCT title FROM titles;
-- Senior Engineer
-- Staff
-- Engineer
-- Senior Staff
-- Assistant Engineer
-- Technique Leader
-- Manager

-- Update the previous query to sort the results alphabetically. Use GROUP BY to accomplish this.
SELECT title FROM titles GROUP BY title;
-- Find your query for employees whose last names start and end with 'E'.
-- Update the query find just the unique last names that start and end with 'E' using GROUP BY. The results should be:
SELECT DISTINCT last_name FROM employees WHERE last_name LIKE 'E%' AND last_name LIKE '%E' GROUP BY last_name;
-- Eldridge
-- Erbe
-- Erde
-- Erie
-- Etalle

-- Update your previous query to now find unique combinations of first and last name where the last name starts and ends with 'E'.
-- You should get 846 rows.
SELECT first_name, last_name FROM employees WHERE last_name LIKE 'E%' AND last_name LIKE '%E' GROUP BY first_name, last_name;

-- Find the unique last names with a 'q' but not 'qu'. You may use either DISTINCT or GROUP BY. Your results should be:
SELECT DISTINCT last_name FROM employees WHERE last_name LIKE '%q%' AND last_name NOT LIKE '%qu%';
-- Chleq
-- Lindqvist
-- Qiwen


-- SELECT count(first_name), last_name
-- FROM employees
-- WHERE
-- GROUP BY
-- ORDER BY count(first_name) DESC
-- LIMIT 5
-- OFFSET;
