SET SERVEROUTPUT ON;

SELECT fn_validate_payroll(500000, 10) AS validation_result
FROM dual;

SELECT fn_validate_payroll(-100, 10) AS validation_result
FROM dual;

SELECT fn_validate_payroll(500000, 150) AS validation_result
FROM dual;
