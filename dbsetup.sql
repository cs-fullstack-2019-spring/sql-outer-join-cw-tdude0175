-- CREATE TABLE IF NOT EXISTS departments (
--                                            department_id serial PRIMARY KEY,
--                                            department_name VARCHAR (255) NOT NULL
-- );
--
-- CREATE TABLE IF NOT EXISTS employees (
--                                          employee_id serial PRIMARY KEY,
--                                          employee_name VARCHAR (255),
--                                          laptop_type VARCHAR(50),
--                                          department_id INTEGER
-- );
--
--
-- INSERT INTO departments (department_name)
-- VALUES
-- ('Sales'),
-- ('Marketing'),
-- ('HR'),
-- ('IT'),
-- ('Production');
--
-- INSERT INTO employees (
--     employee_name,
--     laptop_type,
--     department_id
-- )
-- VALUES
-- ('Bette Nicholson',NULL, 1),
-- ('Christian Gable', 'ASUS', 1),
-- ('Joe Swank',NULL, 2),
-- ('Fred Costner','LENOVA', 3),
-- ('Sandra Kilmer','HP', 4),
-- ('Julia Mcqueen', NULL, NULL);


select * from departments
    join employees on employees.department_id = departments.department_id;

-- ex1) Create a Join that lists all Employees and their departments

select * from employees left join departments on employees.department_id = departments.department_id;

-- ex2) Create a Join that lists ONLY Employees assigned to a department

select * from departments
    right join employees on employees.department_id = departments.department_id
    where employees.department_id notnull;

-- ex)3 Create a Join that lists all Departments and the Employees

select * from departments left join employees on employees.department_id = departments.department_id;

-- ex)4 Create a Join that lists ONLY Departments that have Employees

select * from departments
    left join employees on employees.department_id = departments.department_id
where employee_id notnull;