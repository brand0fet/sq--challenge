1.List the employee number, last name, first name, sex, and salary of each employee (2 points)

select e.emp_no,e.last_name,e.first_name,e.sex,s.salary
From employees AS e
join salaries AS s
ON e.emp_no = s.emp_no;

2.List the first name, last name, and hire date for the employees who were hired in 1986 (2 points)
Select first_name,last_name,hire_date
From employees
Where hire_date Between  '1986-01-01' AND '1987-01-01';

3.List the manager of each department along with their department number, department name, employee number, last name, and first name (2 points)
Select dm.dept_no,dpt.dep_name,e.emp_no,e.last_name,e.first_name
From dept_manager as dm
Join departments as dpt
on dm.dept_no = dpt.dept_no
Join employees as e
on dm.emp_no = e.emp_no;

4.List the department number for each employee along with that employee’s employee number, last name, first name, and department name (2 points)
select e.emp_no,e.last_name,e.first_name,departments.dep_name
from employees as e
join dept_emp
on dept_emp.emp_no = e.emp_no
join departments
on dept_emp.dept_no = departments.dept_no;

5.List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B (2 points)
select first_name,last_name,sex
from employees
Where first_name = 'Hercules'
AND last_name Like 'B%';


6.List each employee in the Sales department, including their employee number, last name, and first name (2 points)
select e.emp_no,e.last_name,e.first_name,departments.dep_name
from employees as e
join dept_emp
on dept_emp.emp_no = e.emp_no
join departments
on dept_emp.dept_no = departments.dept_no
where departments.dep_name = 'Sales'

7.List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name (4 points)
select e.emp_no,e.last_name,e.first_name,departments.dep_name
from employees as e
join dept_emp
on dept_emp.emp_no = e.emp_no
join departments
on dept_emp.dept_no = departments.dept_no
where departments.dep_name = 'Sales'
OR departments.dep_name = 'Development';

8.List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name) (4 points)
Select last_name, Count(last_name) as "frequency"
from employees
group by last_name
order by "frequency" desc;