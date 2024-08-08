DROP TABLE IF EXISTS departments CAScade;
DROP TABLE IF EXISTS dept_emp CAScade;
DROP TABLE IF EXISTS dept_manager CAScade;
DROP TABLE IF EXISTS employees CAScade;
DROP TABLE IF EXISTS salaries CAScade;
DROP TABLE IF EXISTS titles CAScade;
CREATE TABLE employees (
    emp_no INT  NOT NULL,
    emp_title_id VARCHAR(5)   NOT NULL,
    birth_date DATE   NOT NULL,
    first_name VARCHAR(40)   NOT NULL,
    last_name VARCHAR(40)   NOT NULL,
    sex VARCHAR(1)   NOT NULL,
    hire_date DATE   NOT NULL,
    CONSTRAINT id_employees PRIMARY KEY (
        emp_no
     )
);
create table departments (
	dept_no VARCHAR(20),
	Dep_name VARCHAR(40) NOT NULL,
	CONSTRAINT id_deparments PRIMARY KEY (
	dept_no
	)
);


create table titles(
	title_id VARCHAR(10) NOT NULL,
	title VARCHAR(40) NOT NULL,
	CONSTRAINT id_titles PRIMARY KEY (
	 title_id
	)
	
);

create table salaries(
	emp_no INT NOT NULL,
	salary INT NOT NULL
);

create table dept_manager (
	emp_no INT NOT NULL,
	dept_no VARCHAR(10) NOT NULL
);

create table dept_emp (
	emp_no INT NOT NULL,
	dept_no VARCHAR(10) NOT NULL
);

Alter table employees add constraint id_employees_title_id foreign key(emp_title_id)
References titles(title_id);

Alter table dept_manager add constraint id_dept_mananger_dept_no foreign key(dept_no)
References departments(dept_no);

Alter table dept_manager add constraint id_department_manager_emp_no foreign key(emp_no)
References employees(emp_no);

Alter table salaries add constraint id_salaries_emp_no foreign key(emp_no)
References employees(emp_no);

Alter table dept_emp add constraint id_dept_emp_emp_no foreign key(emp_no)
References employees(emp_no);

Alter table dept_emp add constraint id_dept_emp_dept_no foreign key(dept_no)
References departments(dept_no);
