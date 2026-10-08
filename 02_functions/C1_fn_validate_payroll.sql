CREATE OR REPLACE FUNCTION fn_validate_payroll (
    p_salary   NUMBER,
    p_tax_rate NUMBER
)
RETURN VARCHAR2
IS
BEGIN
    IF p_salary <= 0 THEN
        RETURN 'Invalid salary';
    ELSIF p_tax_rate < 0 OR p_tax_rate > 100 THEN
        RETURN 'Invalid tax rate';
    ELSE
        RETURN 'Payroll is valid';
    END IF;
END;
/
