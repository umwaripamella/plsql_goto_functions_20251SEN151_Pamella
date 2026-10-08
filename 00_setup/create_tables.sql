CREATE TABLE departments (
    department_id NUMBER PRIMARY KEY,
    department_name VARCHAR2(100)
);

CREATE TABLE employees (
    employee_id NUMBER PRIMARY KEY,
    first_name VARCHAR2(50),
    last_name VARCHAR2(50),
    monthly_salary NUMBER(10,2),
    hire_date DATE,
    department_id NUMBER,
    CONSTRAINT fk_employee_department
        FOREIGN KEY (department_id)
        REFERENCES departments(department_id)
);

INSERT INTO departments VALUES (10, 'Information Technology');
INSERT INTO departments VALUES (20, 'Finance');
INSERT INTO departments VALUES (30, 'Human Resources');
INSERT INTO departments VALUES (40, 'Marketing');

INSERT INTO employees VALUES
(1, 'John', 'Doe', 500000, DATE '2022-01-15', 10);

INSERT INTO employees VALUES
(2, 'Alice', 'Smith', 350000, DATE '2020-06-10', 20);

INSERT INTO employees VALUES
(3, 'David', 'Mugisha', 750000, DATE '2018-03-20', 10);

INSERT INTO employees VALUES
(4, 'Sarah', 'Uwase', 250000, DATE '2024-02-01', 30);

COMMIT;
