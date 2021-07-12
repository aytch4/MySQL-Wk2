use employees;

-- 1.	I want to know how many employees with each title were born after 1965-01-01.
SELECT count(t.title), t.title from titles t inner join employees e on e.emp_no = t.emp_no where e.birth_date > 1965-01-01 group by title;
-- 2.	I want to know the average salary per title.
Select avg(s.salary), t.title from salaries s inner join titles t on t.emp_no = s.emp_no group by title;
-- 3.	How much money was spent on salary for the marketing department between the years 1990 and 1992?
Select sum(s.salary), d.dept_name from salaries s inner join dept_emp de on de.emp_no = s.emp_no inner join departments d on d.dept_no = de.dept.no where dept_name = “Marketing” AND de.from_date>= '1990-01-01' AND de.to_date<= '1992-12-31';
