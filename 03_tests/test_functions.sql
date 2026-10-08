SET SERVEROUTPUT ON;

SELECT fn_annual_salary(500000) AS annual_salary
FROM dual;

SELECT fn_years_of_service(DATE '2020-01-01') AS years_of_service
FROM dual;

SELECT fn_calculate_tax(500000, 10) AS tax
FROM dual;

SELECT fn_dept_name(10) AS department_name
FROM dual;
