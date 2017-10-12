
-- Copy the order_by_exercises.sql script and save it as functions_exercises.sql.
-- Update your query for 'Irena', 'Vidya', or 'Maya'. Use count(*) and GROUP BY to find the number of employees
-- for each gender with those names. Your results should be:
--
-- 441 M
-- 268 F
--
SELECT count(*) AS "Number of Employees", gender AS "Gender"
FROM employees
WHERE first_name IN ('Irena','Vidya','Maya')
GROUP BY gender;

-- Update your queries for employees whose names start and end with 'E'. Use concat() to combine their first
-- and last name together as a single column in your results.
SELECT concat(e.first_name, " ", e.last_name) AS "Full Name"
FROM employees e
WHERE last_name LIKE 'E%E';

-- For your query of employees born on Christmas and hired in the 90s, use datediff()
-- to find how many days they have been working at the company (Hint: You will also need to use now() or curdate())
SELECT hire_date, first_name, last_name, datediff(curdate(), hire_date) as "Number of Days Employed"
FROM employees
WHERE hire_date like '199%' AND birth_date LIKE '%-12-25'
ORDER BY hire_date DESC;

-- Add a GROUP BY clause to your query for last names with 'q' and not 'qu' to find the distinct combination of first and last names.
-- You will find there were some duplicate first and last name pairs in your previous results.
-- Add a count() to your results and use ORDER BY to make it easier to find employees whose unusual name is shared with others.
SELECT concat(first_name, " ", last_name) AS "Full Name", count(first_name) AS "Number of People With This Name"
FROM employees
WHERE last_name LIKE '%q%' AND last_name NOT LIKE '%qu%'
GROUP BY `Full Name` ORDER BY `Number of People With This Name` DESC;
