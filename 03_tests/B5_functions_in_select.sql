SELECT
    employee_id,
    first_name,
    last_name,
    salary,
    fn_annual_salary(salary) AS annual_salary,
    fn_years_of_service(hire_date) AS years_of_service,
    fn_calculate_tax(salary) AS tax
FROM hr.employees
WHERE ROWNUM <= 5;
