CREATE DATABASE CompanyDB;

CREATE TABLE Departments (
                             department_id serial primary key ,
                             department_name varchar(100) not null
);

CREATE TABLE Employees (
    emp_id serial primary key ,
    name varchar(50) not null,
    dob date ,
    department_id INT ,
    foreign key (department_id) REFERENCES Departments(department_id)
);

CREATE TABLE Projects (
    project_id serial primary key ,
    project_name varchar(50) not null,
    start_date date ,
    end_date date
);

CREATE TABLE EmployeeProjects (
    emp_id int,
    foreign key (emp_id) REFERENCES Employees(emp_id) ,
    project_id int,
    foreign key (project_id) REFERENCES Projects(project_id),
    PRIMARY KEY (emp_id, project_id)
);